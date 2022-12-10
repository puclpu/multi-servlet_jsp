package test;

public class CounterThread extends Thread {

	// 동시에 처리하고 싶은 내용이 있으면, thread가 가지는 메서드 중 run()을 재정의
	@Override
	public void run() {
		for (int i = 500; i > 0; i--) {
			System.out.println("Counter>> " + i);
			try {
				Thread.sleep(500); // 0.5초, cpu자원을 자바가 요청 > try/catch
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
