package topica.linhnv5.spring.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import topica.linhnv5.spring.web.mvc.dao.UserDAO;
import topica.linhnv5.spring.web.mvc.model.LoginRequest;
import topica.linhnv5.spring.web.mvc.model.User;
import topica.linhnv5.spring.web.mvc.service.MyUserDetailsService;

@Controller
@RequestMapping(value="/user/")
public class UserController {

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private MyUserDetailsService userDetailsService;

	@Autowired
	private UserDAO userDAO;

	@GetMapping(value="login")
	public ModelAndView login() throws Exception {
		// Return view
        ModelAndView model = new ModelAndView("user/login");
	    return model;
	}

	@PostMapping(value="login")
	public ModelAndView authenticate(@ModelAttribute LoginRequest u, HttpServletRequest request) throws Exception {
		// Return view
        ModelAndView model = new ModelAndView("user/login");

        try {
			this.authenticate(u.getUsername(), u.getPassword());

			// Set username
			request.getSession().setAttribute("username", u.getUsername());

			// Set param
			model.addObject("successLogin", "Login Successful");

			// Set user object to request
			request.setAttribute("user", userDAO.findByName(u.getUsername()));

			// Set redirect
			model.addObject("redirect", "/");
		} catch(Exception e) {
	        model.addObject("errorMessage", e.getMessage());
		}

	    return model;
	}

	@GetMapping(value="logout")
	public String logout(HttpServletRequest request) throws Exception {
		// Clear session username
		request.getSession().setAttribute("username", null);
		
		// Redirect
		return "redirect:/";
	}

	@GetMapping(value="register")
	public ModelAndView register() throws Exception {
		// Return view
        ModelAndView model = new ModelAndView("user/register");
	    return model;
	}

	@PostMapping(value="register")
	public ModelAndView doRegister(@ModelAttribute User u, HttpServletRequest request) throws Exception {
		// Return view
        ModelAndView model = new ModelAndView("user/register");

        // Check if username exists
        if (userDAO.findByName(u.getUsername()) != null) {
	        model.addObject("errorMessage", "Username exists!");
	    // else save user
        } else {
        	// Save user
        	userDAO.saveUser(u);

			// Set username
			request.getSession().setAttribute("username", u.getUsername());

			// Set param
			model.addObject("successLogin", "Register Successful");

			// Set user object to request
			request.setAttribute("user", userDAO.findByName(u.getUsername()));

			// Set redirect
			model.addObject("redirect", "/");
        }

	    return model;
	}

	@GetMapping(value="profile")
	public ModelAndView profile() throws Exception {
		// Return view
        ModelAndView model = new ModelAndView("user/profile");
	    return model;
	}

	/**
	 * Call authentication
	 * @param username  username
	 * @param password  password
	 * @return the user name
	 * @throws Exception 
	 */
	private String authenticate(String username, String password) throws Exception {
		try {
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		} catch (DisabledException e) {
			e.printStackTrace();
			throw new Exception("User Disable", e);
		} catch (BadCredentialsException e) {
			e.printStackTrace();
			throw new Exception("Wrong Password", e);
		}
		UserDetails userDetails = userDetailsService.loadUserByUsername(username);
		return userDetails.getUsername();
	}

}
