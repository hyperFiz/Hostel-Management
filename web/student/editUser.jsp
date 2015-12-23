<%-- 
    Document   : addUser
    Created on : Dec 23, 2015, 12:51:00 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
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
          <div class="page">
  <span class="menu_toggle">
    <i class="menu_open fa fa-bars fa-lg"></i>
    <i class="menu_close fa fa-times fa-lg"></i>
  </span>
  <ul class="menu_items">
    <li><a href="Logout"><i class="icon fa fa-power-off fa-2x"></i>Logout</a></li>
    <li><a href="studentHome"><i class="icon fa fa-list-alt fa-2x"></i>Student Home<br></a></li>
  </ul>
  <main class="content">
    <div class="content_inner">
      <h1>Edit Profile</h1>
        
        <form method="get" action="editUser/edit">
        <c:forEach items="${udList}" var="userdata">
            Username :   
            <c:out value="${userdata.username}"/>
            <br>
            Full Name:
            <input type="text" placeholder="Enter Name Name" value="<c:out value="${userdata.fullName}"/>" name="fullName" >
            <br>
            Password :   
            <input type="password" placeholder="Enter Password Name" name="password" required="required">
            <br><br>
            <input class="btn btn-success" type="submit" value="Edit Profile">
        </c:forEach>
        </form>
      <a href="studentHome"><button class="btn btn-danger">Cancel</button></a>
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


    </body>
</html>

