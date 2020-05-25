using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCLaboratorio.Models;
using MVCLaboratorio.Utilerias;
using System.Data;

namespace MVCLaboratorio.Controllers
{
    public class Curso_Tema_VideoController : Controller
    {
        //
        // GET: /Curso_Tema_Video/
        RepositorioCurso_Tema_Video repoCurso = new RepositorioCurso_Tema_Video();
        RepositorioVideo repoVideo = new RepositorioVideo();
        public ActionResult Index()
        {           
            return View(repoCurso.obtenerCursoTemaVideo());
        }

        //Metodo para borrar un video
        public ActionResult CursoTemaVideoDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCurso.obtenerCursoTemaVideo(id));
        }

        [HttpPost]
        public ActionResult CursoTemaVideoDelete(int id, FormCollection datos)
        {
            //realizar el delete del registro
            repoCurso.eliminarCursoTemaVideo(id);
            return RedirectToAction("Index");
        }

        public ActionResult CursoTemaVideoDetails(int id)
        {
            return View(repoCurso.obtenerCursoTemaVideo (id));
        }

        public ActionResult CursoTemaVideoEdit(int id)
        {
            return View(repoCurso.obtenerCursoTemaVideo(id));
        }


        [HttpPost]
        public ActionResult CursoTemaVideoEdit(int id, Curso_Tema_Video datosCursoVideo)
        {
            datosCursoVideo.idCTV = id;
            repoCurso.actualizarCursoTemaVideo(datosCursoVideo);

            return RedirectToAction("Index");
        }
        
        public ActionResult CursoTemaVideoCreate()
        {
            ViewData["videos"] = new SelectList(repoVideo.obtenerVideos(), "IdVideo", "Nombre");            
            //mostrar interfaz para llenado
            return this.View();
        }

        [HttpPost]
        public ActionResult CursoTemaVideoCreate(Curso_Tema_Video datos)
        {
            repoCurso.insertarCursoTemaVideo(datos);
            return RedirectToAction("Index");
        }




    }
}
