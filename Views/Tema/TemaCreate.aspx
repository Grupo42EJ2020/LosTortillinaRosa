<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Tema Agregar</title>
    <link href="../../Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
  
  
  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">   
            <br>
		<div class="login">
             <div class="editor-Mensaje">
			Informacion Tema
		</div>
            <div class="editor-label" style="color: #FFFFFF">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <p>
                <input type="submit" value="Agregar" class="boton" />
                
            </p>
            <div class="boton">
              <%: Html.ActionLink("Regresar", "Temas") %>
            </div>
                    
            
</div>

    <% } %>

  
</body>
</html>
