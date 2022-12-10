package db_connect;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/bye2") // @ (annotation, 어노테이션,표시) ==> 표시를 통해서 요청 url을 설정!!
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("안녕히가세요.!!");
		
		String name = request.getParameter("name");
		String message = request.getParameter("message");
		System.out.println("이름은 " + name + "메시지는 " + message);
	}

}
