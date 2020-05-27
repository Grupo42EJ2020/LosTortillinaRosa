<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server"  background= "radial-gradient(ellipse at center, #343436 0%,#1d1f20 100%);">
    <title>Curso Tema Video Editar</title>
     <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
        <div class="editor-label" style="color: #FFFFFF">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Informacion</legend>            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCT) %>
            </div>
            <div class="editor-field">
                 <%: Html.DropDownListFor(model => model.idCT, (SelectList)ViewData["CursoTema"],"Seleccionar") %>
                <%: Html.ValidationMessageFor(model => model.idCT) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idVideo) %>
            </div>
            <div class="editor-field">
                   <%: Html.DropDownListFor(model => model.idVideo, (SelectList)ViewData["videos"],"Seleccionar") %>                
                <%: Html.ValidationMessageFor(model => model.idVideo) %>
            </div>
            
            <p>
                <input type="submit"  class="button" value="Guardar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>
    </div>
</body>
</html>

