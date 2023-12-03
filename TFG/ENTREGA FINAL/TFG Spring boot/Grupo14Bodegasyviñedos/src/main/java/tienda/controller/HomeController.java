package tienda.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import tienda.modelo.beans.Rol;
import tienda.modelo.beans.Usuario;
import tienda.modelo.dao.RolDao;
import tienda.modelo.dao.UsuarioDao;




@Controller
public class HomeController {
	
	
	@Autowired
	private UsuarioDao udao;
	@Autowired
	private RolDao rolDAO;
	@Autowired
	private PasswordEncoder passwordEncoder;


	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/")
	public String verTodos(Model model, Authentication aut) {
		return "redirect:/inicio";		
	}

	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/inicio")
	public String inicio(Model model, Authentication auth, HttpSession sesion) {
	    if (auth == null) {
	        return "indexInvitado"; // SI NO HAY AUTENTICACIÓN, SE MUESTRA LA VISTA PARA INVITADOS
	    }
	    
	    Usuario usuario = udao.findByUsername(auth.getName()); // OBTENER EL USUARIO AUTENTICADO
	    
	    if (usuario != null) {
	        if (sesion.getAttribute("usuario") == null) {
	            sesion.setAttribute("usuario", usuario); // ALMACENAR EL USUARIO EN LA SESIÓN SI AÚN NO ESTÁ PRESENTE
	          
	        }
	    
	        boolean esAdministrador = auth.getAuthorities().stream()
	                .anyMatch(role -> role.getAuthority().equals("ROLE_ADMINISTRADOR")); // VERIFICAR SI EL USUARIO ES ADMINISTRADOR

	        if (esAdministrador) {
	            // LÓGICA PARA EL INICIO DE SESIÓN COMO ADMINISTRADO
	            return "indexAdmin"; // DEVOLVER LA VISTA PARA ADMINISTRADORES
	        } else {
	            // LÓGICA PARA EL INICIO DE SESIÓN COMO CLIENTE
	            return "indexCliente"; // DEVOLVER LA VISTA PARA CLIENTES
	        }
	    } else {
	        // LÓGICA PARA MANEJAR EL CASO EN QUE EL USUARIO SEA NULO
	        return "error"; // DEVOLVER LA VISTA DE ERROR
	    }
	}
	
	
//------------------------------------------------------------------------------------------------------------------------------------------------->
	
	
	@GetMapping("/registro")
	public String registrar() {		
		return "altaCliente";	
	}
	
	
	@PostMapping("/registro")
	public String proregistrar(Model model, RedirectAttributes ratt,
			@RequestParam(name="nombre")String nombre, 
			@RequestParam(name="apellido")String apellido,
			@RequestParam(name="fechaNacimiento")Date fechaNacimiento, 
			@RequestParam(name="email")String email, 
			@RequestParam(name="password")String password) {
		
		
		Usuario usuario = new Usuario(0, email, nombre, apellido, email, 1, fechaNacimiento, passwordEncoder.encode(password));
		usuario.setEnabled(1);
		usuario.setFechaNacimiento(new Date());
	 	usuario.addRol(rolDAO.findById(Rol.ROL_CLIENTE));
	 	usuario.setUsername(usuario.getEmail());
	 	if (udao.registro(usuario)) {
	 		ratt.addFlashAttribute("mensaje", "Usuario registrado");
	 		return "redirect:/loginForm";
	 	} else {
	 		model.addAttribute("mensaje", "El usuario ya existe");
	 		return "/registro";
	 	}
		
	}
	
	
}
