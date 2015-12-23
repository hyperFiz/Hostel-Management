<%-- 
    Document   : studentHome
    Created on : Dec 12, 2015, 11:52:27 AM
    Author     : on
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="database.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

  <title>Hostel Management System</title>
  
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
              <li><a href="editUser"><i class="icon fa fa-archive fa-2x"></i>Edit Profile</a></li>
            </ul>
                <main class="content">
                  <div class="content_inner">
        <h1>Student home</h1>

        <c:forEach items="${stdHomeList}" var="student" varStatus="loop">
            <c:choose>
                <c:when test="${student.test==1}">
                    <!-- Container -->
                            <div class="container">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
                                        <br><br><br>
                                    You Have request room As follow:
                                        <table>
                                            <tr>
                                                <td>Kolej</td>
                                                <td>:</td>
                                                <td><c:out value="${student.kolejName}"/></td>
                                            </tr>
                                            <tr>
                                                <td>Room Type</td>
                                                <td>:</td>
                                                <td>
                                                    <c:if test="${student.roomType==1}">
                                                          Single   
                                                    </c:if>
                                                    <c:if test="${student.roomType==2}">
                                                          Double   
                                                    </c:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Status</td>
                                                <td>:</td>
                                                <td><c:out value="${student.status}"/></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                </c:when>
                <c:when test="${student.test==2}">
                    <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
                                <br><br><br>
                                    <div  class="panel panel-info">
                                        <div  style="background-color: #F37272;"class="panel-heading">
                                          <h3 style="color: #FFFFFF;" class="panel-title">Room Details</h3>
                                        </div>
                                        <div class="panel-body">
                                          <div class="row">
                                            <div align="center">
                                              <table cellpadding="6" cellspacing="5" width="50%">
                                                 <tr>
                                                     <td>College</td>
                                                     <td>:<c:out value="${student.kolejName}"/></td>
                                                 </tr> 
                                                 <tr>
                                                     <td>Block</td>
                                                     <td>:<c:out value="${student.blockName}"/></td>
                                                 </tr> 
                                                 <tr>
                                                     <td>Room Number</td>
                                                     <td>:<c:out value="${student.roomNo}"/></td>
                                                 </tr>
                                                 <tr>
                                                     <td>Room Type</td>
                                                     <td>
                                                         : 
                                                         <c:if test="${student.roomType==1}">
                                                          Single   
                                                         </c:if>
                                                         <c:if test="${student.roomType==2}">
                                                          Double   
                                                         </c:if> 
                                                     </td>
                                                 </tr>
                                                  <tr>
                                                     <td>Status</td>
                                                     <td>: Approved</td>
                                                 </tr> 
                                             </table>
                                            </div>  
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${roomList}" var="room">
                        <c:if test="${room.kolejID == student.kolejID}">
                    <form method="get" action="ApplyRoom">
                            <div class="panel panel-info">
                              <div style="background-color: #F37272;" class="panel-heading">
                                <h3 style="color: #FFFFFF;" class="panel-title"><c:out value="${student.kolejName}"/></h3>
                              </div>
                              <div class="panel-body">
                                <div class="row">
                                    <div align="center">
                                        <table cellpadding="6" cellspacing="5" width="50%">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                      <label>Room Available</label>
                                                    </td>
                                                    <td>:
                                         
                                                        <c:out value="${room.available}"/> /<c:out value="${room.all}"/>
                    
                                                       <input type="hidden" name="kolejID" value="<c:out value="${student.kolejID}"/>"/>
                                                  </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Room Type</label>
                                                    </td>
                                                    <td> :
                                                         <select  name="rt">
                                                            <option value="1">Single</option>
                                                            <option value="2">Double</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                              </div>
                                  <div class="panel-footer" align="center">
                                      <input type="hidden" name="userID" value="<%=UserSession%>">
                                      <input type="submit" value="Apply" <c:if test="${room.available==0}">disabled="disabled"</c:if> class="btn btn-success">
                                  </div>
                            </div>
                        </form>
                        </c:if>
                    </c:forEach>              
                </c:otherwise>
            </c:choose>
        </c:forEach>
                   </div>
            </main>
    </div>
    </body>
</html>
