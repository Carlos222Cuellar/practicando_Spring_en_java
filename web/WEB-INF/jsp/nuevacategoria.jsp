<%-- 
    Document   : nuevacategoria
    Created on : 08-18-2019, 03:37:40 PM
    Author     : cuellar
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0,minimun-scale=1.0 ">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <title>Nueva Categoria</title>
    </head>
    <body>
        <div class="container mt-5 col-lg-5">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Nueva Categoria</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>IdCategoria</label> 
                        <input type="number" name="idcat" class="form-control">
                        <label>Nombre Categoria</label>
                        <input type="text" name="nombre" class="form-control">
                        <br/>
                        
                            <input type="submit" value="Agregar" class="btn btn-success">
                            <a href="categorias.html" class="btn btn-danger">Cancelar</a>
                       
                    </form>
                </div>
            </div>
        </div>
         <script src="bootstrap/js/jquery-3.3.1.slim.min.js" ></script>
    <script src="bootstrap/js/popper.min.js" ></script>
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    </body>
</html>
