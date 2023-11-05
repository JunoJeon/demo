<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.dao.NoticeDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="notice" class="com.example.model.Notice" scope="page"/>
<jsp:setProperty name="notice" property="noticeTitle" />
<jsp:setProperty name="notice" property="noticeContent" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wedgwood Bulletin Board</title>
</head>
<body>
  <%
  String userID = null;
  if (session.getAttribute("userID") !=null) {
	  userID = (String) session.getAttribute("userID");
  }
	  if (notice.getNoticeTitle() == null || notice.getNoticeContent() == null) {
    	  PrintWriter script = response.getWriter();
    	  script.println("<script>");
    	  script.println("alert('Please fill out all fields.')");
    	  script.println("history.back()");
    	  script.println("</script>");
      } else {
    	  NoticeDAO noticeDAO = new NoticeDAO();
          int result = noticeDAO.write(notice.getNoticeTitle(), userID, notice.getNoticeContent());
          if (result == -1) {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("alert('Fail to write a new content.')");
        	  script.println("history.back()");
        	  script.println("</script>");
          }
          else {
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	  script.println("location.href = 'bbs.jsp'");
        	  script.println("</script>");
          } 
      }
  %>
</body>
</html>