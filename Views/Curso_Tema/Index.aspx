<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Cuso Tema</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Curso Tema</h1>
    <br />
    <table>
        <tr>
            <th></th>
            <th>
                idCT
            </th>
            <th>
                idCurso
            </th>
            <th>
                idTema
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoTemaEdit", new {  id=item.idCT }) %> |
                <%: Html.ActionLink("Detalles", "CursoTemaDetails", new { id = item.idCT })%> |
                <%: Html.ActionLink("Eliminar", "CursoTemaDelete", new { id = item.idCT })%>
            </td>
            <td>
                <%: item.idCT %>
            </td>
            <td>
                <%: item.idCurso %>
            </td>
            <td>
                <%: item.idTema %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar", "CursoTemaCreate") %>
             <%: Html.ActionLink("Regresar", "Index","Home")%>
    </p>

</body>
</html>

