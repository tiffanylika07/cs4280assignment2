<%-- 
    Document   : index
    Created on : Apr 7, 2017, 2:02:43 PM
    Author     : yuenyauli2
--%>

<%@page import="javabean.Category"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category -ABC BookStore</title>
    </head>
    <body>
    <!-- Header -->
    <jsp:include page="header.jsp"/>
    
    <!-- Main Menu -->
    <jsp:include page="menu.jsp"/>
   
    <div class="maincontent-area">
    <p style="color: red;">${errorString}</p>
 
   <div class="content_container">
    <div class="w-clearfix">
        <%
           List<Category> list = (List<Category>) request.getAttribute("categoryList");
           if(list!=null){
             for(Category c :list){
                out.println("<div class=\"_33tile f_left\">");
                out.println("<div class=\"hero-tile\">");

                out.println("<a href=\"./BookController?action=category&categoryID="+c.getID()+"\" class=\"w_inline_block tile_link\">");
                out.println("<div class=\"tile-text\">"+c.getCategoryName()+"<br></div>");
                out.println("<div class=\"tile-image\" style=\"background-image: url(./image/"+c.getImgSrc().trim()+");\">");
                out.println("<div class=\"tile-overlay\"></div>");
                out.println("</div></a></div></div>");

              }
           }
         %>
         
         
    </div>
    
    </div>       
    </div>
    <!-- Footer -->
    <jsp:include page="footer.jsp"/> 
    </body>
</html>
