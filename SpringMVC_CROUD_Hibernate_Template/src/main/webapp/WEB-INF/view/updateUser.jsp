<%@page import="com.soft.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#btnadd {
	display: flex;
	justify-content: center;
	align-items: center;
	/* width: 70%; */
	/* background-color: tomato; */
}

#btnadd>input {
	background-color: rgba(180, 9, 9, 0.849);
	padding: 10px;
	width: 80%;
	border: none;
	border-radius: 15px;
	font-size: 20px;
	color: rgb(5, 2, 3);
	cursor: pointer;
	margin: 10px;
}

#btnadd>input:hover {
	background-color: rgb(231, 32, 18);
}

body {
	width: 100%;
	height: 580px;
	background-color: #1e2424;
	background-image:
		url(https://images.unsplash.com/photo-1577760263010-ebfa5798337c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	/* background-size: contain cover; */
}

h1 {
	color: rgb(3, 79, 88);
	font-weight: 1000;
	background-color: rgb(238, 111, 89);
	border-radius: 15px;
	padding: 5px;
	text-align: center;
}

#container {
	display: flex;
	justify-content: center;
	align-items: center;
	/* text-align: center; */
	margin-top: 50px;
}

#containerchild {
	/* border: 1px solid rgb(250, 246, 246); */
	padding: 30px;
	border-radius: 25px;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
		rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px
		-2px 6px 0px inset;
	background-color: #c59989;
}

#containerchild>form>label {
	color: rgb(28, 9, 6);
	font-size: 20px;
	cursor: pointer;
}

#containerchild>form>input {
	width: 100%;
	height: 30px;
	font-size: 20px;
	cursor: pointer;
}

#containerchild>form>input:active {
	background-color: rgb(156, 158, 46);
	border: none;
}
</style>
</head>
<body>

	<div id="container">
		<div id="containerchild">
			<h1>Update User Data</h1>
			<form action="updateUser" method="post">

 <%User existUser =(User) request.getAttribute("ExistUser"); %>
                <label>ID</label><br> 
				<input type="text"placeholder="Enter ID" name="ID" readonly value="<%=existUser.getID()%>" /><br><br> 
				<label>Name</label><br> 
				<input type="text"placeholder="Enter Name" name="Name" value="<%=existUser.getName()%>" /><br><br> 
				<label>Address</label><br> <input type="text"placeholder="Enter ID" name="Address" value="<%=existUser.getAddress()%>" /><br><br> 
				<label>PhoneNo</label><br> <input type="text"placeholder="Enter ID" name="PhoneNo" value="<%=existUser.getPhoneNo()%>" /><br><br>
				<div id="btnadd">
					<input type="submit" value="UpadteUserDetails">
				</div>
				<a style="margin-left: 50px" href="ProductDashboard.jsp">Move to
					Display Page</a>
		</div>

		</form>
	</div>
</body>
</html>