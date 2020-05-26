using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class CursoController : Controller
    {
        //
        // GET: /Curso/

        RepositorioCurso repoCurso = new RepositorioCurso();

        public ActionResult Index()
        {
            return View(repoCurso.obtenerCurso());
        }

        //Metodo para borrar un video
        public ActionResult CursoDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCurso.obtenerCurso(id));
        }

        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection datos)
        {
            //realizar el delete del registro
            repoCurso.eliminarCurso(id);
            return RedirectToAction("Index");
        }

        public ActionResult CursoDetails(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        public ActionResult CursoEdit(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }


        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datosCurso)
        {
            datosCurso.idCurso = id;
            repoCurso.actualizarCurso(datosCurso);

            return RedirectToAction("Index");
        }

        public ActionResult CursoCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CursoCreate(Curso datos)
        {
            repoCurso.insertarCurso(datos);
            return RedirectToAction("Index");
        }
    }
}
