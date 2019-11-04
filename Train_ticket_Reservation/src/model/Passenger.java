package model;

public class Passenger {
	private String pasId;
	private String fristname;
	private String lastname;
	private String NIC;
	private String email;
	private String password;

	public Passenger(String pasId, String fristname, String lastname, String NIC, String email, String password) {
		this.pasId = pasId;
		this.fristname = fristname;
		this.lastname = lastname;
		this.NIC = NIC;
		this.email = email;
		this.password = password;

	}

	public Passenger() {
	}

	public String getpasId() {
		return pasId;
	}

	public void setpasId(String pasId) {
		this.pasId = pasId;
	}

	public String getfristname() {
		return fristname;
	}

	public void setfristname(String fristname) {
		this.fristname = fristname;
	}

	public String getlastname() {
		return lastname;
	}

	public void setlastname(String lastname) {
		this.lastname = lastname;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String NIC) {
		this.NIC = NIC;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}

}
