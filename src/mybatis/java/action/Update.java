package mybatis.java.action;

import java.util.Scanner;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Update implements dataAction{
	 Scanner sc = new Scanner(System.in);

	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance();

		
		UserDTO userDATA = new UserDTO();
		System.out.println("�����ϰ���� ID�� �Է�");
		userDATA.setEx01(sc.nextInt());
		System.out.println("�ʵ� 2���� �Է�");
		userDATA.setEx02(sc.next());
		System.out.println("�ʵ� 3���� �Է�");
		userDATA.setEx03(sc.next());
		
		userDAO.update_data(userDATA);
	}

}
