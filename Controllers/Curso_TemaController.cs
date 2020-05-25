using System;
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

        RepositorioCurso_Tema repoCurso = new RepositorioCurso_Tema();

        public ActionResult Index()
        {
            return View(repoCurso.obtenerCursoTema());
        }

        //Metodo para borrar un video
        public ActionResult CursoTemaDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCurso.obtenerCursoTema(id));
        }

        [HttpPost]
        public ActionResult CursoTemaDelete(int id, FormCollection datos)
        {
            //realizar el delete del registro
            repoCurso.eliminarCursoTema(id);
            return RedirectToAction("Index");
        }

        public ActionResult CursoTemaDetails(int id)
        {
            return View(repoCurso.obtenerCursoTema(id));
        }

        public ActionResult CursoTemaEdit(int id)
        {
            return View(repoCurso.obtenerCursoTema(id));
        }


        [HttpPost]
        public ActionResult CursoTemaEdit(int id, Curso_Tema_Video datosCurso)
        {
            datosCurso.idCTV = id;
            repoCurso.actualizarCursoTema(datosCursoTema);

            return RedirectToAction("Index");
        }

        public ActionResult CursoTemaCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CursoTemaVideoCreate(Curso_Tema datos)
        {
            repoCurso.insertarCursoTema(datos);
            return RedirectToAction("Index");
        }


        public Curso_Tema datosCursoTema { get; set; }
    }
}
