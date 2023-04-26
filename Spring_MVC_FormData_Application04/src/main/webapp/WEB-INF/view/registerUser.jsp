<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>Welcome to user Application</h1>
  
  <form action="saveUser" method="post">
	<label>User_ID</label><br>
	<input type="text" name="ID"><br><br>
	
	<label>User_Name</label><br>
	<input type="text" name="Name"><br><br>
	
	<label>User_Email</label><br>
	<input type="text" name="Email"><br><br>
	
	<label>User_Address</label><br>
	<input type="text" name="Address"><br><br>
	
	<label>User_Password</label><br>
	<input type="password" name="Password"><br><br>

<input type="submit" value="SubmitFormData">
</form>
</body>
</html>