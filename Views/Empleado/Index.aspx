<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Empleado</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
       <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
    <center>
        <h1>Empleados</h1> 
    </center>
</div>
     <table>
        <tr>
            <th></th>
            <th>
                IdEmpleado
            </th>
            <th>
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "EmpleadoEdit", new {  id=item.IdEmpleado }) %> |
                <%: Html.ActionLink("Detalles", "EmpleadoDetails", new { id = item.IdEmpleado })%> |
                <%: Html.ActionLink("Eliminar", "EmpleadoDelete", new { id = item.IdEmpleado })%>
            </td>
            <td>
                <%: item.IdEmpleado %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar Nuevo Empleado", "EmpleadoCreate") %>
             <%: Html.ActionLink("Regresar", "Index","Home")%>
    </p>
    
</body>
</html>
