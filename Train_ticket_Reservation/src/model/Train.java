package model;

public class Train {
	private String trainId;
	private String date;
	private String from;
	private String To;
	private String Time;

	public Train(String trainId, String date, String from, String To, String Time) {
		this.trainId = trainId;
		this.date = date;
		this.setFrom(from);
		this.To = To;
		this.Time = Time;

	}

	public Train() {
		// TODO Auto-generated constructor stub
	}

	public String gettrainId() {
		return trainId;
	}

	public void settrainId(String trainId) {
		this.trainId = trainId;
	}

	public String getdate() {
		return date;
	}

	public void setdate(String date) {
		this.date = date;
	}

	public String getfrom() {
		return date;
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

	public void setTo(String To) {
		this.To = To;
	}

	public String getTime() {
		return Time;
	}

	public void setTime(String Time) {
		this.Time = Time;
	}

}