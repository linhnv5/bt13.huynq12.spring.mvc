package topica.linhnv5.spring.web.mvc.model;

/**
 * Application model, use to store information about an app in the store
 * @author ljnk975
 */
public class Application {

	/**
	 * Short id of app
	 */
	private String id;

	/**
	 * Name of app
	 */
	private String title;

	/**
	 * Image Url of App
	 */
	private String appImageUrl;

	/**
	 * Rating count
	 */
	private float currentRatings;

	/**
	 * App Description
	 */
	private String appDescription;

	/**
	 * App Download url
	 */
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
		this.appDescription = appDescription;
		this.appDownloadURL = appDownloadURL;
	}

	/**
	 * @return the id
	 */
	public final String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public final void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public final String getTitle() {
		return title;
	}

	/**
	 * Short title for given max lent
	 * @param lent max lent of title
	 * @return the title
	 */
	public final String getTitleShort(int lent) {
		if (title.length() > lent)
			return title.substring(0, lent);
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public final void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the appImageUrl
	 */
	public final String getAppImageUrl() {
		return appImageUrl;
	}

	/**
	 * @param appImageUrl the appImageUrl to set
	 */
	public final void setAppImageUrl(String appImageUrl) {
		this.appImageUrl = appImageUrl;
	}

	/**
	 * @return the currentRatings
	 */
	public final float getCurrentRatings() {
		return currentRatings;
	}

	/**
	 * @param currentRatings the currentRatings to set
	 */
	public final void setCurrentRatings(float currentRatings) {
		this.currentRatings = currentRatings;
	}

	/**
	 * @return the appDescription
	 */
	public final String getAppDescription() {
		return appDescription;
	}

	/**
	 * @return the appDescription
	 */
	public final String getAppDescriptionHTML() {
		return appDescription.replaceAll("\r\n", "<br/>");
	}

	/**
	 * Short description for given max lent
	 * @param lent max lent of des
	 * @return the description
	 */
	public final String getAppDescriptionShort(int lent) {
		if (appDescription.length() > lent)
			return appDescription.substring(0, lent);
		return appDescription;
	}

	/**
	 * @param appDescription the appDescription to set
	 */
	public final void setAppDescription(String appDescription) {
		this.appDescription = appDescription;
	}

	/**
	 * @return the appDownloadURL
	 */
	public final String getAppDownloadURL() {
		return appDownloadURL;
	}

	/**
	 * @param appDownloadURL the appDownloadURL to set
	 */
	public final void setAppDownloadURL(String appDownloadURL) {
		this.appDownloadURL = appDownloadURL;
	}

}
