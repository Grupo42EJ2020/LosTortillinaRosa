<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Video</title>
     <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
       <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Social.css" rel="stylesheet" type="text/css" />
        <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Daniel Mata Lopez"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Social.css" rel="stylesheet" type="text/css" />
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
    <center>
        <h2 style="color: #FFFFFF">Contacto del creador
        </h2>
    <div>
        <center>
       
  <ul> 
    <li>
      <a href="https://www.facebook.com/juan.mata.16121471">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-facebook"></span>
      </a> 
    </li> 
    <li>
      <a href="https://www.instagram.com/juaanmata/?hl=es-la">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span class="fa fa-instagram"></span>
      </a> 
    </li>
  </ul>  
   </center>     
        </div>
 </center>  
</body>
</html>

