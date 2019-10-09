package topica.linhnv5.spring.web.mvc.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import topica.linhnv5.spring.web.mvc.model.User;
import topica.linhnv5.spring.web.mvc.service.IUserService;

@RestController
@RequestMapping("/api/user")
public class UserRestController {

	@Autowired
	private IUserService userService;

	// -------------------Retrieve Single User------------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getUser(@PathVariable("id") long id) {
		User user = userService.findById(id);
		if (user == null)
			return new ResponseEntity<>("User with id " + id  + " not found", HttpStatus.NOT_FOUND);
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	// -------------------Create a User-------------------------------------------
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> createUser(@RequestBody User user, UriComponentsBuilder ucBuilder) {
		if (userService.findByName(user.getUsername()) != null)
			return new ResponseEntity<>("Unable to create. A User with name " +  user.getUsername() + " already exist.", HttpStatus.CONFLICT);

		userService.saveUser(user);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/api/user/{id}").buildAndExpand(user.getId()).toUri());
		return new ResponseEntity<String>(headers, HttpStatus.CREATED);
	}

	// ------------------- Update a User ------------------------------------------------
	@RequestMapping(value = "/user/{id}", method = RequestMethod.PUT)
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> updateUser(@PathVariable("id") long id, @RequestBody User user) {
		User currentUser = userService.findById(id);

		if (currentUser == null)
			return new ResponseEntity<>("Unable to upate. User with id " + id + " not found.", HttpStatus.NOT_FOUND);

		userService.updateUser(user);
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	// ------------------- Delete a User-----------------------------------------
	@RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> deleteUser(@PathVariable("id") long id) {
		User user = userService.findById(id);
		if (user == null)
			return new ResponseEntity<>("Unable to delete. User with id " + id + " not found.", HttpStatus.NOT_FOUND);
		userService.deleteUserById(id);
		return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
	}

}
