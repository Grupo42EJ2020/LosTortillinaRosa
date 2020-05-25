<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoTemaVideoCreate</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Informacion</legend>         
          
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCT) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCT) %>
                <%: Html.ValidationMessageFor(model => model.idCT) %>
            </div>
            
            <div class="editor-label">
               Video:
            </div>
            <div class="editor-field">               
                <%: Html.ValidationMessageFor(model => model.idVideo) %>                
               <%: Html.DropDownListFor(model => model.idVideo, (SelectList)ViewData["videos"],"Seleccionar") %>                
            </div>
            <p>
                <input type="submit" class="button" value="Agregar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

    </form>

</body>
</html>

