<%-- 
    Document   : nuevo
    Created on : 08-15-2019, 08:50:51 AM
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
        <title>Nuevo Producto</title>
    </head>
    <body>
        <div class="container mt-5 col-lg-5">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Nuevo Producto</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>IdProducto</label> 
                        <input type="text" name="idprod" class="form-control">
                        <label>Nombre Producto</label>
                        <input type="text" name="nombre" class="form-control">
                        <label>Precio</label>
                        <input type="text" name="precio" class="form-control">
                        <label>Nombre Categoria</label>
                        <select class="form-control">
                             <c:forEach var="dato" items="${listarcategorias}">
                             
                                
                                 <option value="${dato.nombre}"> ${dato.nombre} </option>
                            
                        </c:forEach>
                        </select>
                        <label>esPreparado</label>
                        <br>
                        <input type="radio" name="espreparado" value="1" >Verdadero
                        <input type="radio" name="espreparado" value="0" >Falso
                        <br>
                      
                        
                    </form>
                </div>
                 <div class="card-footer bg-info">
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a href="productos.html" class="btn btn-danger">Cancelar</a>
                        </div> 
            </div>
        </div>
         <script src="bootstrap/js/jquery-3.3.1.slim.min.js" ></script>
    <script src="bootstrap/js/popper.min.js" ></script>
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    </body>
</html>
