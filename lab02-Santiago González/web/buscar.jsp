<%-- 
    Document   : buscar
    Created on : 13/09/2023, 00:32:15
    Author     : estudiante
--%>

<%@page import="model.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Buscar producto</h1>
        <form action="buscar.do" method="post">
            <input type="number" name="id">
            <input type="submit" value="Buscar">
        </form>
        
        <% Productos prodEncontrado = (Productos) request.getAttribute("productos");%>
        <% String msj = (String) request.getAttribute("mensaje");%>
        <%
            if (msj != null){
                out.println(msj);
            }
        %>
        
        <%
            if (prodEncontrado != null){
                out.println (prodEncontrado);
            }
        %>
        
        <br>
        <a href="index.html">Volver al inicio</a>
        
    </body>
</html>
