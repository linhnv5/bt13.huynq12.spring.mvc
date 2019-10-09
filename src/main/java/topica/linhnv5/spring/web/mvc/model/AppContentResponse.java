package topica.linhnv5.spring.web.mvc.model;

import java.util.List;

import org.springframework.data.domain.Page;

public class AppContentResponse {

	private String status;
	private String code;
	private AppContentMeta meta;
	private List<Application> data;

	public AppContentResponse() {
	}

	public AppContentResponse(String status, String code, Page<Application> apps) {
		this.status = status;
		this.code = code;
		this.meta = new AppContentMeta(new AppContentPaging(apps));
		this.data = apps.getContent();
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the meta
	 */
	public AppContentMeta getMeta() {
		return meta;
	}

	/**
	 * @param meta the meta to set
	 */
	public void setMeta(AppContentMeta meta) {
		this.meta = meta;
	}

	/**
	 * @return the data
	 */
	public List<Application> getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(List<Application> data) {
		this.data = data;
	}

}
