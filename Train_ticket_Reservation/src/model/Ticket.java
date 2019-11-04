package model;

public class Ticket {
	private Integer ticketid;
	private String name;
	private String from;
	private String To;
	private int NoOfTicket;
	private String paymethod;
	private double TotalPrice;

	public Ticket() {
	}

	public Ticket(Integer ticketid, String name, String from, String To, int NoOfTicket, String paymethod,
			double TotalPrice) {
		this.ticketid = ticketid;
		this.name = name;
		this.from = from;
		this.To = To;
		this.NoOfTicket = NoOfTicket;
		this.paymethod = paymethod;
		this.TotalPrice = TotalPrice;

	}

	public Integer getTicketid() {
		return ticketid;
	}

	public void setTicketid(Integer ticketid) {
		this.ticketid = ticketid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return To;
	}

	public void setTo(String to) {
		To = to;
	}

	public int getNoOfTicket() {
		return NoOfTicket;
	}

	public void setNoOfTicket(int noOfTicket) {
		NoOfTicket = noOfTicket;
	}

	public String getPaymethod() {
		return paymethod;
	}

	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}

	public double getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}



}
