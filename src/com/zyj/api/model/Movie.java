package com.zyj.api.model;

public class Movie {
	private String id;
	private String  url;
	private String shortMessage;
	private String name;
	private String type;
	private String director;
	private String staror;
	private int score;
	private String ownerId;
	private String createData;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStaror() {
		return staror;
	}
	public void setStaror(String staror) {
		this.staror = staror;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getShortMessage() {
		return shortMessage;
	}
	public void setShortMessage(String shortMessage) {
		this.shortMessage = shortMessage;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getCreateData() {
		return createData;
	}
	public void setCreateData(String createData) {
		this.createData = createData;
	}
    
	
}
