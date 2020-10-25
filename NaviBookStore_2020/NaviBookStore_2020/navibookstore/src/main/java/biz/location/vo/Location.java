package biz.location.vo;

public class Location {
	int spot;
	String location;
	
	public Location() {	}

	public Location(int spot, String location) {
		this.spot = spot;
		this.location = location;
	}
	
	public int getSpot() {
		return spot;
	}
	public void setSpot(int spot) {
		this.spot = spot;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
}
