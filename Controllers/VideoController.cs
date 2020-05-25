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
        public ActionResult Delete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection datos)
        {
            //realizar el delete del registro
            repoVideo.eliminarVideo(id);

            return RedirectToAction("Index");
        }

        public ActionResult Details(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        public ActionResult Edit(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }


        [HttpPost]
        public ActionResult Edit(int id, Video datosVideo)
        {
            datosVideo.IdVideo = id;
            repoVideo.actualizarVideo(datosVideo);

            return RedirectToAction("Index");
        }

        public ActionResult Create()
        {

            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult Create(Video datos)
        {
            repoVideo.insertarVideo(datos);
            return RedirectToAction("Index");
        }


    }
}
