<%-- 
    Document   : productos
    Created on : 08-16-2019, 08:42:35 PM
    Author     : cuellar
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0,minimun-scale=1.0 ">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <title>Productos</title>
    </head>

    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.html">RestBar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Filtrar" aria-label="Filtrar">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Filtrar</button>
            </form>
            <li class="nav-item active">
                    <a class="nav-link" href="#">Iniciar Sesion <span class="sr-only">(current)</span></a>
                </li>
            <ul class="navbar-nav">
                 <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administrar
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="productos.html">Productos</a>
                        <a class="dropdown-item" href="categorias.html">Categorias</a>
                        <a class="dropdown-item" href="#">Ventas</a>
                        <a class="dropdown-item" href="#">Parametros</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Cerrar Sesion</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    Productos
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>IdProductos</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>IdCategotia</th>
                                <th>esPreparado</th>

                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.IdProductos}</td>
                                <td>${dato.nombre}</td>
                                <td>${dato.precio}</td>
                                <td>${dato.IdCategoria}</td>
                                <td>${dato.esPreparado}</td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="card-header bg-info text-black" >
                    <a class="btn btn-primary" href="nuevo.html" >Nuevo Producto</a>
                    <a class="btn btn-warning">Modificar Producto</a>
                    <a class="btn btn-danger">Eliminar Producto</a>
                    <a class="btn btn-danger"href="index.html">Regresar</a>
                </div>
            </div>
        </div>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js" ></script>
    <script src="bootstrap/js/popper.min.js" ></script>
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    </body>
</html>
