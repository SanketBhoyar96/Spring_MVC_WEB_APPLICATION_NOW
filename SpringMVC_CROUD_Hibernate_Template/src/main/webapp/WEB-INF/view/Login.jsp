<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="view/styles.css">
</head>
<style>
body{
            width: 100%;
            height:580px;
            background-color: #1e2424;
            background-image: url(https://images.unsplash.com/photo-1577760263010-ebfa5798337c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            /* background-size: contain cover; */
            
        }
        h1{
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
        #containerchild{
            /* border: 1px solid rgb(250, 246, 246); */
            padding: 30px;
            border-radius: 25px;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
            background-color: #c59989;
        }
        #containerchild>form>label{
            color: rgb(28 9 6);
            font-size: 20px;
            cursor: pointer;
        }
        #containerchild>form>input{
            width: 100%;
            height: 30px;
            font-size: 20px;
            cursor: pointer;
            
        }
        #containerchild>form>input:active{
            background-color: rgb(156, 158, 46);
            border: none;
        }
        #btnsubmit{
            display: flex;
            justify-content: center;
            align-items: center;
            /* width: 70%; */
            /* background-color: tomato; */
        }
        #btnsubmit>input{
            background-color: rgba(180, 9, 9, 0.849);
            padding: 10px;
            width: 50%;
            border: none;
            border-radius: 15px;
            font-size: 20px;
            color: rgb(5, 2, 3);
            cursor: pointer;
            margin: 10px;

        }

        #btnsubmit>input:hover{
            background-color: rgb(231, 32, 18);
        }
      
</style>
<body>
<div id="container">
        <div id="containerchild">
          <h1>User Login</h1>
            
            <form action="" method="get">
                
                <label>UserEmail*</label><br> 
                 <input placeholder="Enter UserEmail" type="text" name="userEmail"><br>
                <br> 
                 <label>UserPassword*</label><br> 
                 <input placeholder="Enter UserPassword" type="password" name="userPassword"><br>
                <br> 
                <div id="btnsubmit">
                    <input type="submit" value="LOGIN">
                </div>
                <a style="margin-left: 50px" href="userfrom.html">Don't have an Account</a>
        </div>

        </form>
    </div>
</body>
</html>