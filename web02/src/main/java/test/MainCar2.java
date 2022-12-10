package test;

public class MainCar2 {

	public static void main(String[] args) {
		Car2 car1 = Car2.getInstance();
		System.out.println(car1); // ram car1 address
		Car2 car2 = Car2.getInstance();
		System.out.println(car2); // ram car1 address

		// 싱글톤으로 사용하는 클래스는
		// 한 번 싱글톤으로 만들어주고 서버에서 계속 가지고 있는 클래스
		// DAO, 서블릿(<-- jsp)
	}

}
