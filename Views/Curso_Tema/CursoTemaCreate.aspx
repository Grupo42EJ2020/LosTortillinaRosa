<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoTemaCreate</title>
     <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCT) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCT) %>
                <%: Html.ValidationMessageFor(model => model.idCT) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCurso) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCurso) %>
                <%: Html.ValidationMessageFor(model => model.idCurso) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idTema) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idTema) %>
                <%: Html.ValidationMessageFor(model => model.idTema) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

