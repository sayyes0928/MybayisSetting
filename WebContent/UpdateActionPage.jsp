<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="mybatis.java.dao.UserDAO" %>
<%@page import="mybatis.java.dto.UserDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
 String ex001 = request.getParameter("ex01");
 String ex02 = request.getParameter("ex02");
 String ex03 = request.getParameter("ex03");
 
 int ex01 = Integer.parseInt(ex001);
 UserDTO userDTO = new UserDTO();

 userDTO.setEx01(ex01);
 userDTO.setEx02(ex02);
 userDTO.setEx03(ex03);
 
 SqlSessionFactory sqlfactory = UserDAO.getConn();
 SqlSession sqlsession = sqlfactory.openSession();
 int insert = sqlsession.insert("update_data",userDTO);
	sqlsession.commit();
	sqlsession.close();
	
 response.sendRedirect("Index.jsp");
%>

</body>
</html>