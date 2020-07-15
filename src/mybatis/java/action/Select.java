package mybatis.java.action;

import java.util.List;

import mybatis.java.dao.UserDAO;
import mybatis.java.dto.UserDTO;

public class Select implements dataAction{
	
	public void action_start() {
		UserDAO userDAO = UserDAO.getinstance(); // UserDAO 의 UserDAO 를 반환하는 static 메소드를 사용하기 위해 UserDAO 클래스를 new UserDAO의 형식으로 사용하지 않는다.
		
				
		List<UserDTO> userDTO = userDAO.select_all();
				
		//select 로 가져온 값들을 한줄씩 DTO에 담는다. ResultSet 의 역할을 한다?
		for(int i=0; i<userDTO.size(); i++) {
			System.out.print(userDTO.get(i).getEx01());
			System.out.print(userDTO.get(i).getEx02());
			System.out.println(userDTO.get(i).getEx03());
		}

	}
}
