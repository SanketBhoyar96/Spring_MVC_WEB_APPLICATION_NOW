<%@page import="java.util.List"%>
<%@page import="com.soft.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: #c1cbc8;
	border: 2px dashed #c1cbc8;
}

#tablecenter {
	display: flex;
	justify-content: center;
	align-items: center;
}

th {
	background-color: rgb(4, 170, 109);
}

table, th, td {
	border: 1px solid;
	border-collapse: collapse;
	text-align: center;
	padding: 20px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:nth-child(odd) {
	background-color: white;
}

td:hover {
	background-color: yellow;
}

td>button:nth-child(1) {
	padding: 8px;
	background-color: #cf6565;
	border: 1px solid #cf6565;
	font-weight: 700;
	cursor: pointer;
}

td>button:nth-child(1):hover {
	background-color: #da4d22;
}

td>button:nth-child(2):hover {
	background-color: #e55b16;
}

td>button:nth-child(2) {
	padding: 8px;
	background-color: #d87c4e;
	border: 1px solid #d87c4e;
	font-weight: 700;
	cursor: pointer;
}

h1 {

	margin:auto;
	text-align:center;
	color: maroon;
	background-color:#7191c3;
	border-radius: 10px;
	width: 30%;
	margin-bottom: 50px;
}

#divCenter {
	text-align: center;
}

#divCenter>button {
	padding: 8px;
	margin: 9px;
	background-color: #bd6b97;
	border: none;
	color: white;
	border-radius: 10px;
}

#divCenter>button:hover {
	color: black;
	background-color: #c8287e;
	cursor: pointer;
}

.btnde {
	padding: 8px;
	background-color: #d87c4e;
	border: 1px solid #d87c4e;
	font-weight: 700;
	cursor: pointer;
}
.btnde>a{
text-decoration:none;
 color: black;
}
.btnde:hover {
	background-color: #e55b16;
}
</style>
<body>
	<h1>Welcome Display Page</h1>
	<div id="divCenter">
		<span style="color: red; font-size: 25px;">Welcome::<b
			style="color: purple; margin-right: 90px">Sanket Bhoyar</b></span>
		<button>
			<a style="color: white; text-decoration: none;" href="userform">Add
				New User</a>
		</button>
	</div>
	<div id="tablecenter">
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>ADDRESS</th>
					<th>PHONE_NO</th>
					<th>Option</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<User> list = (List<User>) request.getAttribute("userList");
				%>
				<%
				for (User user : list) {
				%>
				<tr>
					<td><%=user.getID()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getAddress()%></td>
					<td><%=user.getPhoneNo()%></td>
					<td><a href="updateUserForm?ID=<%=user.getID()%>"><button>Update</button></a><a
						href="deleteById?ID=<%=user.getID()%>"><button>Delete</button>
					</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

</body>
     </tbody>
   </table>
   </div>
   
</body>
</html>