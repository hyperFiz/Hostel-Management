<%-- 
    Document   : createCollege
    Created on : Dec 16, 2015, 11:50:27 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="../createKolej">
        College Name :
            <input type="text" placeholder="Enter College Name" name="kolejName">
            <br><br>
            
            <input type="submit" value="Create College">
        </form>
                    <button><a href="block.jsp">Cancel</a></button>

    </body>
</html>
