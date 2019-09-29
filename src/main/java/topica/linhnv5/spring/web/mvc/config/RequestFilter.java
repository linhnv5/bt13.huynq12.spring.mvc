package topica.linhnv5.spring.web.mvc.config;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import topica.linhnv5.spring.web.mvc.dao.UserDAO;
import topica.linhnv5.spring.web.mvc.service.MyUserDetailsService;

@Component
public class RequestFilter extends OncePerRequestFilter {

	@Autowired
	private MyUserDetailsService userDetailsService;

	@Autowired
	private UserDAO userDAO;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
		final String username = (String) request.getSession().getAttribute("username");

		// Once we get the token validate it.
		if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
			UserDetails userDetails = this.userDetailsService.loadUserByUsername(username);

			UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken
					= new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());

			usernamePasswordAuthenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

			// After setting the Authentication in the context, we specify
			// that the current user is authenticated. So it passes the
			// Spring Security Configurations successfully.
			SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);

			// Set user object to request
			request.setAttribute("user", userDAO.findByName(username));
		}

		chain.doFilter(request, response);
	}

}
