<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso</title>
      <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
            <center><h1>Curso</h1>
            </center>
</div>    
    <table>
        <tr>
            <th></th>
            <th>
                idCurso
            </th>
            <th>
                descripcion
            </th>
            <th>
                idEmpleado
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoEdit", new {  id=item.idCurso  }) %> |
                <%: Html.ActionLink("Detalles", "CursoDetails", new { id=item.idCurso })%> |
                <%: Html.ActionLink("Eliminar", "CursoDelete", new {  id=item.idCurso})%>
            </td>
            <td>
                <%: item.idCurso %>
            </td>
            <td>
                <%: item.descripcion %>
            </td>
            <td>
                <%: item.idEmpleado %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear nuevo", "CursoCreate") %>
             <%: Html.ActionLink("Regresar", "Index","Home")%>
    </p>

</body>
</html>

