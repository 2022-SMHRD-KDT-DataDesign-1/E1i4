package com.smhrd.model;

public class teamVO {

		private String movie_id;
		private String like_check;
		private String r_num;
		private String member_id;
		private String member_rate;
		private String movie_title;
		private String genre;
		private String movie_date;
		private String director;
		private String actors;
		private String poster_link;
		private String movie_rate;
		private String movie_time;
		private String synopsis;
		private String trailer;
		private String movie_age;
		public teamVO(String movie_id, String like_check, String r_num, String member_id, String member_rate,
				String movie_title, String genre, String movie_date, String director, String actors, String poster_link,
				String movie_rate, String movie_time, String synopsis, String trailer, String movie_age) {
			super();
			this.movie_id = movie_id;
			this.like_check = like_check;
			this.r_num = r_num;
			this.member_id = member_id;
			this.member_rate = member_rate;
			this.movie_title = movie_title;
			this.genre = genre;
			this.movie_date = movie_date;
			this.director = director;
			this.actors = actors;
			this.poster_link = poster_link;
			this.movie_rate = movie_rate;
			this.movie_time = movie_time;
			this.synopsis = synopsis;
			this.trailer = trailer;
			this.movie_age = movie_age;
		}
		
		public teamVO() {
			
		}
		
		
		public String getMovie_id() {
			return movie_id;
		}
		public String getLike_check() {
			return like_check;
		}
		public String getR_num() {
			return r_num;
		}
		public String getMember_id() {
			return member_id;
		}
		public String getMember_rate() {
			return member_rate;
		}
		public String getMovie_title() {
			return movie_title;
		}
		public String getGenre() {
			return genre;
		}
		public String getMovie_date() {
			return movie_date;
		}
		public String getDirector() {
			return director;
		}
		public String getActors() {
			return actors;
		}
		public String getPoster_link() {
			return poster_link;
		}
		public String getMovie_rate() {
			return movie_rate;
		}
		public String getMovie_time() {
			return movie_time;
		}
		public String getSynopsis() {
			return synopsis;
		}
		public String getTrailer() {
			return trailer;
		}
		public String getMovie_age() {
			return movie_age;
		}
		
	
}
