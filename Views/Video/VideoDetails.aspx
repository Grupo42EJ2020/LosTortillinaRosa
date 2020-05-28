﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Social.css" rel="stylesheet" type="text/css" />
    <title>Video Detalles</title>
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
    <fieldset>
        <legend>Informacion</legend>
        
        <div class="display-label">IdVideo</div>
        <div class="display-field"><%: Model.IdVideo %></div>
        </br>
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
         </br>
        <div class="display-label">Url</div>
        <div class="display-field"><%: Model.Url %></div>
         </br>
        <div class="display-label">FechaPublicacion</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.FechaPublicacion) %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "VideoEdit", new {  id=Model.IdVideo }) %> |
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>
</div>
</body>
</html>

