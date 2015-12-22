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
            response.sendRedirect("../index.html");
        }

%>
    <body>
        <%@include file="StuHeader.jsp" %>
        <br><br><br><br><br>
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
                                    <div class="panel panel-info">
                                        <div class="panel-heading">
                                          <h3 class="panel-title">Room Details</h3>
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
                    <form method="get" action="../ApplyRoom">
                            <div class="panel panel-info">
                              <div class="panel-heading">
                                <h3 class="panel-title">Apply Room</h3>
                              </div>
                              <div class="panel-body">
                                <div class="row">
                                    <div align="center">
                                        <table cellpadding="6" cellspacing="5" width="50%">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                      <label>Kolej</label>
                                                    </td>
                                                  <td>:
                                                       <select name="kolejID" >
                                                       
                                                           <option value="<c:out value="${student.kolejID}"/>"><c:out value="${student.kolejName}"/></option>

                                                      </select>
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
                                      <input type="submit" value="Apply" class="btn bg-primary">
                                  </div>
                            </div>
                        </form>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </body>
</html>
