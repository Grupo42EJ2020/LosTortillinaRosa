<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Agregar</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Datos</legend>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.descripcion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.descripcion) %>
                <%: Html.ValidationMessageFor(model => model.descripcion) %>
            </div>
            
            <div class="editor-label">
             Empleado:
            </div>
            <div class="editor-field">
              <%: Html.DropDownListFor(model => model.idEmpleado, (SelectList)ViewData["Empleado"], "Seleccionar")%>  
                <%: Html.ValidationMessageFor(model => model.idEmpleado) %>
            </div>
            
            <p>
                 <input type="submit" class="button" value="Agregar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

