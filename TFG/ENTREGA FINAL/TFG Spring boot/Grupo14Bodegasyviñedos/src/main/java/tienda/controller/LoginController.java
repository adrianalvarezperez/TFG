package tienda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private AuthenticationManager authenticationManager;

    
    
    
    @GetMapping("/loginForm")
    public String loginForm() {
        return "login2"; // NOMBRE DE LA VISTA DEL FORMULARIO DE INICIO DE SESIÓN
    }

    
    
    
    
    @PostMapping("/loginForm")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, RedirectAttributes redirectAttributes) {
        try {
            // CREAR OBJETO DE AUTENTICACIÓN CON EL NOMBRE DE USUARIO Y CONTRASEÑA
            Authentication authentication = new UsernamePasswordAuthenticationToken(username, password);

            // AUTENTICAR AL USUARIO
            Authentication result = authenticationManager.authenticate(authentication);

            // ESTABLECER LA AUTENTICACIÓN EN EL CONTEXTO DE SEGURIDAD
            SecurityContextHolder.getContext().setAuthentication(result);

            // REDIRECCIONAR A LA PÁGINA DE INICIO DESPUÉS DE INICIAR SESIÓN CORRECTAMENTE
            return "redirect:/inicio";
        } catch (AuthenticationException e) {
            // MANEJAR ERROR DE AUTENTICACIÓN, POR EJEMPLO, MOSTRAR UN MENSAJE DE ERROR EN EL FORMULARIO DE INICIO DE SESIÓN
            redirectAttributes.addFlashAttribute("error", "*Nombre de usuario o contraseña incorrectos");
            return "redirect:/loginForm";
        }
    }

    
    
    
    @GetMapping("/logout2")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        // INVALIDAR LA SESIÓN Y REDIRIGIR AL USUARIO A LA PÁGINA DE INICIO DE SESIÓN
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }
        return "redirect:/loginForm?logout2";
    }
}

