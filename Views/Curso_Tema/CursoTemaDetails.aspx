<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoTemaDetails</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <fieldset>
        <legend>Informacion </legend>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
        
        <div class="display-label">idCurso</div>
        <div class="display-field"><%: Model.idCurso %></div>
        
        <div class="display-label">idTema</div>
        <div class="display-field"><%: Model.idTema %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "CursoTemaEdit", new { id=Model.idCT}) %> |
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>

</body>
</html>

