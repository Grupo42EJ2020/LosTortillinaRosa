﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Empleado Detalles</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
    <p>
        <%: Html.ActionLink("Editar", "EmpleadoEdit", new { id=Model.IdEmpleado }) %> |
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>

</body>
</html>
