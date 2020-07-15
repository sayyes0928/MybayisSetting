package mybatis.java.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybatis.java.dto.UserDTO;

public class UserDAO {
	private static SqlSessionFactory sqlfactory;
	private static UserDAO instance;
	
	public static UserDAO getinstance () {
		if(instance==null) { //�̹� ����� ���� ������,
			synchronized(UserDAO.class) {
				instance = new UserDAO(); //���ᰴü ����
				
			}
		}
		return instance;
	}
	
	public List<UserDTO> select_all() { //mapper ����
		SqlSession sqlsession = sqlfactory.openSession();
		try {
			 List<UserDTO> selectList = sqlsession.selectList("select_all"); //sql �������� ������ ���� List�� ��´�
			 return selectList;
		} finally {
			 sqlsession.close();

		}
		
		
		 	
	}
	
	

	public void insert_data(UserDTO userDTO) {
		SqlSession sqlsession = sqlfactory.openSession();
		try {
			int insert = sqlsession.insert("insert_data",userDTO);
			sqlsession.commit();
		} finally {
			sqlsession.close();
		}
		
		
	}
	
	public void update_data(UserDTO userDATA) {
		SqlSession sqlsession = sqlfactory.openSession();
		try {
			int update = sqlsession.update("update_data",userDATA);
			sqlsession.commit();
		} finally {
			sqlsession.close();

		}
		
		
	}
	public void delete_data(UserDTO userDTO) {
		SqlSession sqlsession = sqlfactory.openSession();
		try {
			int delete = sqlsession.delete("delete_data", userDTO);
			sqlsession.commit();
		} finally {
			sqlsession.close();
		}
		
		
	}
	
	public static SqlSessionFactory getConn() { // xml �д� ������
		//����
		try {
			//sqlfactory �ν��Ͻ��� ����ϱ� ���� SqlSessionFactoryBuilder() �� ���� �����Ѵ�.
			//�̶�, mybatis-config.xml �� ���� ���Ͽ��� sqlfactory �� �����Ѵ�
			Reader reader = Resources.getResourceAsReader("mybatis/j"
					+ "ava/dao/mybatis-config.xml"); //xml ����(mybatis.xml ����)
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return sqlfactory;
	}


}
