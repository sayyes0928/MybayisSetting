package mybatis.java.action;

import java.util.List;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Select implements dataAction{
	
	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance(); // UserDAO �� UserDAO �� ��ȯ�ϴ� static �޼ҵ带 ����ϱ� ���� UserDAO Ŭ������ new UserDAO�� �������� ������� �ʴ´�.
		
				
		List<UserDTO> userDTO = userDAO.select_all();
				
		//select �� ������ ������ ���پ� DTO�� ��´�. ResultSet �� ������ �Ѵ�?
		for(int i=0; i<userDTO.size(); i++) {
			System.out.print(userDTO.get(i).getEx01());
			System.out.print(userDTO.get(i).getEx02());
			System.out.println(userDTO.get(i).getEx03());
		}

	}
}
