package com.smhrd.model;

public class YoutubeVO {
	private String youtube_id;
	private String movie_id;
	private String youtube_type;
	private String youtuber;
	private String youtube_title;
	private String youtube_link;
	private String img_link;
	
	public YoutubeVO(String youtube_id, String movie_id, String youtube_type, String youtuber, String youtube_title,
			String youtube_link, String img_link) {
		super();
		this.youtube_id = youtube_id;
		this.movie_id = movie_id;
		this.youtube_type = youtube_type;
		this.youtuber = youtuber;
		this.youtube_title = youtube_title;
		this.youtube_link = youtube_link;
		this.img_link = img_link;
	}

	public String getYoutube_id() {
		return youtube_id;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public String getYoutube_type() {
		return youtube_type;
	}
	public String getYoutuber() {
		return youtuber;
	}
	public String getYoutube_title() {
		return youtube_title;
	}
	public String getYoutube_link() {
		return youtube_link;
	}
	public String getimg_link() {
		return img_link;
	}
	
}