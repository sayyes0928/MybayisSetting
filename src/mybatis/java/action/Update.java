package mybatis.java.action;

import java.util.Scanner;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Update implements dataAction{
	 Scanner sc = new Scanner(System.in);

	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance();

		
		UserDTO userDATA = new UserDTO();
		System.out.println("수정하고싶은 ID값 입력");
		userDATA.setEx01(sc.nextInt());
		System.out.println("필드 2번값 입력");
		userDATA.setEx02(sc.next());
		System.out.println("필드 3번값 입력");
		userDATA.setEx03(sc.next());
		
		userDAO.update_data(userDATA);
	}

}
