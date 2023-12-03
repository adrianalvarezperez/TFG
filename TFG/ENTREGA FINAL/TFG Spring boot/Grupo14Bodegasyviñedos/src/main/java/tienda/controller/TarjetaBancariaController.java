package tienda.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tienda.modelo.dao.ClienteDao;
import tienda.modelo.dao.TarjetaBancariaDao;
import tienda.modelo.beans.*;
import tienda.modelo.repository.ClienteRepository;




@Controller
@RequestMapping("/tarjeta")
public class TarjetaBancariaController {
	
	
	@Autowired
	private TarjetaBancariaDao iTarjeta;
	@Autowired
	private ClienteDao iclienteDao;
	@Autowired
	private ClienteRepository iClienteRepository;
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->	
	
	
	@GetMapping("/altaTarjeta")
	public String altaTarjeta(HttpSession sesion, Model model) {
		return "altaTarjeta";
	}
	
	
	@PostMapping("/altaTarjeta")
    public String altaTarjeta(Model model, HttpSession session,
            @RequestParam("nombreTitular") String nombreTitular,
            @RequestParam("numeroTarjeta") BigDecimal numeroTarjeta,
            @RequestParam("mesCaducidad") int mesCaducidad,
            @RequestParam("anioCaducidad") int anioCaducidad,
            @RequestParam("cvv") BigDecimal cvv) {

        // Deja el día fijo
        int diaCaducidad = 01;

        // Crea la fecha de caducidad utilizando los parámetros recibidos
        Calendar cal = Calendar.getInstance();
        cal.set(anioCaducidad, mesCaducidad - 1, diaCaducidad);
        Date fechaCaducidad = cal.getTime();

        TarjetasBancaria tarjeta = new TarjetasBancaria(0, cvv, fechaCaducidad, nombreTitular, numeroTarjeta);

        Usuario usuarioSesion = (Usuario) session.getAttribute("usuario");

        if (iTarjeta.altaTarjeta(tarjeta) == 0) {
            model.addAttribute("mensaje", "Error al guardar la Tarjeta introducida");
            return "altaTarjeta";
        }

        Usuario usuario = iclienteDao.buscarUno(usuarioSesion.getIdUsuario());
        List<TarjetasBancaria> tarjetas = usuario.getTarjetasBancarias();
        tarjetas.add(tarjeta);
        usuario.setTarjetasBancarias(tarjetas);

        iClienteRepository.save(usuario);

        model.addAttribute("mensaje", " *Tarjeta guardada con éxito");
        return "altaTarjeta";
    }


}
