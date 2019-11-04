package model;

public class Registation {
	private String Fristname;
	private String Lastname;
	private String Email;
	private String NIC;
	private String PhoneNo;
	private String Password;
	private String Confirmpassword;
	
	public Registation() {
		this.Fristname= "";
		this.Lastname= "";
		this.Email = "";
		this.NIC="";
		this.PhoneNo= "";
		this.Password= "";
		this.Confirmpassword="";

	}



	public Registation(String Fristname ,String Lastname ,String Email , String NIC,String PhoneNo , String Password,String Confirmpassword) {
		this. Fristname= Fristname;
		this.Lastname=Lastname;
		this.Email =Email ;
		this.NIC=NIC;
		this.PhoneNo=PhoneNo;
		this.Password=Password;
		this.Confirmpassword=Confirmpassword;
	}



	public String getNIC() {
		return NIC;
	}



	public void setNIC(String nIC) {
		NIC = nIC;
	}



	public String getConfirmpassword() {
		return Confirmpassword;
	}



	public void setConfirmpassword(String confirmpassword) {
		Confirmpassword = confirmpassword;
	}



	public String getFristname() {
		return Fristname;
	}



	public void setFristname(String fristname) {
		Fristname = fristname;
	}



	public String getLastname() {
		return Lastname;
	}



	public void setLastname(String lastname) {
		Lastname = lastname;
	}



	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
		Email = email;
	}



	public String getPhoneNo() {
		return PhoneNo;
	}



	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}



	public String getPassword() {
		return Password;
	}



	public void setPassword(String password) {
		Password = password;
	}



	

}
