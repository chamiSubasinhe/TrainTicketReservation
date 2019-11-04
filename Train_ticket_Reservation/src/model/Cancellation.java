package model;

public class Cancellation {
	private String canid; 
	private String name;
	private String ticketno;
	private String reservno;
	
	public Cancellation(String name,String ticketno,String reservno)
	{
		
		this.name=name;
		this.ticketno=ticketno;
		this.reservno=reservno;
	}
	
	 public Cancellation(String canid) {
	        this.canid = canid;
	    }

	    public String getcanid() {
	        return canid;
	    }
	    public void getname(String name) {
	        this.name= name;
	    }

	    public String setname() {
	        return name;
	    }
	    public void gettickno(String ticketno) {
	        this.ticketno= ticketno;
	    }

	    public String setticketno() {
	        return ticketno;
	    }
	    public void getreserno(String reservno) {
	        this.reservno= reservno;
	    }

	    public String setreservno() {
	        return reservno;
	    }

}
