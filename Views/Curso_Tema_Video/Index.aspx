<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                idCTV
            </th>
            <th>
                idCT
            </th>
            <th>
                idVideo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoTemaVideoEdit", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Detalles", "CursoTemaVideoDetails", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Eliminar", "CursoTemaVideoDelete", new { id = item.idCTV })%>
            </td>
            <td>
                <%: item.idCTV %>
            </td>
            <td>
                <%: item.idCT %>
            </td>
            <td>
                <%: item.idVideo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar", "CursoTemaVideoCreate")%>
          <%: Html.ActionLink("Regresar", "Index","Home")%>
    </p>

</body>
</html>

