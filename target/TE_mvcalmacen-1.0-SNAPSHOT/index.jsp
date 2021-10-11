<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Almacen"%>
<%
    ArrayList<Almacen> lista=(ArrayList<Almacen>) session.getAttribute("listaal");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de productos</h1>
        <a href="MainController?op=nuevo">Nuevo producto </a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista!=null){
                for (Almacen item : lista){
               
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Está seguro de eliminar el registro?')">Eliminar</a></td>
            </tr>
            <%
                   }
                }
            %>
        </table>
    </body>
</html>

