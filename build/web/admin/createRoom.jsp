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
            <input type="submit" value="add room">
            <button><a href="../BlockList">Cancel</a></button>
        </form>
    </body>
</html>
