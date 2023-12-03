package tienda.controller;



import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import tienda.modelo.dao.ClienteDao;
import tienda.modelo.dao.CompraDao;
import tienda.modelo.dao.IntProductoDao;
import tienda.dto.LineaCompraDTO;
import tienda.dto.ProductoDTO;
import tienda.modelo.beans.Compra;
import tienda.modelo.beans.Direccione;
import tienda.modelo.beans.LineasDeCompra;
import tienda.modelo.beans.Producto;
import tienda.modelo.beans.TarjetasBancaria;
import tienda.modelo.beans.Usuario;
import tienda.modelo.repository.ComprasRepository;
import tienda.modelo.repository.DireccionesRepository;
import tienda.modelo.repository.TarjetasBancariasRepository;




@Controller
@RequestMapping("/compra")
public class CompraController {

	
	@Autowired
	private IntProductoDao productoDao;
	@Autowired
	private CompraDao icompraDao;
	@Autowired
	private ClienteDao iclienteDao;
	@Autowired
	private DireccionesRepository iDireccionesRepository;
	@Autowired
	private TarjetasBancariasRepository iTarjetasRepository;
	@Autowired
	private ComprasRepository iCompraRepository;
	

	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/carrito")
	public String verCarrito(HttpSession sesion, Model model) {
		Usuario usuario = (Usuario) sesion.getAttribute("usuario");
		List<LineaCompraDTO> carritoSesion = (List<LineaCompraDTO>) sesion.getAttribute("carrito");
		
		if(carritoSesion == null || carritoSesion.isEmpty()) {
			model.addAttribute("mensaje", "Su carrito vacío");
	    	return "carrito";
		} else {
		
		if (carritoSesion != null) {
			model.addAttribute("carrito", carritoSesion);
			return "carrito";
		}

		if (sesion.getAttribute("usuario") != null) {
			Compra compra = icompraDao.buscarCarrito(usuario);
			if (compra == null) {
				model.addAttribute("carrito", null);
				return "carrito";
			}
			
			List<LineaCompraDTO> carrito = new ArrayList();
			for (LineasDeCompra linea : compra.getLineasDeCompras()) {
				carrito.add(LineaCompraDTO.fromEntity(linea));
			}
			model.addAttribute("carrito", carrito);
		} else {
			List<LineaCompraDTO> carrito = (List<LineaCompraDTO>) sesion.getAttribute("carrito");
			model.addAttribute("carrito", carrito);
		}
		return "carrito";
		}
	}

	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@PostMapping("/carrito/agregar")
	public String agregarCarrito(HttpSession sesion, Model model, @RequestParam("id_producto") int productoId, @RequestParam("cantidad") int cantidad, RedirectAttributes redirectAttrs){
		Producto producto = productoDao.buscarUno(productoId);
		
		if (producto == null) {
			redirectAttrs.addFlashAttribute("mensaje", "No se ha podido añadir el producto al carrito");
			return "redirect:/compra/carrito";
		}

		if (cantidad > 10) {
			redirectAttrs.addFlashAttribute("mensaje", "No puedes añadir mas de 10 elementos del mismo articulo");
			return "redirect:/compra/carrito";
		}
		
		if (producto.getStock() == 0) {
			redirectAttrs.addFlashAttribute("mensaje", "No hay suficiente stock de este producto");
			return "redirect:/compra/carrito";
		}

		List<LineaCompraDTO> carrito = (List<LineaCompraDTO>) sesion.getAttribute("carrito");
		ProductoDTO pDTO = new ProductoDTO(producto.getIdProducto(), producto.getDescripcion(), producto.getNombre(), producto.getPrecio(), producto.getStock());
		if (carrito != null) {
		    boolean encontrado = false;
		    for (int i = 0; i < carrito.size(); i++) {
		        LineaCompraDTO elementoCarrito = carrito.get(i);
		        if (elementoCarrito.getProductoDTO().getIdProducto() == producto.getIdProducto()) {
		            int preTotalElementos = elementoCarrito.getCantidad() + cantidad;
		            if (preTotalElementos > 10) {
		                redirectAttrs.addFlashAttribute("mensaje", "No puedes superar el limite de 10 unidades para tu producto en el carrito");
		                return "redirect:/compra/carrito";
		            }
		            elementoCarrito.setCantidad(preTotalElementos);
		            encontrado = true;
		            break;
		        }
		    }
		    if (!encontrado) {
		        LineaCompraDTO linea = new LineaCompraDTO(pDTO, cantidad, producto.getPrecio());
		        carrito.add(linea);
		    }
		    sesion.setAttribute("carrito", carrito);
		} else {
		    carrito = new ArrayList<>();
		    LineaCompraDTO linea = new LineaCompraDTO(pDTO, cantidad, producto.getPrecio());
		    carrito.add(linea);
		    sesion.setAttribute("carrito", carrito);
		}
		
		redirectAttrs.addFlashAttribute("mensaje", "Elemento añadido al carrito");
		return "redirect:/compra/carrito";
	}
	
	
	
