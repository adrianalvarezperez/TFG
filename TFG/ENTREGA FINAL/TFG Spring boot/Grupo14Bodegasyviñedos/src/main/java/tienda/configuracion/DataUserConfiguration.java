package tienda.configuracion;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@EnableWebSecurity
@Configuration
@ComponentScan
public class DataUserConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private DataSource dataSource;
	
	// CONFIGURACIÓN DE AUTENTICACIÓN
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery("SELECT username, password, enabled FROM Usuarios WHERE username=?")
			.authoritiesByUsernameQuery(
				"SELECT u.username, r.nombre " +
				"FROM roles_usuarios ru " +
				"INNER JOIN Usuarios u ON u.ID_USUARIO = ru.ID_USUARIO " +
				"INNER JOIN Roles r ON r.id_rol = ru.id_rol " +
				"WHERE u.username = ?"
			);
	}

	// CONFIGURACIÓN DE SEGURIDAD HTTP
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
				// DIRECTORIOS ESTÁTICOS NO REQUIEREN AUTENTICACIÓN
				.antMatchers("/bootstrap/**", "/images/**", "/css/**", "/js/**", "/img/**").permitAll()
				.antMatchers("/rest/demo-bcrypt/**").permitAll()
				
				
				// VISTAS PÚBLICAS NO REQUIEREN AUTENTICACIÓN
				.antMatchers(
					"/",
					"/inicio",
					"/loginForm",
					"/logout2",
					"/registro",
					"/contacto/formContacto",
					"/blog/bodega",
					"/sobre/bodega",
					"/sobre/nosotros",
					"/search",
					"/producto/**",
					"/compra/carrito",
					"/compra/carrito/**",
					"/rest/**"
				).permitAll()
				
				.anyRequest().authenticated()
			.and()
				.formLogin().disable();
	}
	
	// CONFIGURACIÓN DEL CODIFICADOR DE CONTRASEÑAS
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	// DEFINIR EL BEAN AuthenticationManager
    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
    
}
