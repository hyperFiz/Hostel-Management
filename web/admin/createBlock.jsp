<%-- 
    Document   : createBlock
    Created on : Dec 16, 2015, 11:50:42 PM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="database.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("/HostelManagement/index.html");
        }
    
    %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREATE BLOCK</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
      <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/style3.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    </head>
    <body>
         <div class="page">
  <span class="menu_toggle">
    <i class="menu_open fa fa-bars fa-lg"></i>
    <i class="menu_close fa fa-times fa-lg"></i>
  </span>
  <ul class="menu_items">
    <li><a href="Logout"><i class="icon fa fa-power-off fa-2x"></i>Logout</a></li>
    <li><a href="BlockList"><i class="icon fa fa-list-alt fa-2x"></i>Colleges, Block <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp& Rooms List</a></li>
  </ul>
  <main class="content">
    <div class="content_inner">
        <form method="get" action="addBlock">
            College Name : 
            <select name="kolejID">
                <%
                    String UserSession = (String)session.getAttribute("userID");
                        if(UserSession==null)
                        {
                            response.sendRedirect("../index.html");
                        }
                %>
                
                <c:forEach items="${kolejList}" var="kolej" varStatus="loop">
               
                    <option value="<c:out value="${kolej.kolejID}"/>">
                        <c:out value="${kolej.kolejName}"/>
                    </option>
                
                </c:forEach>
                
                    
            </select><br><br>
            Block Name :
            <input type="text" placeholder="Enter Block Name" name="blockName" required="required">
            <br><br>
            
            <input class="btn btn-success" type="submit" value="creat Block">
        </form>
                <a href="BlockList"><button class="btn btn-danger">Cancel</button></a>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<!--    <script src="js/bootstrap.min.js"></script>
    <script src="js/javascript2.js"></script> -->
</html>
