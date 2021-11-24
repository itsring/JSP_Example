package ch04.com.dao;

public class Person {
	private int id = 20211118;
	private String name = "홍길동";

	public Person() {

	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setId(int id) {
		this.id = id;
	}
}