package tienda.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
@RequestMapping("/blog")
public class Blog {




	// RUTA PARA ACCEDER AL BLOG
	@GetMapping("/bodega")
	public String blog(HttpSession sesion, Model model) {
		
		
			return "blog";
		}
	
}
