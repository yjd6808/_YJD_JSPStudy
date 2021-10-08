package example;

import java.io.UnsupportedEncodingException;

public class EncodingTest {

	public static void main(String[] args) throws UnsupportedEncodingException {
		String base = "정도1정도1";
		
		byte[] bs = base.getBytes();
		System.out.println("기본");
		for (int i = 0; i < bs.length; i++) {
			System.out.println(bs[i]);
		}
		System.out.println("====================");
		bs = base.getBytes("utf-8");
		System.out.println("utf-8");
		for (int i = 0; i < bs.length; i++) {
			System.out.println(bs[i]);
		}
		System.out.println("====================");
		bs = base.getBytes("euc_kr");
		System.out.println("euc_kr");
		for (int i = 0; i < bs.length; i++) {
			System.out.println(bs[i]);
		}
		System.out.println("====================");
		bs = base.getBytes("8859_1");
		System.out.println("8859_1");
		for (int i = 0; i < bs.length; i++) {
			System.out.println(bs[i]);
		}
		System.out.println("====================");
		
	}

}
