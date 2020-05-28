<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Video Agregar</title>
      <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
       <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Daniel Mata Lopez"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta> 
</head>
<body>
        <div class="editor-label" style="color: #FFFFFF">
    <form id="form1" runat="server">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Informacion</legend>         
          
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCT) %>
            </div>
            <div class="editor-field">              
                <%: Html.DropDownListFor(model => model.idCT, (SelectList)ViewData["CursoTema"],"Seleccionar") %>                
                <%: Html.ValidationMessageFor(model => model.idCT) %>
            </div>           
            <div class="editor-label">
               Video:
            </div>
            <div class="editor-field">  
               <%: Html.DropDownListFor(model => model.idVideo, (SelectList)ViewData["videos"],"Seleccionar") %>    
               <%: Html.ValidationMessageFor(model => model.idVideo) %>              
            </div>
            <p>
                <input type="submit" class="button"value="Agregar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

    </form>
    </div>
</body>
</html>

