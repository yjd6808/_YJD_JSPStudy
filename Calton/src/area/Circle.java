package area;

public class Circle {
	double radious;

	public double getRadious() {
		return radious;
	}

	public void setRadious(double radious) {
		this.radious = radious;
	}
	
	public String getProcess() {
		return String.format("%.2f", radious * radious * Math.PI);
	}
	
}
