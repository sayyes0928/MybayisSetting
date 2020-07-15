package mybatis.java.action;

import java.util.Scanner;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Insert implements dataAction{
	 Scanner sc = new Scanner(System.in);

	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance(); // UserDAO 의 UserDAO 를 반환하는 static 메소드를 사용하기 위해 UserDAO 클래스를 new UserDAO의 형식으로 사용하지 않는다.
		UserDTO userDATA = new UserDTO();
		System.out.println("숫자 ID값 입력");
		userDATA.setEx01(sc.nextInt());
		System.out.println("필드 2번값 입력");
		userDATA.setEx02(sc.next());
		System.out.println("필드 3번값 입력");
		userDATA.setEx03(sc.next());
		
		userDAO.insert_data(userDATA);
		
	}

}
