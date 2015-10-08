<%-- 
    Document   : newjsp
    Created on : 2015-10-8, 10:52:05
    Author     : zxm
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <c:forEach var="i" begin="1" end="10" step="1"> ${i} <br /></c:forEach>
    </body>
</html>
