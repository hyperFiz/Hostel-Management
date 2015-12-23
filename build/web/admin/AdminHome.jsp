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
            response.sendRedirect("/HostelManagement/index.html");
        }
    
    %>
    <body>
        <div class="page">
            <span class="menu_toggle">
              <i class="menu_open fa fa-bars fa-lg"></i>
              <i class="menu_close fa fa-times fa-lg"></i>
            </span>
            <ul class="menu_items">
              <li><a href="Logout"><i class="icon fa fa-sign-out fa-2x"></i>Logout</a></li>
              <li><a href="BlockList"><i class="icon fa fa-list-alt fa-2x"></i>Colleges, Block <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp& Rooms List</a></li>
            </ul>
                <main class="content">
                  <div class="content_inner">
                    <h1>Requested Room List</h1>
                    <div class="table-responsive">
                          <table class="table" style="box-shadow: 8px 6px 6px #999">

                          <tr style="background-color: #F37272;">
                              <td>Student ID</td>
                              <td>Student Name</td>
                              <td>College Request</td>
                              <td>Room Type Request</td>
                              <td>Status</td>
                              <td colspan="2">Option</td>
                          </tr>

                          <c:forEach items="${appList}" var="app" varStatus="loop">

                                        <tr style="background-color: #f48585;">
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
                                                <form method="get" action="Approve">
                                                    <input type="hidden" name="requestID" value="<c:out value="${app.requestID}"/>">
                                                    <button type="submit" value="Approve" class="btn btn-success"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Approve</button>
                                                </form>
                                            </td>
                                            <td>
                                                <form method="get" action="NotApprove">
                                                    <input type="hidden" name="requestID" value="<c:out value="${app.requestID}"/>">
                                                    <button type="submit" value="Not Approve" class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Not Approve</button>
                                                </form>
                                            </td>
                                        </tr>

                          </c:forEach>

                          </table>
                        </div>
                    </div>
                </main>
</div>
        
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    </body>
</html>
