package com.smhrd.model;

public class teamVO {

		private String r_num;
		private String member_id;
		private String movie_id;
		private String member_comment;
		private String like_check;
		private String member_rate;
		
		private String movie_title;
		private String movie_date;
		private String director;
		private String actors;
		private String poster_link;
		private String movie_rate;
		private String movie_time;
		private String synopsis;
		private String trailer;
		private String movie_age;
		private String movie_genre;


		public teamVO() {
			
		}

		public teamVO(String r_num, String member_id, String movie_id, String member_comment, String like_check,
				String member_rate, String movie_title, String movie_date, String director, String actors,
				String poster_link, String movie_rate, String movie_time, String synopsis, String trailer,
				String movie_age, String movie_genre) {
			super();
			this.r_num = r_num;
			this.member_id = member_id;
			this.movie_id = movie_id;
			this.member_comment = member_comment;
			this.like_check = like_check;
			this.member_rate = member_rate;
			this.movie_title = movie_title;
			this.movie_genre = movie_genre;
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
		
		
		public teamVO(String r_num, String member_id, String movie_id, String like_check) {
			super();
			this.r_num = r_num;
			this.member_id = member_id;
			this.movie_id = movie_id;
			this.like_check = like_check;
		}

		public String getR_num() {
			return r_num;
		}

		public String getMember_id() {
			return member_id;
		}

		public String getMovie_id() {
			return movie_id;
		}

		public String getMember_comment() {
			return member_comment;
		}

		public String getLike_check() {
			return like_check;
		}

		public String getMember_rate() {
			return member_rate;
		}

		public String getMovie_title() {
			return movie_title;
		}

		public String getGenre() {
			return movie_genre;
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
