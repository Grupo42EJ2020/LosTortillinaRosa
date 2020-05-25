﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoTemaDelete</title>
</head>
<body>
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
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Regresar", "CursoTema") %>
        </p>
    <% } %>

</body>
</html>
