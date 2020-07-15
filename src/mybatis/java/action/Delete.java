package mybatis.java.action;

import java.util.Scanner;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Delete implements dataAction {
	 Scanner sc = new Scanner(System.in);

	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance();
		UserDTO userDATA = new UserDTO();
		System.out.println("삭제하고싶은 ID값 입력");
		userDATA.setEx01(sc.nextInt());

		userDAO.delete_data(userDATA);
	}

}
