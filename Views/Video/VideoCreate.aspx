﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Video Agregar</title>
    <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Social.css" rel="stylesheet" type="text/css" />
</head>
<body>
       <div class="editor-label" style="color: #FFFFFF">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
 
        <fieldset>
            <legend>Informacion</legend>            
         
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Url) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Url) %>
                <%: Html.ValidationMessageFor(model => model.Url) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FechaPublicacion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.FechaPublicacion) %>
                <%: Html.ValidationMessageFor(model => model.FechaPublicacion) %>
            </div>
            
            <p>
                <input type="submit" value="Agregar" class="button" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>
</div>
</body>
</html>

