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
        <title>Create College</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
           <%
        String UserSession = (String)session.getAttribute("userID");
        if(UserSession==null)
        {
            response.sendRedirect("/HostelManagement/index.html");
        }
    
    %>
        
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
      <h1>Create College</h1>
        
        <form method="get" action="../createKolej">
        College Name :
            <input type="text" placeholder="Enter College Name" name="kolejName" required="required">
            <br><br>
            
            <input class="btn btn-success" type="submit" value="Create College">
        </form>
      <a href="../BlockList"><button class="btn btn-danger">Cancel</button></a>
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


    </body>
</html>
