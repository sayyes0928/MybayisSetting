<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="mybatis.java.dao.UserDAO" %>
<%@page import="mybatis.java.dto.QnABBS" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />

    <link rel="stylesheet" type="text/css" href="teamTopNav.css" />
    <link rel="stylesheet" type="text/css" href="teamBBS.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"
    />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>QnA</title>
  </head>
  <body>
  <% 
 String us_id = (String)session.getAttribute("us_id");
 SqlSessionFactory sqlfactory = UserDAO.getConn();
 SqlSession sqlsession = sqlfactory.openSession();
 List<QnABBS> selectList = sqlsession.selectList("select_QnA");

%>
  
      <form action="QnA_wirte_bbs.jsp" method="get">
        <header>
        <div id="h_wrap">
            <div class="h_div"></div>
            <div class="h_div">
              <h1>자취해보자</h1>
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="80" height="80">
              <g id="outline">
              <path d="M7.293,34.707A1.043,1.043,0,0,0,8,35V61a1,1,0,0,0,1,1H51a1,1,0,0,0,1-1V35a1,1,0,0,0,.707-.293l3-3a1,1,0,0,0,.015-1.4l-24.939-26A1,1,0,0,0,30.063,4h0a1,1,0,0,0-.721.306L18,16.072V12h1a1,1,0,0,0,1-1V5a1,1,0,0,0-1-1H7A1,1,0,0,0,6,5v6a1,1,0,0,0,1,1H8V26.447L4.28,30.306a1,1,0,0,0,.013,1.4ZM14,60H10V58h4Zm0-4H10V54h4Zm10,4H16V46h8Zm0-16H16V40h8Zm5,16H26V58h3Zm-3-4V54h6v2Zm11,4H31V58h6Zm-3-4V54h8v2Zm11,4H39V58h6Zm5,0H47V58h3Zm0-4H44V54h6Zm0-4H26V39a1,1,0,0,0-1-1H15a1,1,0,0,0-1,1V52H10V34H50ZM11.3,32,30,12.447,48.7,32ZM8,6H18v4H8Zm2,12V16h4V14H10V12h6v6.147l-6,6.225V20h4V18ZM30.06,6.443,53.6,30.985,52.016,32.57,30.723,10.309a1,1,0,0,0-1.446,0L7.984,32.57,6.4,30.987Z"/>
              <rect x="20" y="52" width="2" height="2"/>
              <path d="M31,50H43a1,1,0,0,0,1-1V39a1,1,0,0,0-1-1H31a1,1,0,0,0-1,1V49A1,1,0,0,0,31,50Zm7-10h4v8H38Zm-6,0h4v8H32Z"/>
              <path d="M43,14H59a1,1,0,0,0,1-1V9a3,3,0,0,0-4.065-2.8,5,5,0,0,0-9.87,0A3,3,0,0,0,42,9v4A1,1,0,0,0,43,14Zm1-5a1,1,0,0,1,2,0,1,1,0,0,0,2,0V7a3,3,0,0,1,6,0V9a1,1,0,0,0,2,0,1,1,0,0,1,2,0v3H44Z"/></g></svg>
            </div>
            <div class="h_div">
              <div class="serch">
              <%
                if(us_id == null){
              %>
              <input type="button" value="로그인" onclick="location.href='loginPage.jsp'"/>
              <input type="button" value="회원가입" onclick="location.href='join.jsp'"/>
              <%
              }else{
              %>
              <%= us_id%>
              <input type="button" value="로그아웃" onclick="location.href='logoutActionPage.jsp'"/>
              <%
                }
              %>
              </div>
            </div>
        </div>
        <div id="nav_hr">
          <nav role="navigation" class="primary-navigation">
            <ul id="m_line">
              <li><span>홈</span></li>
              <li><a href="teampro_ver_01_1.html"><span>스토어</span></a>
                <ul class="dropdown">
                  <li><a href="#">홈</a></li>
                  <li><a href="#">카테고리</a></li>
                  <li><a href="#">베스트</a></li>
                  <li><a href="#">특가</a></li>
                </ul>
              </li>
              <li><a href="teampro_myhome.html"><span>마이홈</span></a>
                <ul class="dropdown">
                  <li><a href="#">홈</a></li>
                  <li><a href="#">내방자랑</a></li>
                  <li><a href="#">내집자랑</a></li>
                  <li><a href="#">전문가집들이</a></li>
                </ul>
              </li>
              <li><span>자취에대한 모든것</span>
                <ul class="dropdown">
                  <li><a href="#">홈</a></li>
                  <li><a href="#">자취생TIP</a></li>
                  <li><a href="#">자취생QnA</a></li>
                  <li><a href="#">혼밥레시피</a></li>
                </ul>
              </li>
              <li><span>고객센터</span>
                <ul class="dropdown">
                  <li><a href="#">질문과답변</a></li>
                  <li><a href="#">공지사항</a></li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
        </header>
        
            <div id="m_wrap">
              <div class="QnA_container">
                <aside>
                  <div id="QnA_container_aside"></div>
                </aside>
                <div id="QnA_container_bbs_table">
                
                  <table class="table table-hover">
                    <tr class="QnA_container_bbs_table_title">
                      <td class="QnA_container_bbs_table_title_no">No.</td>
                      <td class="QnA_container_bbs_table_title_title">Title</td>
                      <td class="QnA_container_bbs_table_title_writer">Writer</td>
                      <td class="QnA_container_bbs_table_title_comment">Comment</td>
                      <td class="QnA_container_bbs_table_title_date">Date</td>
                    </tr>
                    
                  <% 
                  if(selectList.size()>0){
                  for(int i = 0; i <selectList.size(); i++ ){ 
                	  String userNick = sqlsession.selectOne("select_get_us_nkname",selectList.get(i).getQna_nickname());
             
                	
      
                	  %>
                    <tr class="active">
                      <td class="QnA_container_bbs_table_title_no"><%= selectList.get(i).getQna_num()%></td>
                      <td class="QnA_container_bbs_table_title_pre"><a href="QnA_view_content.jsp?qna_num=<%= selectList.get(i).getQna_num()%>"><%= selectList.get(i).getQna_title()%></a></td>
                      <td class="QnA_container_bbs_table_info"><%= userNick%></td>
                      <td>4</td>
                      <td class="QnA_container_bbs_table_info"><%= selectList.get(i).getQna_time()%></td>
                    </tr>
                  <%
                  } }else{
                	out.print("글없음");  
                  
                  }
                  %>
                  <tr>
                  <td colspan="5"><input type="button" style="float:right" value="글쓰기" onclick="location.href='QnA_wirte_bbs.jsp'" ></td>
                  </tr>
                  </table>
                
                </div>
              </div>
            </div>
        <footer>
          <div></div>
        </footer>
      </form>
  </body>
</html>
