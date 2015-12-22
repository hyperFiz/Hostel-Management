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
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/style2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    </head>
    <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("../index.html");
        }
    %>
    <body>
        <div class="page">
            <span class="menu_toggle">
              <i class="menu_open fa fa-bars fa-lg"></i>
              <i class="menu_close fa fa-times fa-lg"></i>
            </span>
            <ul class="menu_items">
              <li><a href="AdminHome"><i class="icon fa fa-arrow-left fa-2x"></i>Back</a></li>
              <li><a href="admin/createCollege.jsp"><i class="icon fa fa-plus fa-2x"></i>Create New <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCollege</a></li>
              <li><a href="createBlock"><i class="icon fa fa-plus fa-2x"></i>Create New<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspBlock</a></li>
              <li><a href="admin/createRoom.jsp"><i class="icon fa fa-plus fa-2x"></i>Insert Room</a></li>
            </ul>
                <main class="content">
                  <div class="content_inner">
                      
                      
        <h1>BLOCK / COLLEGE</h1> 
        
        <h4>Total no. rooms: <c:out value="${roomCount}"/> Total no. of occupied rooms: <c:out value="${roomStudentCount}"/> </h4>
        
            <br><br>
            <h3>List of Rooms</h3>
       <div class="table-responsive">
            <table class="table" style="box-shadow: 8px 6px 6px #999">
            <tr style="background-color: #F37272;">
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
                <tr style="background-color: #f48585;">
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
                            <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit</button>
                        </form>
                    </td>
                    <td>
                        <form action="RoomDelete">
                            <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete</button>
                        </form>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${block.roomStatus==1}">
                                <form action="RoomDisable/disable">
                                    <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                                    <button type="submit" class="btn btn-warning">Disable</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <form action="RoomDisable/enable">
                                    <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                                    <button type="submit" class="btn btn-success">Enable</button>
                                </form>    
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
    </body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</html>
