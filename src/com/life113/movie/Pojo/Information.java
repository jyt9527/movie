package com.life113.movie.Pojo;

/**
 * @ClassName: Information
 * @Description: TODO
 * @author: JYT
 * @date: 2018年12月3日 下午10:38:48
 */
public class Information {
	private int id;
	private String pagination;
	private String headline;
	private String headline_url;
	private String brief;
	private String photo;
	private String view;
	private String comment;
	private String share;

	public Information() {
		super();

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPagination() {
		return pagination;
	}

	public void setPagination(String pagination) {
		this.pagination = pagination;
	}

	public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	public String getHeadline_url() {
		return headline_url;
	}

	public void setHeadline_url(String headline_url) {
		this.headline_url = headline_url;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getShare() {
		return share;
	}

	public void setShare(String share) {
		this.share = share;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Information [id=" + id + ", pagination=" + pagination + ", headline=" + headline + ", headline_url="
				+ headline_url + ", brief=" + brief + ", photo=" + photo + ", view=" + view + ", comment=" + comment
				+ ", share=" + share + "]";
	}

}
