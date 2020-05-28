using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class EmpleadoController : Controller
    {
        //
        // GET: /Empleado/

        RepositorioEmpleado repoEmpleado = new RepositorioEmpleado();

        //Metodo para mostrar todos los Empleados
        public ActionResult Index()
        {
            return View(repoEmpleado.obtenerEmpleados());
        }

        //Metodo para editar los datos de un empleado
        public ActionResult EmpleadoEdit(int id)
        {
            return View(repoEmpleado.obtenerEmpleado(id));
        }


        [HttpPost]
        public ActionResult EmpleadoEdit(int id, Empleado datosEmpleado)
        {
            datosEmpleado.IdEmpleado = id;
            repoEmpleado.actualizarEmpleado(datosEmpleado);

            return RedirectToAction("Index");
        }

        //Metodo para ver los detalles de un empleado
        public ActionResult EmpleadoDetails(int id)
        {
            return View(repoEmpleado.obtenerEmpleado(id));
        }

        //Metodo para borrar un empleado
        public ActionResult EmpleadoDelete(int id)
        {
            //obtener los datos para mostrarlo al usuario antes de borrarlo
            return View(repoEmpleado.obtenerEmpleado(id));
        }

        [HttpPost]
        public ActionResult EmpleadoDelete(int id, FormCollection datos)
        {
            if (repoEmpleado.obtenerDependenciaEmpleado(id) == 1)
            {
                return RedirectToAction("ErrorDependencia", "Tema");
            }
            else
            {
                repoEmpleado.eliminarEmpleado(id);
                return RedirectToAction("index");
            }   
        }

        //Metodo para ingresar un nuevo empleado
        public ActionResult EmpleadoCreate()
        {

            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult EmpleadoCreate(Empleado datos)
        {
            repoEmpleado.insertarEmpleado(datos);
            return RedirectToAction("Index");
        }

    }
}
