package test;

public class MainCar {

	public static void main(String[] args) {
		Car car1 = new Car();
		System.out.println(car1); // ram car1 address
		Car car2 = new Car();
		System.out.println(car2); // ram car1 address
		// 프로토타입(원형 Car) 방법
		// 주소가 다른 객체 2개가 생성됨
		// VO는 프로토타입 방법을 사용하면 됨
	}

}
