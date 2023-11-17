package beom;

public class UserInfo {
	/*
	USER_ID
	ID
	PASSWORD
	PWCHECK
	PHONE_NUMBER
	EMAIL
	ADDRESS 
	 */
	private int userId;
	private String id;
	private String password;
	private String pwCheck;
	private String phoneNumber;
	private String eMail;
	private String address;
	
	public UserInfo (int userId, String id, String password, String pwCheck, String phoneNumber, String eMail, String address) {
		this.userId = userId;
		this.id = id;
		this.password = password;
		this.pwCheck = pwCheck;
		this.phoneNumber = phoneNumber;
		this.eMail = eMail;
		this.address = address;
		
	}
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPwCheck() {
		return pwCheck;
	}

	public void setPwCheck(String pwCheck) {
		this.pwCheck = pwCheck;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


}
