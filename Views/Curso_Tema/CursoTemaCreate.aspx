<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema Agregar</title>
    <link href="../../Content/Pruebas.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

         <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Informacion Curso Tema<span>.</span></div>
		</div>
		<br>
		<div class="login">
			<div class="editor-label">
                <%: Html.LabelFor(model => model.idCurso) %>
            </div>
            <div class="editor-field">
                 <%: Html.DropDownListFor(model => model.idCurso, (SelectList)ViewData["Curso"],"Seleccionar") %>  
                <%: Html.ValidationMessageFor(model => model.idCurso) %>
            </div>
             <div class="editor-label">
               Tema:
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.idTema, (SelectList)ViewData["Tema"],"Seleccionar") %>   
                <%: Html.ValidationMessageFor(model => model.idTema) %>
            </div>
           
            <p>
                <input type="submit" class="button" value="Agregar" />
            </p>
		</div>   
    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

