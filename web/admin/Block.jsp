<%-- 
    Document   : block
    Created on : Dec 11, 2015, 5:34:51 PM
    Author     : on
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="database.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("../index.html");
        }
    %>
    <body>
        <h1>BLOCK / COLLEGE</h1> 
        <button><a href="AdminHome.jsp">Back</a></button>
        <button><a href="admin/createCollege.jsp"><h3>create new College</h3></a></button>
        <button><a href="createBlock"><h3>create new block</h3></a></button>
        <button><a href="admin/createRoom.jsp"><h3>insert room</h3></a></button>
        
            <br><br>
            <h3>List of Rooms</h3>
        <table border="1">
            <tr>
                <td>Room ID</td>
                <td>College Name</td>
                <td>Block Name</td>    
                <td>Room Number</td>
                <td>student</td>
                <td>Room Type</td>
                <td colspan="3">Option</td>
            </tr>
            <c:forEach items="${blockList}" var="block" varStatus="loop">
                <tr>
                    <td><c:out value="${block.roomID}"/></td>
                    <td><c:out value="${block.kolejName}"/></td>
                    <td><c:out value="${block.blockName}"/></td>
                    <td><c:out value="${block.roomNo}"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${block.studentID==0}">
                                No Student
                            </c:when>
                            <c:otherwise>
                                <c:out value="${block.studentID}"/>
                            </c:otherwise>    
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${block.roomType==1}">
                                Single
                            </c:when>
                            <c:when test="${block.roomType==2}">
                                Double
                            </c:when>
                            <c:otherwise>
                                Type not stated
                            </c:otherwise>    
                        </c:choose>
                    </td>
                    <td><button>Edit</button></td>
                    <td><button>Delete</button></td>
                    <td><button>Disable</button></td>
                </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
