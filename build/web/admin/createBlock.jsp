<%-- 
    Document   : createBlock
    Created on : Dec 16, 2015, 11:50:42 PM
    Author     : USER
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
    <body>
        <form method="get" action="../addBlock">
            College Name : 
            <select name="kolejID">
                <%
                    String UserSession = (String)session.getAttribute("userID");
                        if(UserSession==null)
                        {
                            response.sendRedirect("../index.html");
                        }
                %>
                
                <c:forEach items="${kolejList}" var="kolej" varStatus="loop">
               
                    <option value="<c:out value="${kolej.kolejID}"/>">
                        <c:out value="${kolej.kolejName}"/>
                    </option>
                
                </c:forEach>
                
                    
            </select><br><br>
            Block Name :
            <input type="text" placeholder="Enter Block Name" name="blockName">
            <br><br>
            
            <input type="submit" value="creat Block">
        </form>
            <button><a href="admin/block.jsp">Cancel</a></button>
    </body>
</html>
