<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Empleado Agregar</title>
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Erick Medellin Camarillo"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>

     <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

       <fieldset>
      
            <legend style="color: #FFFFFF">Datos del Empleado</legend>
           </div> 
            <div class="editor-label" style="color: #FFFFFF">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="editor-label" style="color: #FFFFFF">
                <%: Html.LabelFor(model => model.Direccion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Direccion) %>
                <%: Html.ValidationMessageFor(model => model.Direccion) %>
            </div>
        </fieldset>
            <p>
                <input type="submit" class="button" value="Agregar" class="button"/>
            </p>


    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>
