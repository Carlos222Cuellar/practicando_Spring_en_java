<%-- 

    Document   : login
    Created on : 08-17-2019, 02:46:21 PM
    Author     : cuellar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
         <link href="bootstrap/css/misestilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
    <div id="cuadro">
        <form>
            <p id="titulo">INICIAR SESION</p>
            <hr>
            <br/><br/>
            <label id="subtitulo1">NOMBRE DE USUARIO</label>
            <br/><br/>
            <input type="text" class="entrada">
            <br/><br/>
            <label id="subtitulo2">CONTRASEÑA</label>
            <br/><br/>
            <input type="password" class="entrada">
            <br/> <br/>
            <input type="submit" value="iniciar sesion" id="boton">
            
        </form>
        <br/>
        <p id="marca">RestBar</p>
    </div>
    </body>
</html>
