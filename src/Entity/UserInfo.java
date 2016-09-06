package Entity;

public class UserInfo {
	private String LoginID;
	private String Name;
	private String Pwd;
	private int Role;
	private String Depict;
	public UserInfo() {
		super();
	
	}
	public UserInfo(String loginID, String name, String pwd, int role, String depict) {
		super();
		LoginID = loginID;
		Name = name;
		Pwd = pwd;
		Role = role;
		Depict = depict;
	}
	public String getLoginID() {
		return LoginID;
	}
	public void setLoginID(String loginID) {
		LoginID = loginID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPwd() {
		return Pwd;
	}
	public void setPwd(String pwd) {
		Pwd = pwd;
	}
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	public String getDepict() {
		return Depict;
	}
	public void setDepict(String depict) {
		Depict = depict;
	}
	
}
