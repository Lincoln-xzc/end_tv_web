package com.zyj.api.model;

import java.io.Serializable;
import java.util.Date;

public class UserInfo implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -3571909020337163429L;

	private Long id;

    private String phone;

    private String password;

    private String nickname;

    private String photo;

    private String slogan;

    private Date birthday;

    private Integer viewAge;

    private String gender;

    private Integer homeIdentity;

    private Long glamour;

    private Long fortune;

    private Integer attention;

    private Integer fans;
    
    private Integer praise;
    
    private Integer dynamicNum;

    private Integer virtual;

    private String wishes;

    private Integer status;

    private String inviteCode;

    private Integer msgNotice;

    private String token;

    private Date createTime;
    
    private Date loginTime;
    
    private Long homeId;
    
    private Integer ownerId;
    
    private Integer todayFortune;
    
    private Date useFortuneTime;
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan == null ? null : slogan.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getViewAge() {
        return viewAge;
    }

    public void setViewAge(Integer viewAge) {
        this.viewAge = viewAge;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getHomeIdentity() {
        return homeIdentity;
    }

    public void setHomeIdentity(Integer homeIdentity) {
        this.homeIdentity = homeIdentity;
    }

    public Long getGlamour() {
        return glamour;
    }

    public void setGlamour(Long glamour) {
        this.glamour = glamour;
    }

    public Long getFortune() {
        return fortune;
    }

    public void setFortune(Long fortune) {
        this.fortune = fortune;
    }

    public Integer getAttention() {
        return attention;
    }

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    public Integer getFans() {
        return fans;
    }

    public void setFans(Integer fans) {
        this.fans = fans;
    }

    public Integer getVirtual() {
        return virtual;
    }

    public void setVirtual(Integer virtual) {
        this.virtual = virtual;
    }

    public String getWishes() {
        return wishes;
    }

    public void setWishes(String wishes) {
        this.wishes = wishes == null ? null : wishes.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getInviteCode() {
        return inviteCode;
    }

    public void setInviteCode(String inviteCode) {
        this.inviteCode = inviteCode == null ? null : inviteCode.trim();
    }

    public Integer getMsgNotice() {
        return msgNotice;
    }

    public void setMsgNotice(Integer msgNotice) {
        this.msgNotice = msgNotice;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token == null ? null : token.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

	public Long getHomeId() {
		return homeId;
	}

	public void setHomeId(Long homeId) {
		this.homeId = homeId;
	}

	public Integer getPraise() {
		return praise;
	}

	public void setPraise(Integer praise) {
		this.praise = praise;
	}

	public Integer getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Integer getDynamicNum() {
		return dynamicNum;
	}

	public void setDynamicNum(Integer dynamicNum) {
		this.dynamicNum = dynamicNum;
	}

	public Integer getTodayFortune() {
		return todayFortune;
	}

	public void setTodayFortune(Integer todayFortune) {
		this.todayFortune = todayFortune;
	}

	public Date getUseFortuneTime() {
		return useFortuneTime;
	}

	public void setUseFortuneTime(Date useFortuneTime) {
		this.useFortuneTime = useFortuneTime;
	}
	
    
}