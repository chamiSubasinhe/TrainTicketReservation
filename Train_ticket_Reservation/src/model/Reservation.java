package model;

public class Reservation {

	private String reservid;
	private String from;
	private String To;
	private String date;
	private String noOfTickets;
	private String name;

	public Reservation() {
	}

	public Reservation(String reservid, String from, String To, String date, String noOfTickets, String name) {
		this.reservid = reservid;
		this.from = from;
		this.To = To;
		this.date = date;
		this.noOfTickets = noOfTickets;
		this.name = name;

	}

	/*
	 * public Job(String jobid, String jobname, String jobamount, String starttime,
	 * String endtime) { this.jobid = jobid; this.jobname = jobname; this.jobamount
	 * = jobamount; this.starttime = starttime; this.endtime = endtime; }
	 */

	public Reservation(String reservid) {
		this.reservid = reservid;
	}

	public String getreservid() {
		return reservid;
	}

	public void setreservid(String reservid) {
		this.reservid = reservid;
	}

	public String getfrom() {
		return from;
	}

	public void setfrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return To;
	}

	public void setTo(String To) {
		this.To = To;
	}

	public String getdate() {
		return date;
	}

	public void setdate(String date) {
		this.date = date;
	}

	public String getnoOfTIckets() {
		return noOfTickets;
	}

	public void setnoOfTickets(String noOfTickets) {
		this.noOfTickets = noOfTickets;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	/*
	 * public static void main(String[] args) { // TODO code application logic here
	 * }
	 */

}
