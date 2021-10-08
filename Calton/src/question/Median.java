package question;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class Median {
	int num1;
	int num2;
	int num3;
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	
	public int getProcess() {
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(num1);
		list.add(num2);
		list.add(num3);
		
		list.sort(new Comparator<Integer>() 
		{
			@Override
			public int compare(Integer o1, Integer o2) {
				return o1.compareTo(o2);
			}
		});
		return list.get(1);
	}
}