	@PostMapping("/carrito/borrar")
	public String borrarProductoCarrito(HttpSession sesion, Model model, @RequestParam("id_producto") int idProducto, RedirectAttributes redirectAttrs) {
	    List<LineaCompraDTO> carrito = (List<LineaCompraDTO>) sesion.getAttribute("carrito");

	    if (carrito == null || carrito.isEmpty()) {
	        redirectAttrs.addFlashAttribute("mensaje", "El carrito está vacío");
	        return "redirect:/compra/carrito";
	    }

	    Iterator<LineaCompraDTO> iterator = carrito.iterator();
	    boolean encontrado = false;
	    while (iterator.hasNext()) {
	        LineaCompraDTO elementoCarrito = iterator.next();
	        if (elementoCarrito.getProductoDTO().getIdProducto() == idProducto) {
	            iterator.remove();
	            encontrado = true;
	            break;
	        }
	    }

	    if (!encontrado) {
	        redirectAttrs.addFlashAttribute("mensaje", "El producto no se encuentra en el carrito");
	    }

	    return "redirect:/compra/carrito";
	}
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	// METODO GET PARA VERIFICAR LA COMPRA
	@GetMapping("/verificar")
	public String verificarCompra(HttpSession sesion, Model model, RedirectAttributes redi) {
	    Usuario usuarioSesion = (Usuario) sesion.getAttribute("usuario");

	    // SI NO HAY CARRITO EN LA SESIÓN, REDIRIGIMOS AL CARRITO
	    if (sesion.getAttribute("carrito") == null) {
	    	redi.addFlashAttribute("mensaje2", "*Por favor inserte productos al carrito para poder comprar");
	        return "redirect:/compra/carrito";
	    }

	    // OBTENEMOS EL CARRITO DE LA SESIÓN
	    List<LineaCompraDTO> carritoSesion = (List<LineaCompraDTO>) sesion.getAttribute("carrito");

	    // SI HAY CARRITO EN LA SESIÓN, GUARDAMOS EL CARRITO EN LA BASE DE DATOS Y LO ELIMINAMOS DE LA SESIÓN
	    if (carritoSesion != null) {
	        icompraDao.altaCarrito(usuarioSesion, carritoSesion);

	        
	    }

	    // OBTENEMOS LA COMPRA DEL USUARIO
	    Compra compra = icompraDao.buscarCarrito(usuarioSesion);

	    // CONVERTIMOS LAS LÍNEAS DE COMPRA A DTO Y LAS AGREGAMOS AL CARRITO
	    List<LineaCompraDTO> carrito = new ArrayList();
	    for (LineasDeCompra linea : compra.getLineasDeCompras()) {
	        carrito.add(LineaCompraDTO.fromEntity(linea));
	    }
	    model.addAttribute("carrito", carrito);

	    // OBTENEMOS EL USUARIO COMPLETO Y LO AGREGAMOS AL MODELO
	    Usuario usuario = iclienteDao.buscarUno(usuarioSesion.getIdUsuario());
	    model.addAttribute("usuario", usuario);

	    // RETORNAMOS LA VISTA "compraVerificar"
	    return "compraVerificar";
	}



	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@PostMapping("/procesar")
	public String procesarCompra(HttpSession sesion, Model model, RedirectAttributes redirectAttributes,
								@RequestParam(name="direccion", defaultValue="0") int direccionId,
								@RequestParam(name="tarjeta", defaultValue = "0") int tarjetaId) {
		
		
		Direccione direccion = iDireccionesRepository.findById(direccionId).orElse(null);
		
		if (direccion == null) {
			redirectAttributes.addFlashAttribute("mensaje", "No se puede realizar una compra sin una direccion");
			return "redirect:/compra/verificar";
		}

		TarjetasBancaria tarjeta = iTarjetasRepository.findById(tarjetaId).orElse(null);
		
		if (tarjeta == null) {
			redirectAttributes.addFlashAttribute("mensaje", "No se puede realizar una compra sin una tarjeta bancaria");
			return "redirect:/compra/verificar";
		}
		Usuario usuario = (Usuario) sesion.getAttribute("usuario");
		boolean encontrado = false;
		for (Usuario usuarioTarjeta : tarjeta.getUsuarios()) {
			if (usuarioTarjeta.getIdUsuario() == usuario.getIdUsuario()) {
				encontrado = true;
			}
		}
		
		if (encontrado == false) {
			redirectAttributes.addFlashAttribute("mensaje", "Esta tarjeta bancaria no es tuya pillin.");
			return "redirect:/compra/verificar";
		}

		Compra carrito = icompraDao.buscarCarrito(usuario);
		
		carrito.setEstado(Compra.ESTADO_COMPRA);
		carrito.setDireccione(direccion);
		carrito.setTarjetasBancaria(tarjeta);
		carrito.setFechaDeRealizacion(new Date());
		iCompraRepository.save(carrito);
		
		if (sesion.getAttribute("carrito") != null) {
	        sesion.removeAttribute("carrito");
	    }

		redirectAttributes.addFlashAttribute("mensaje", "¡Muchas gracias! Compra realizada con éxito.");
		redirectAttributes.addFlashAttribute("mensaje2", "Recibirá su pedido en su domicilio en menos de 24 horas.");
		return "redirect:/cliente/sesionActivaCliente";
	}
}