package model;

public class contact {

	private String name;
	private String email;
	private String message;

	public contact(String name, String email, String message) {
		this.name = name;
		this.email = email;
		this.message = message;

	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getmessage() {
		return message;
	}

	public void setmessage(String message) {
		this.message = message;
	}

}