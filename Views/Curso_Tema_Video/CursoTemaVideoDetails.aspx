<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">      
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
        <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Daniel Mata Lopez"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>Curso Tema Video Detalles</title>
</head>
<body>
        <div class="editor-label" style="color: #FFFFFF">
    <fieldset>
        <legend color="white" style="color: #FFFFFF">Detalles</legend>
           
        <div class="display-label" style="color: #FFFFFF">idCTV</div>
        <div class="display-field"><%: Model.idCTV %></div>
           <br />
        <div class="display-label" style="color: #FFFFFF">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
           <br />
        <div class="display-label" style="color: #FFFFFF">idVideo</div>
        <div class="display-field"><%: Model.idVideo %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "CursoTemaVideoEdit", new { id = Model.idCTV })%> 
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>
            </div>
</body>
</html>

