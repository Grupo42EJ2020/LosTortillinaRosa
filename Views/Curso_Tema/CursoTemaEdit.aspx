<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Editar</title>
      <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Datos</legend>
                     
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCurso) %>
            </div>
            <div class="editor-field">
              <%: Html.DropDownListFor(model => model.idCurso, (SelectList)ViewData["Curso"],"Seleccionar") %>  
                <%: Html.ValidationMessageFor(model => model.idCurso) %>
            </div>
            
            <div class="editor-label">
                Tema
            </div>
            <div class="editor-field">
        <%: Html.DropDownListFor(model => model.idTema, (SelectList)ViewData["Tema"],"Seleccionar") %>   
                <%: Html.ValidationMessageFor(model => model.idTema) %>
            </div>
            
            <p>
                <input type="submit" value="Guardar" class="button" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>
    </div>
</body>
</html>

