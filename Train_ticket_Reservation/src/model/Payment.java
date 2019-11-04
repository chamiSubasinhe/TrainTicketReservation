package model;

public class Payment {
	private String payid;
	private String fristname;
	private String password;
	private String paymethod;
	private String cardNo;

	public Payment(String payid, String fristname, String password, String paymethod, String cardNo) {
		this.payid = payid;
		this.fristname = fristname;
		this.password = password;
		this.paymethod = paymethod;
		this.cardNo = cardNo;

	}
	public Payment() {
		// TODO Auto-generated constructor stub
	}


	public Payment(String payid) {
		this.payid = payid;
	}

	
	public String getpayid() {
		return payid;
	}

	public String getfristname() {
		return fristname;
	}

	public void setfristname(String fristname) {
		this.fristname = fristname;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}

	public String paymethod() {
		return paymethod;
	}

	public void setpaymethod(String paymethod) {
		this.paymethod = paymethod;
	}

	public String cardNo() {
		return cardNo;
	}

	public void setcardNo(String cardNo) {
		this.cardNo =cardNo ;
	}

}
