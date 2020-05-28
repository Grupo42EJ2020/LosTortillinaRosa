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
        RepositorioEmpleado repoEmpleado = new RepositorioEmpleado();
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
            if (repoCurso.obtenerDependenciaCurso(id) == 1)
            {
                return RedirectToAction("ErrorDependencia", "Tema");
            }
            else
            {
                repoCurso.eliminarCurso(id);
                return RedirectToAction("index");
            }  
        }

        public ActionResult CursoDetails(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        public ActionResult CursoEdit(int id)
        {
            ViewData["Empleado"] = new SelectList(repoEmpleado.obtenerEmpleados(), "IdEmpleado", "Nombre"); 
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
            ViewData["Empleado"] = new SelectList(repoEmpleado.obtenerEmpleados(), "IdEmpleado", "Nombre");  
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
