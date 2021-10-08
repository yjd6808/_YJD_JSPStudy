package magic.member;

public class Child extends Parent{
	private String name;
	
	public Child() {}
	public Child(int age, String name) {
		super(age);
		
		this.name = name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
}
