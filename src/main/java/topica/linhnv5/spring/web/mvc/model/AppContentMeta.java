package topica.linhnv5.spring.web.mvc.model;

/**
 * paging meta data
 * @author ljnk975
 *
 */
public class AppContentMeta {

	private AppContentPaging pagination;
	
	public AppContentMeta() {
	}

	public AppContentMeta(AppContentPaging pagination) {
		this.pagination = pagination;
	}

	/**
	 * @return the pagination
	 */
	public AppContentPaging getPagination() {
		return pagination;
	}

	/**
	 * @param pagination the pagination to set
	 */
	public void setPagination(AppContentPaging pagination) {
		this.pagination = pagination;
	}

}
