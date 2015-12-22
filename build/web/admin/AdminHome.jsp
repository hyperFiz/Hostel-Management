<%-- 
    Document   : AdminHome
    Created on : Dec 11, 2015, 5:09:19 PM
    Author     : on
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
    </head>
    <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("../index.html");
        }
    
    %>
    <body>
        
        <h1>Admin Dashboard</h1>
        
        <button><a href="BlockList">Colleges, Block & Rooms List</a></button>
        <button><a href="Logout" class="glyphicon glyphicon-log-out"> Logout</a></button>

        <h3> Requested Room List </h3>
        
        <table border="1">
            <tr>
                <td>student ID</td>
                <td>Student Name</td>
                <td>College Request</td>
                <td>Room Type Request</td>
                <td>Status</td>
                <td colspan="2">Option</td>
            </tr>
            <c:forEach items="${appList}" var="app" varStatus="loop">
            
                <tr>
                    <td><c:out value="${app.studId}"/></td>
                    <td><c:out value="${app.studName}"/></td>
                    <td><c:out value="${app.kolejName}"/></td>
                    <td>
                        <c:if test="${app.roomType==1}">
                            Single
                        </c:if>
                        <c:if test="${app.roomType==2}">
                            Double
                        </c:if>
                    </td>   
                    <td><c:out value="${app.status}"/></td>
                    <td>
                        <form method="get" action="../Approve">
                            <input type="hidden" name="requestID" value="<c:out value="${app.requestID}"/>">
                        <input type="submit" value="Approve" class="btn bg-success">
                        </form>
                    </td>
                    <td>
                        <form method="get" action="#">
                            <input type="hidden" name="requestID" value="<c:out value="${app.requestID}"/>">
                        <input type="submit" value="Not Approve" class="btn bg-success">
                        </form>
                    </td>
                </tr>
            
            </c:forEach> 
        </table>
    </body>
</html>
