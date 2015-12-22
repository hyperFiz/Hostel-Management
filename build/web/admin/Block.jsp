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
        <a href="AdminHome.jsp"><button>Back</button></a>
        <a href="admin/createCollege.jsp"><button><h3>create new College</h3></button></a>
        <a href="createBlock"><button><h3>create new block</h3></button></a>
        <a href="admin/createRoom.jsp"><button><h3>insert room</h3></button></a>
        
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
                <td>Room Status</td>
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
                    <td>
                        <c:choose>
                            <c:when test="${block.roomStatus==1}">
                                Enabled
                            </c:when>
                            <c:otherwise>
                                Disabled
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <form action="BlockEdit">
                            <input type="hidden" name="blockID" value="<c:out value="${block.blockID}"/>">
                            <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                            <button type="submit">Edit</button>
                        </form>
                    </td>
                    <td>
                        <form action="RoomDelete">
                            <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                            <button>Delete</button>
                        </form>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${block.roomStatus==1}">
                                <form action="RoomDisable/disable">
                                    <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                                    <button>Disable</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <form action="RoomDisable/enable">
                                    <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                                    <button>Enable</button>
                                </form>    
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
