<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Temas</title>
    <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Angel Pedraza Guerrero"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Social.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div class="editor-label" style="color: #FFFFFF">
            <center><h1>Temas</h1>
            </center>
</div>>  
    <table>
        <tr>
            <th></th>
            <th>
                IdTema
            </th>
            <th>
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "TemaEdit", new {  id=item.IdTema  }) %> |
                <%: Html.ActionLink("Detalles", "TemaDetails", new { id = item.IdTema })%> |
                <%: Html.ActionLink("Eliminar", "TemaDelete", new { id = item.IdTema })%>
            </td>
            <td>
                <%: item.IdTema %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Nuevo Tema", "TemaCreate")%>  
       <%: Html.ActionLink("Regresar", "Index","Home")%>
    </p>
</body>
</html>
