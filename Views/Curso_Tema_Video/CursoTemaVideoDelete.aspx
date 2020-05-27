﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Video Borrar</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
           <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
 <div class="editor-label" style="color: #FFFFFF">
    <h3>¿Seguro que quieres eliminarlo?</h3>
    <fieldset>
        <legend>Informacion</legend>
        
        <div class="display-label">idCTV</div>
        <div class="display-field"><%: Model.idCTV %></div>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
        
        <div class="display-label">idVideo</div>
        <div class="display-field"><%: Model.idVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="button" value="Eliminar" /> |
		    <%: Html.ActionLink("Regresar", "Index") %>
        </p>
    <% } %>
</div>
</body>
</html>

