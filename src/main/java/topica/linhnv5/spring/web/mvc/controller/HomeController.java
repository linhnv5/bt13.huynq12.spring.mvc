package topica.linhnv5.spring.web.mvc.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import topica.linhnv5.spring.web.mvc.model.Application;

@Controller
public class HomeController {

	@Autowired
	private RestTemplate restTemplate;

	@GetMapping(value="/")
	public ModelAndView home() throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI("http://localhost:8080/api/app?lent="+6))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<List<Application>> response = restTemplate.exchange(request, new ParameterizedTypeReference<List<Application>>(){});

		// Return to view
		ModelAndView model = new ModelAndView("home/index");
	    model.addObject("apps", response.getBody());
	    return model;
	}

	@GetMapping(value="/latest")
	public ModelAndView latest() throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI("http://localhost:8080/api/app"))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<List<Application>> response = restTemplate.exchange(request, new ParameterizedTypeReference<List<Application>>(){});

		// Return to view
		ModelAndView model = new ModelAndView("home/latest");
	    model.addObject("apps", response.getBody());
	    return model;
	}

}
