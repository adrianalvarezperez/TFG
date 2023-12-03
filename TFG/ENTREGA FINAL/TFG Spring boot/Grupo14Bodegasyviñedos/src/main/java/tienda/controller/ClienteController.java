package tienda.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tienda.modelo.dao.ClienteDao;
import tienda.modelo.dao.CompraDao;
import tienda.modelo.beans.Compra;
import tienda.modelo.beans.Usuario;





@Controller
@RequestMapping("/cliente")
public class ClienteController {

	
	@Autowired
	private CompraDao iCompra;
	@Autowired
	private ClienteDao iCliente;
	@Autowired
	private PasswordEncoder passwordEncoder;

	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	//PARA PARSEAR LAS FECHAS
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/compras")
	public String verCompras(HttpSession sesion, Model model) {
		Usuario usuarioSesion = (Usuario) sesion.getAttribute("usuario");

		List<Compra> compras = iCompra.buscarComprasUsuario(usuarioSesion);
		if(compras == null || compras.isEmpty()) {
			model.addAttribute("mensaje", "Todavia no tienes compras");
			return "clienteCompras";
		} else {
			model.addAttribute("compras", iCompra.buscarComprasUsuario(usuarioSesion));
			return "clienteCompras";
		}
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/altaCliente")
	public String alta() {
		return "altaCliente";
	}
	
	
	
	@GetMapping("/verDatos")
	public String datos(Model model, HttpSession sesion ) {
		Usuario usuarioSesion = (Usuario) sesion.getAttribute("usuario");
		Usuario usuario= iCliente.buscarUno(usuarioSesion.getIdUsuario());	//GUARDA EN LA VARIABLE EL ID_CUENTA DE LA SESION
		model.addAttribute("datos", usuario);  
		return "verCliente";
	}
	
	
	
	
	@GetMapping("/verDatos2")
	public String datos2(Model model) {
		model.addAttribute("datos2", iCliente.buscarDatos());    
		return "verCliente2";
	}
	
	
	@GetMapping("/modificar/{id}")
	public String modificar(Model model, HttpSession sesion, @PathVariable("id")int idUsuario) {
		Usuario usuario= iCliente.buscarUno(idUsuario);
		model.addAttribute("datos", usuario); 
		return "modificarUsuario";
	}
	@GetMapping("/modificar2/{id}")
	public String modificar2(Model model, HttpSession sesion, @PathVariable("id")int idUsuario) {
		Usuario usuario= iCliente.buscarUno(idUsuario);
		model.addAttribute("datos", usuario); 
		return "modificarUsuario2";
	}
	
	
	
	// METODO POST PARA MODIFICAR UN USUARIO
	@PostMapping("/modificar")
	public String modificar(Model model, HttpSession sesion, 
						   @RequestParam("id")int idProducto,
						   @RequestParam(name="username")String username, 
	                       @RequestParam(name="nombre")String nombre, 
	                       @RequestParam(name="apellidos")String apellido, 
	                       @RequestParam(name="email")String email,
						   @RequestParam(name="password")String password){
	    
	  
		Usuario usuario= iCliente.buscarUno(idProducto);
	    // ACTUALIZAMOS LOS DATOS DEL USUARIO CON LOS VALORES RECIBIDOS
		usuario.setUsername(username);
		usuario.setNombre(nombre);
		usuario.setApellidos(apellido);
		usuario.setEmail(email);
		usuario.setPassword(passwordEncoder.encode(password));
	    
	   
	    
	    // INTENTAMOS MODIFICAR EL USUARIO EN LA BASE DE DATOS
	    if(iCliente.modificarCliente(usuario) == 1) {
	        model.addAttribute("mensaje", "Usuario modificado correctamente");
	        model.addAttribute("datos", usuario);        
	        return "redirect:/cliente/verDatos"; // REDIRIGIMOS A LA VISTA "verCliente"
	    }
	    
	    model.addAttribute("mensaje", "Usuario NOOOO modificado");
	    return "redirect:/cliente/verDatos"; // REDIRIGIMOS A LA VISTA "verCliente"
	}
	
	// METODO POST PARA MODIFICAR UN USUARIO
		@PostMapping("/modificar2")
		public String modificar2(Model model, HttpSession sesion, 
							   @RequestParam("id")int idProducto,
							   @RequestParam(name="username")String username, 
		                       @RequestParam(name="nombre")String nombre, 
		                       @RequestParam(name="apellidos")String apellido, 
		                       @RequestParam(name="email")String email,
		                       @RequestParam(name="password")String password){
		    
		  
			Usuario usuario= iCliente.buscarUno(idProducto);
		    // ACTUALIZAMOS LOS DATOS DEL USUARIO CON LOS VALORES RECIBIDOS
			usuario.setUsername(username);
			usuario.setNombre(nombre);
			usuario.setApellidos(apellido);
			usuario.setEmail(email);
			usuario.setPassword(passwordEncoder.encode(password));
		    
		   
		    
		    // INTENTAMOS MODIFICAR EL USUARIO EN LA BASE DE DATOS
		    if(iCliente.modificarCliente(usuario) == 1) {
		        model.addAttribute("mensaje", "Usuario modificado correctamente");
		        model.addAttribute("datos", usuario);        
		        return "redirect:/cliente/verDatos2"; // REDIRIGIMOS A LA VISTA "verCliente"
		    }
		    
		    model.addAttribute("mensaje", "Usuario NOOOO modificado");
		    return "redirect:/cliente/verDatos2"; // REDIRIGIMOS A LA VISTA "verCliente"
		}
		
		
		
		
		
		@GetMapping("/eliminarCliente/{id}")
		public String eliminarCliente(Model model, @PathVariable("id")int idProducto) {
			if(iCliente.eliminarCliente(idProducto) == 1) {
				model.addAttribute("mensaje", "Cliente eliminado correctamente");
				return "redirect:/cliente/verDatos2";
			}
			model.addAttribute("mensaje", "Cliente NOOO eliminado");
			return "redirect:/cliente/verDatos2";
		}
	
	
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	

	@GetMapping("/sesionActivaCliente")
	public String sesionActiva() {
		return "gracias";
	}
	
	
	@GetMapping("/inicioSesionCliente")
	public String identificate() {
		return "inicioSesionCliente";
	}
	
}
