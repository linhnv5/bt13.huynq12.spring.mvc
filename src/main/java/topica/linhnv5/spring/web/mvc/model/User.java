package topica.linhnv5.spring.web.mvc.model;

import java.io.Serializable;

/**
 * User model, hold login information
 * @author ljnk975
 */
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1010149953432188732L;

	/**
	 * IDDB
	 */
	private long id;

	/**
	 * Username
	 */
	private String username;

	/**
	 * Password of user
	 */
	private String password;

	// Don't need role this section
	private String[] roles;

	/// Infomation about user
	/**
	 * Full name of user
	 */
	private String fullName;

	/**
	 * Mail address
	 */
	private String email;

	public User(long id, String username, String password, String... roles) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.roles = roles;
	}

	/**
	 * @return the id
	 */
	public final long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public final void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public final String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public final void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public final String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public final void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the roles
	 */
	public final String[] getRoles() {
		return roles;
	}

	/**
	 * Is have admin role
	 * @return admin role
	 */
	public final boolean isAdmin() {
		if (roles != null) {
			for (String s : roles) {
				if (s.equalsIgnoreCase("ADMIN"))
					return true;
			}
		}
		return false;
	}

	/**
	 * @param roles the roles to set
	 */
	public final void setRoles(String... roles) {
		this.roles = roles;
	}

	/**
	 * @return the fullName
	 */
	public final String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName the fullName to set
	 */
	public final void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the email
	 */
	public final String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public final void setEmail(String email) {
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