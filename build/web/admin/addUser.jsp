<%-- 
    Document   : addUser
    Created on : Dec 23, 2015, 12:51:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("/HostelManagement/index.html");
        }
    
    %>
    </head>
    <body>
  <main class="content">
    <div class="content_inner">
      <h1>Register</h1>
        
        <form method="get" action="../addUserSvlt">
        Full Name:
            <input type="text" placeholder="Enter Name Name" name="Name" required="required">
            <br>
        Username :   
            <input type="text" placeholder="Enter UserName Name" name="userName" required="required">
            <br>
            Password :   
            <input type="password" placeholder="Enter Password Name" name="password" required="required">
            <input type="hidden" name="userType" value="1">
            <br><br>
            <input class="btn btn-success" type="submit" value="Add User">
        </form>
      <a href="/HostelManagement/index.html"><button class="btn btn-danger">Cancel</button></a>
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


    </body>
</html>

