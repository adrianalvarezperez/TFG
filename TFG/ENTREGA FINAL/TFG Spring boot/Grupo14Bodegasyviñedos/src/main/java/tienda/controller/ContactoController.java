package tienda.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;








@Controller
@RequestMapping("/contacto")
public class ContactoController {




	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	//PARA PARSEAR LAS FECHAS
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	

	@GetMapping("/formContacto")
	public String contacto(HttpSession sesion, Model model) {	
		
			return "contacto";	
		}
	
	
	
}
