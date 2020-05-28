﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class Curso_TemaController : Controller
    {
        //
        // GET: /Curso_Tema/

        RepositorioCurso_Tema repoCurso_Tema = new RepositorioCurso_Tema();
        RepositorioTema repoTema = new RepositorioTema();
        RepositorioCurso repoCurso = new RepositorioCurso();

        public ActionResult Index()
        {
            return View(repoCurso_Tema.obtenerCursoTema());
        }

        //Metodo para borrar un video
        public ActionResult CursoTemaDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCurso_Tema.obtenerCursoTema(id));
        }

        [HttpPost]
        public ActionResult CursoTemaDelete(int id, FormCollection datos)
        {

            if (repoCurso_Tema.obtenerDependenciaCursoTema(id) == 1)
            {
                return RedirectToAction("ErrorDependencia","Tema");
            }
            else
            {
                repoCurso_Tema.eliminarCursoTema(id);
                return RedirectToAction("index");
            }     
        }

        public ActionResult CursoTemaDetails(int id)
        {
            return View(repoCurso_Tema.obtenerCursoTema(id));
        }

        public ActionResult CursoTemaEdit(int id)
        {
            ViewData["Curso"] = new SelectList(repoCurso.obtenerCurso(), "idCurso", "Descripcion"); 
            ViewData["Tema"] = new SelectList(repoTema.obtenerTema(), "idTema", "nombre"); 
            return View(repoCurso_Tema.obtenerCursoTema(id));
        }


        [HttpPost]
        public ActionResult CursoTemaEdit(int id, Curso_Tema datosCursoTema)
        {
            datosCursoTema.idCT = id;
            repoCurso_Tema.actualizarCursoTema(datosCursoTema);

            return RedirectToAction("Index");
        }

        public ActionResult CursoTemaCreate()
        {
            ViewData["Curso"] = new SelectList(repoCurso.obtenerCurso(), "idCurso", "Descripcion"); 
            ViewData["Tema"] = new SelectList(repoTema.obtenerTema(), "idTema", "nombre");          
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CursoTemaCreate(Curso_Tema datos)
        {
            repoCurso_Tema.insertarCursoTema(datos);
            return RedirectToAction("Index");
        }      
    }
}
