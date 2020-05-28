<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Menú</title>
	<!--iOS -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../Content/normalize.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/main.css" rel="stylesheet" type="text/css" />
   <script src="../../Scripts/modernizr-2.6.2.min.js" type="text/javascript"></script>
    <link href="../../Content/StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body class="demo">
		<div id="loader-wrapper">
			<div id="loader"></div>
			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
		</div>	  		
        <div class="container">
 <h1>
    <a href="#menu">Opciones</a>
 </h1>    
<div class="popover" id="menu">
 <div class = 'content'>
  <a href="#" class="close"></a>
   <div class = 'nav'>
    <ul class = 'nav_list'>
	  <li> <a href="/Curso_Tema_Video/Index">Curso Tema Video</a></li>
		<li><a href="/Curso_Tema/Index">Curso Tema</a></li>
        <li> <a href="/Tema/Temas">Tema</a></li>
        <li> <a href="/Empleado/Index">Empleados</a></li>   
        <li><a href="/Curso/Index">Curso</a></li>      
	</ul>
  </div>
 </div>
 </div>
 </div> 
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"  ></script>        
        <script type="text/javascript">            window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>') </script>
        <script src="../../Scripts/main.js" type="text/javascript"></script> <br />  
</body>
</html>