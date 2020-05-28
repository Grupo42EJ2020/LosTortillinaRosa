<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Borrar</title>
    <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Paulina Acevedo Morales"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
    <h3>¿Seguro que quieres eliminarlo?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
        
        <div class="display-label">idCurso</div>
        <div class="display-field"><%: Model.idCurso %></div>
        
        <div class="display-label">idTema</div>
        <div class="display-field"><%: Model.idTema %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Borrar" class="button" /> |
		    <%: Html.ActionLink("Regresar", "Index") %>
        </p>
    <% } %>
</div>
</body>
</html>

