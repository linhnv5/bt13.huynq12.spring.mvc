package topica.linhnv5.spring.web.mvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Application model, use to store information about an app in the store
 * @author ljnk975
 */
@Entity
@Table(name = "application")
public class Application {

	/**
	 * Short id of app
	 */
	@Id
	@Column(name = "id")
	private String id;

	/**
	 * Name of app
	 */
	@Column(name = "title", nullable = false)
	private String title;

	/**
	 * Rating count
	 */
	@Column(name = "rate", nullable = false)
	private float currentRatings;

	/**
	 * App Description
	 */
	@Column(name = "description", length = 10000)
	private String description;

	/**
	 * Image Url of App
	 */
	@Column(name = "image")
	private String appImageUrl;

	/**
	 * App Download url
	 */
	@Column(name = "url")
	private String appDownloadURL;

	/**
	 * Default constuctor
	 */
	public Application() {
	}

	/**
	 * Constructor
	 * @param id
	 * @param title
	 * @param appImageUrl
	 * @param currentRatings
	 */
	public Application(String id, String title, String appImageUrl, float currentRatings, String appDescription, String appDownloadURL) {
		this.id = id;
		this.title = title;
		this.appImageUrl = appImageUrl;
		this.currentRatings = currentRatings;
		this.description = appDescription;
		this.appDownloadURL = appDownloadURL;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * Short title for given max lent
	 * @param lent max lent of title
	 * @return the title
	 */
	public String getTitleShort(int lent) {
		if (title.length() > lent)
			return title.substring(0, lent);
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the appImageUrl
	 */
	public String getAppImageUrl() {
		return appImageUrl;
	}

	/**
	 * @param appImageUrl the appImageUrl to set
	 */
	public void setAppImageUrl(String appImageUrl) {
		this.appImageUrl = appImageUrl;
	}

	/**
	 * @return the currentRatings
	 */
	public float getCurrentRatings() {
		return currentRatings;
	}

	/**
	 * @param currentRatings the currentRatings to set
	 */
	public void setCurrentRatings(float currentRatings) {
		this.currentRatings = currentRatings;
	}

	/**
	 * @return the appDescription
	 */
	public String getAppDescription() {
		return description;
	}

	/**
	 * @return the appDescription
	 */
	public String getAppDescriptionHTML() {
		return description.replaceAll("\r\n", "<br/>");
	}

	/**
	 * Short description for given max lent
	 * @param lent max lent of des
	 * @return the description
	 */
	public String getAppDescriptionShort(int lent) {
		if (description.length() > lent)
			return description.substring(0, lent);
		return description;
	}

	/**
	 * @param appDescription the appDescription to set
	 */
	public void setAppDescription(String appDescription) {
		this.description = appDescription;
	}

	/**
	 * @return the appDownloadURL
	 */
	public String getAppDownloadURL() {
		return appDownloadURL;
	}

	/**
	 * @param appDownloadURL the appDownloadURL to set
	 */
	public void setAppDownloadURL(String appDownloadURL) {
		this.appDownloadURL = appDownloadURL;
	}

	/**
	 * @return the appDescription
	 */
	public String getAppLink() {
		return "/admin/apps/edit/"+this.id;
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof Application))
			return false;
		Application other = (Application) obj;
		return this.id.equals(other.id);
	}

}
