package topica.linhnv5.spring.web.mvc.model;

import org.springframework.data.domain.Page;

public class AppContentPaging {

	private long total;
	private int  count;
	private int  per_page;
	private int  current_page;
	private int  total_pages;
	
	public AppContentPaging() {
	}

	public AppContentPaging(Page<?> page) {
		this.current_page = page.getNumber();
		this.total_pages = page.getTotalPages();
	}
	
	/**
	 * @return the total
	 */
	public long getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(long total) {
		this.total = total;
	}
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}
	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}
	/**
	 * @return the per_page
	 */
	public int getPer_page() {
		return per_page;
	}
	/**
	 * @param per_page the per_page to set
	 */
	public void setPer_page(int per_page) {
		this.per_page = per_page;
	}
	/**
	 * @return the current_page
	 */
	public int getCurrent_page() {
		return current_page;
	}
	/**
	 * @param current_page the current_page to set
	 */
	public void setCurrent_page(int current_page) {
		this.current_page = current_page;
	}
	/**
	 * @return the total_pages
	 */
	public int getTotal_pages() {
		return total_pages;
	}
	/**
	 * @param total_pages the total_pages to set
	 */
	public void setTotal_pages(int total_pages) {
		this.total_pages = total_pages;
	}

}
