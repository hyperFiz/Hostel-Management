<%-- 
    Document   : createRoom
    Created on : Dec 16, 2015, 11:50:55 PM
    Author     : USER
--%>

<%@page import="database.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="page">
  <span class="menu_toggle">
    <i class="menu_open fa fa-bars fa-lg"></i>
    <i class="menu_close fa fa-times fa-lg"></i>
  </span>
  <ul class="menu_items">
    <li><a href="../Logout"><i class="icon fa fa-power-off fa-2x"></i>Logout</a></li>
    <li><a href="../BlockList"><i class="icon fa fa-list-alt fa-2x"></i>Colleges, Block <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp& Rooms List</a></li>
  </ul>
  <main class="content">
    <div class="content_inner">
        <form method="get" action="../addRoom">
            Block Name : 
            <select name="blockID">
                <%
                    String UserSession = (String)session.getAttribute("userID");
                        if(UserSession==null)
                        {
                            response.sendRedirect("../index.html");
                        }
                        DB db = new DB();
                        if(db.connect())
                        {
                            db.query("SELECT * FROM block INNER JOIN kolej ON block.kolejID=kolej.kolejID");
                            for(int i=0; i<db.getNumberOfRows(); i++)
                            {
                     
                %>
                <option value="<%=db.getDataAt(i,"blockID")%>"><%=db.getDataAt(i,"blockName")%>, <%=db.getDataAt(i,"kolejName")%></option>
                <%
                            }
                        }
                %>
            </select><br><br>
            Room Number :
            <input type="text" placeholder="Enter Room Number" name="roomNo">
            <br><br>
            Room Type :
            <select name="roomType">
                <option value="1">Single</option>
                <option value="2">Double</option>
            </select>
            
            <br><br>
            <input class="btn btn-success" type="submit" value="add room">
            
        </form>
            <a href="../BlockList"><button class="btn btn-danger">Cancel</button></a>
    </body>
</html>
