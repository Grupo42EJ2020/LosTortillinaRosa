<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Agregar</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Monica Lucero Acevedo Morales"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
   


</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
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
    </div>
</body>
</html>

