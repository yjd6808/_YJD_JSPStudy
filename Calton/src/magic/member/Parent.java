package magic.member;

public abstract class Parent {
	int age;
	
	public Parent() {}
	public Parent(int age) {
		this.age = age;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age= age;
	}
}
