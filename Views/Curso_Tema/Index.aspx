<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CusoTemaIndex</title>
</head>
<body>
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
                <%: Html.ActionLink("Edit", "Edit", new {  id=item.idCT }) %> |
                <%: Html.ActionLink("Details", "Details", new {id=item.idCT })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.idCT })%>
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
        <%: Html.ActionLink("Create New", "CursoTemaCreate") %>
    </p>

</body>
</html>

