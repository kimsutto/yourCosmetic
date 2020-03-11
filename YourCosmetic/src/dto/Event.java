package dto;

import java.sql.Date;

public class Event {
	
	private int Eno;
	private String company;
	private Date startDate;
	private Date endDate;
	private String url;

	public Event() {
		this(0, null, null, null, null);
	}

	public Event(int Eno, String company, Date startDate, Date endDate, String url) {
		super();
		this.Eno=Eno;
		this.company=company;
		this.startDate=startDate;
		this.endDate = endDate;
		this.url = url;
	}
	
	public int getEno() {
		return Eno;
	}

	public void setEno(int eno) {
		Eno = eno;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
	
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	@Override
	public String toString() {
		return "Event [no=" + Eno + ", company=" + company + ", startDate=" + startDate + ", endDate=" + endDate + ",url=" + url + "]";
	}
}