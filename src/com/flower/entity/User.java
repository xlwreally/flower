package com.flower.entity;

public class User {
private String userid;
private String username;
private String password;
private Integer sex;
private String birthday;
private String tel;
private int type=1;
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Integer getSex() {
	return sex;
}
public void setSex(Integer sex) {
	this.sex = sex;
}
public String getBirthday() {
	return birthday;
}
public void setBirthday(String birthday) {
	this.birthday = birthday;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public int getType() {
	return type;
}
public void setType(int type) {
	this.type = type;
}
@Override
public String toString() {
	return "User [userid=" + userid + ", username=" + username + ", password="
			+ password + ", sex=" + sex + ", birthday=" + birthday + ", tel="
			+ tel + ", type=" + type + "]";
}

}
