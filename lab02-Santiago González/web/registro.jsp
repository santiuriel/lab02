<%-- 
    Document   : registro
    Created on : 05/09/2023, 16:31:39
    Author     : estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Hola! Proporciona datos del producto</h1>
        <form action="registrar.do" method="post">
            <input type="number" name="id"> ID <br>
            <input type="text" name="nombre"> Nombre <br>
            <input type="number" name="precio"> Precio <br>
            <input type="number" name="cantidad"> Cantidad <br> 
            <input type="submit" value="Registrar"> <br> 
        </form>
    </body>
</html>
