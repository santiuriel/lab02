<%-- 
    Document   : listar
    Created on : 13/09/2023, 01:10:27
    Author     : estudiante
--%>

<%@page import="java.util.List"%>
<%@page import="model.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <body>
        
        <% List<Productos> productos = (List<Productos>) request.getAttribute("lista");%>
        <% String msj = (String) request.getAttribute("mensaje"); %>
        
        <%
            if (msj != null){
            out.println(msj);
            }
        %>
        
        <table border="1">
            <thead>
                <tr> 
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                </tr>
            
            </thead>
            <tbody>
                <% for(Productos p : productos)  {%>
                <tr>
                    <td><%= p.getId()%></td>
                    <td><%= p.getNombre()%></td>
                    <td><%= p.getPrecio()%></td>
                    <td><%= p.getCantidad()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <a href="index.html">Ir al inicio</a>
    </body>
</html>
