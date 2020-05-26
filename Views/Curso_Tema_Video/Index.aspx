<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Video</title>
    <style type="text/css">   
        
        html
{
     background-color: #12191A;
    }        
        a:link, a:visited ,.button
{
    text-decoration:none;
  padding: 0 16px;
  border-radius: 2px;
  background-color: #018786;
  box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2),
    0 2px 2px 0 rgba(0, 0, 0, 0.14),
    0 1px 5px 0 rgba(0, 0, 0, 0.12);
  color: #fff;
  transition: background-color 15ms linear,
    box-shadow 280ms cubic-bezier(0.4, 0, 0.2, 1);
  height: 36px;
  line-height: 2.25rem;
  font-family: Roboto, sans-serif;
  font-size: 0.875rem;
  font-weight: 500;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}
a:hover, a:focus , .button:hover, .button:focus{
  box-shadow: 0 2px 4px -1px rgba(0, 0, 0, 0.2),
    0 4px 5px 0 rgba(0, 0, 0, 0.14),
    0 1px 10px 0 rgba(0, 0, 0, 0.12);
  background-color: #409fde;
}
a:active,.button:active {
  box-shadow: 0 5px 5px -3px rgba(0, 0, 0, 0.2),
    0 8px 10px 1px rgba(0, 0, 0, 0.14),
    0 3px 14px 2px rgba(0, 0, 0, 0.12);
  background-color: #2086c9;
}</style>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <table>
        <tr>
            
            <th>
                idCTV
            </th>
            <th>
                idCT
            </th>
            <th>
                idVideo
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
           
            <td>
                <%: item.idCTV %>
            </td>
            <td>
                <%: item.idCT %>
            </td>
            <td>
                <%: item.idVideo %>
            </td>
             <td>
                <%: Html.ActionLink("Editar", "CursoTemaVideoEdit", new { id = item.idCTV  })%> |
                <%: Html.ActionLink("Detalles", "CursoTemaVideoDetails", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Eliminar", "CursoTemaVideoDelete", new { id = item.idCTV })%>
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

