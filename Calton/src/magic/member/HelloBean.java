package magic.member;

public class HelloBean {
	private String name = "홍길동";
	private int age = 20;
	private boolean isMan = false;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}

	public boolean isMan() {
		return isMan;
	}

	public void setMan(boolean isMan) {
		this.isMan = isMan;
	}
	
	private void psvm() {
       HelloBean myBean = new HelloBean();
       myBean.setName("박남길");
       
	}
}
