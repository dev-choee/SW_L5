<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","1234");
	
	PreparedStatement stmt = conn.prepareStatement("INSERT INTO custom_01 VALUES(?,?,?,?,?)");
	
	stmt.setString(1, request.getParameter("p_id"));
	stmt.setString(2, request.getParameter("p_pw"));
	stmt.setString(3, request.getParameter("c_name"));
	stmt.setString(4, request.getParameter("c_email"));
	stmt.setString(5, request.getParameter("c_tel"));	
	
	stmt.execute();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="add.jsp">���ȭ��</a>
</body>
</html>