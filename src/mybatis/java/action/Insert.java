package mybatis.java.action;

import java.util.Scanner;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Insert implements dataAction{
	 Scanner sc = new Scanner(System.in);

	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance(); // UserDAO �� UserDAO �� ��ȯ�ϴ� static �޼ҵ带 ����ϱ� ���� UserDAO Ŭ������ new UserDAO�� �������� ������� �ʴ´�.
		UserDTO userDATA = new UserDTO();
		System.out.println("���� ID�� �Է�");
		userDATA.setEx01(sc.nextInt());
		System.out.println("�ʵ� 2���� �Է�");
		userDATA.setEx02(sc.next());
		System.out.println("�ʵ� 3���� �Է�");
		userDATA.setEx03(sc.next());
		
		userDAO.insert_data(userDATA);
		
	}

}
