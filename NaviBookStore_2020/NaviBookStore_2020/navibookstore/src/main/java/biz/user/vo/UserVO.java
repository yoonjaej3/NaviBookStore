package biz.user.vo;

public class UserVO {
	String username;
	String phone;
	String userid;
	String userpwd;
	String address;
	
	public UserVO() {	}

	public UserVO(String username, String phone, String userid, String userpwd, String address) {
		this.username = username;
		this.phone = phone;
		this.userid = userid;
		this.userpwd = userpwd;
		this.address = address;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserVO [username=" + username + ", phone=" + phone + ", userid=" + userid + ", userpwd=" + userpwd
				+ ", address=" + address + "]";
	}
	
	
	
}
