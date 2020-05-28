using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class TemaController : Controller
    {
        //
        // GET: /Tema/
        RepositorioCurso_Tema repoCursoTema = new RepositorioCurso_Tema();
        RepositorioTema repoTema = new RepositorioTema();
        public ActionResult Index()
        {
            return View();
        }



        //Muestra la lista de Temas
        public ActionResult Temas()
        {
            return View(repoTema.obtenerTema());
        }


        //Metodo para borrar un video
        public ActionResult TemaDelete(int id)
        {
            return View(repoTema.obtenerTema(id));
        }



        [HttpPost]
        public ActionResult TemaDelete(int id, FormCollection datos)
        {

            if (repoTema.obtenerDependenciaTema(id) == 1)
            {
                return RedirectToAction("ErrorDependencia");
            }
            else
            {
                repoTema.eliminarTema(id);
                return RedirectToAction("Temas");            
            }
            
        }

        public ActionResult TemaDetails(int id)
        {
            //obtener la info del video
            return View(repoTema.obtenerTema(id));
        }

        public ActionResult TemaEdit(int id)
        {
            //obtener la info del video
            return View(repoTema.obtenerTema(id));
        }


        [HttpPost]
        public ActionResult TemaEdit(int id, Tema datosTema)
        {
            datosTema.IdTema = id;
            repoTema.actualizarTema(datosTema);
            return RedirectToAction("Temas");
        }

        [HttpPost]
        public ActionResult TemaCreate(Tema datos)
        {
            repoTema.insertarTema(datos);
            return RedirectToAction("Temas");
        }

        public ActionResult TemaCreate()
        {
            return View();
        }
        public ActionResult ErrorDependencia()
        {
            return View();
        }
    }
}
