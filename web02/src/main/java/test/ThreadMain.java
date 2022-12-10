package test;

public class ThreadMain {

	public static void main(String[] args) {
//		// Thread 객체 3개 생성 ==> ram에 준비
//		CounterThread counter = new CounterThread();
//		ImgThread img = new ImgThread();
//		TimerThread timer = new TimerThread();
//		
//		// cpu한테 실행할 대기줄에 넣기
//		counter.start();
//		img.start();
//		timer.start();
		
		StarThread star = new StarThread();
		DollarThread dollar = new DollarThread();
		AtThread at = new AtThread();
		
		star.start();
		dollar.start();
		at.start();
	}

}
