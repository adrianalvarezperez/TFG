package tienda.controller;


import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
@RequestMapping("/sobre")
public class About {

	

	

	@GetMapping("/nosotros")
	public String contacto(HttpSession sesion, Model model) {	
		
		
			return "about";	
		}
	
	
	
}
