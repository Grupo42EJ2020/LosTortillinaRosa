<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Video</title>
     <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
       <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="editor-label" style="color: #FFFFFF">
            <center><h1>Curso Tema Video</h1>
            </center>
</div>
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
                <%: Html.ActionLink("Editar", "CursoTemaVideoEdit", new { id = item.idCTV  })%> |
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

    <div>
  <ul> 
    <li>
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-facebook"></span>
      </a> 
    </li>
    <li>
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-twitter"></span>
      </a> 
    </li>
    <li>
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-instagram"></span>
      </a> 
    </li>
    <li>
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-linkedin"></span>
      </a> 
    </li>
  </ul>  



</body>
</html>

