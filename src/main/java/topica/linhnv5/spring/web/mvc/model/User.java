package topica.linhnv5.spring.web.mvc.model;

import java.io.Serializable;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User model, hold login information
 * @author ljnk975
 */
@Entity
@Table(name = "user")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1010149953432188732L;

	/**
	 * IDDB
	 */
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	/**
	 * Username
	 */
	@Column(name = "user", nullable = false)
	private String username;

	/**
	 * Password of user
	 */
	@Column(name = "pass", nullable = false)
	private String password;

	/**
	 * Role of user, ADMIN/USER
	 */
	@Column(name = "role", nullable = false)
	private String roles;

	/// Infomation about user
	/**
	 * Full name of user
	 */
	@Column(name = "fullname", nullable = true)
	private String fullName;

	/**
	 * Mail address
	 */
	@Column(name = "email", nullable = true)
	private String email;

	/**
	 * Default constructor
	 */
	public User() {
	}

	/**
	 * Create a user
	 * @param id
	 * @param username
	 * @param password
	 * @param roles
	 */
	public User(long id, String username, String password, String... roles) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.setRoles(roles);
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the roles
	 */
	public String[] getRoles() {
		return roles.split(",");
	}

	/**
	 * Is have admin role
	 * @return admin role
	 */
	public boolean isAdmin() {
		if (roles != null) {
			String[] arole = roles.split(",");
			for (String s : arole) {
				if (s.equalsIgnoreCase("ADMIN"))
					return true;
			}
		}
		return false;
	}

	/**
	 * @param roles the roles to set
	 */
	public void setRoles(String... roles) {
		this.roles = Stream.of(roles).collect(Collectors.joining(","));
	}

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof User))
			return false;
		User other = (User) obj;
		return this.id == other.id;
	}

}