<%@page import="com.soft.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>This A Display User Page Record Data Show</h1>
  
  <%User user =(User) request.getAttribute("UserDetails");%>
  
  <span>User_ID::<%= user.getID() %></span><br><br>
  <span>User_Name::<%= user.getName() %></span><br><br>
  <span>User_Email::<%= user.getEmail() %></span><br><br>
  <span>User_Address::<%= user.getAddress() %></span><br><br>
  <span>User_Password::<%= user.getPassword() %></span><br><br>
</body>
</html>