﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Empleado Borrar</title>
         <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Erick Medellin Camarillo"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
     <h3>¿Seguro que quieres eliminarlo?</h3>
    <fieldset>
        <legend>Datos del Empleado</legend>
        
        <div class="display-label">IdEmpleado:</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        <br />
        <div class="display-label">Nombre:</div>
        <div class="display-field"><%: Model.Nombre %></div>
        <br />
        <div class="display-label">Direccion:</div>
        <div class="display-field"><%: Model.Direccion %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="button" value="Eliminar" class="button" /> |
		    <%: Html.ActionLink("Regresar", "Index") %>
        </p>
    <% } %>
</div>
</body>
</html>
