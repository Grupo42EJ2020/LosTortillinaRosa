using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/
        RepositorioVideo repoVideo = new RepositorioVideo();
        public ActionResult Index()
        {
            return View(repoVideo.obtenerVideos());
        }

        //Metodo para borrar un video
        public ActionResult VideoDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult VideoDelete(int id, FormCollection datos)
        {
            if (repoVideo.obtenerDependenciaVideo(id) == 1)
            {
                return RedirectToAction("ErrorDependencia","Tema");
            }
            else
            {
                repoVideo.eliminarVideo(id);
                return RedirectToAction("Index");
            }
        }

        public ActionResult VideoDetails(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        public ActionResult VideoEdit(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }


        [HttpPost]
        public ActionResult VideoEdit(int id, Video datosVideo)
        {
            datosVideo.IdVideo = id;
            repoVideo.actualizarVideo(datosVideo);

            return RedirectToAction("Index");
        }

        public ActionResult VideoCreate()
        {

            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult VideoCreate(Video datos)
        {
            repoVideo.insertarVideo(datos);
            return RedirectToAction("Index");
        }


    }
}
