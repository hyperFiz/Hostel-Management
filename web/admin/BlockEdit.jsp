<%-- 
    Document   : BlockEdit
    Created on : Dec 22, 2015, 8:51:12 AM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Block</title>
    </head>
    <body>
        <div class="page">
  <span class="menu_toggle">
    <i class="menu_open fa fa-bars fa-lg"></i>
    <i class="menu_close fa fa-times fa-lg"></i>
  </span>
  <ul class="menu_items">
    <li><a href="../Logout"><i class="icon fa fa-power-off fa-2x"></i>Logout</a></li>
    <li><a href="BlockList"><i class="icon fa fa-list-alt fa-2x"></i>Colleges, Block <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp& Rooms List</a></li>
  </ul>
  <main class="content">
    <div class="content_inner">
        
       <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("/HostelManagement/index.html");
        }
    
    %>
        <h1>Edit Block</h1>
        <form action="BlockEdit/edit">
            <c:forEach items="${blockList}" var="block">
                <div>
                    RoomId: <c:out value="${block.roomID}"/>
                    <input type="hidden" name="roomID" value="<c:out value="${block.roomID}"/>">
                </div>
                <div>RoomNo: 
                    <input type="text" name="roomNo" value="<c:out value="${block.roomNo}"/>"
                </div>
            <div>RoomType: 
                <select name="roomType">
                    <option value="1" <c:if test="${block.roomType==1}">selected="selected"</c:if>>
                        Single
                    </option>
                    <option value="2" <c:if test="${block.roomType==2}">selected="selected"</c:if>>
                        Double
                    </option>
                </select>
            </div>
            <div>BlockKolej:
                <select name="blockID">
                <c:forEach items="${bkList}" var="bk" varStatus="loop">
                    <option value="<c:out value="${bk.blockID}"/>"<c:if test="${bk.blockID == block.blockID}">selected="selected"</c:if>>
                        <c:out value="${bk.blockName}"/>, <c:out value="${bk.kolejName}"/>
                    </option>
                </c:forEach>
                </select>
            </div>
            </c:forEach>
            <button class="btn btn-success" type="submit">Edit</button>
            <a href="BlockList"><button class="btn btn-danger">Cancel</button></a>
        </form>
    </body>
</html>
