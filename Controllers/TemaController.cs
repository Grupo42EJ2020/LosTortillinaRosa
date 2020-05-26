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

        public ActionResult Index()
        {
            return View();
        }



        //Muestra la lista de Temas
        public ActionResult Temas()
        {
            //obtener la info de los Temas de la BD
            DataTable dtTemas;
            dtTemas = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarTodo", CommandType.StoredProcedure);

            List<Tema> lstTemas = new List<Tema>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtTemas.Rows)
            {
                Tema temaAux = new Tema();
                temaAux.IdTema = int.Parse(item["IdTema"].ToString());
                temaAux.Nombre = item["Nombre"].ToString();

                lstTemas.Add(temaAux);
            }

            return View(lstTemas);
        }


        //Metodo para borrar un video
        public ActionResult TemaDelete(int id)
        {
            //obtener los datos del tema para mostrarlo al usuario antes de borrarlo
            DataTable dtTema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            //convertir el dtVideo a un objeto Tema
            Tema datosTema = new Tema();

            if (dtTema.Rows.Count > 0) //si lo encontro
            {
                datosTema.IdTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                datosTema.Nombre = dtTema.Rows[0]["Nombre"].ToString();

                return View(datosTema);
            }
            else
            { //no lo encontro 
                return View("Error");
            }
        }



        [HttpPost]
        public ActionResult TemaDelete(int id, FormCollection datos)
        {
            //realizar el delete del registro
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            BaseHelper.ejecutarSentencia("sp_Tema_Eliminar", CommandType.StoredProcedure, parametros);

            return RedirectToAction("Temas");
        }

        public ActionResult TemaDetails(int id)
        {
            //obtener la info del video
            List<SqlParameter> parametros = new List<SqlParameter>();

            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            Tema infoTema = new Tema();

            if (dtTema.Rows.Count > 0) //lo encontro
            {
                infoTema.IdTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                infoTema.Nombre = dtTema.Rows[0]["Nombre"].ToString();

                return View(infoTema);
            }
            else
            {  //no lo encontro 
                return View("Error");
            }
        }

        public ActionResult TemaEdit(int id)
        {
            //obtener la info del video
            List<SqlParameter> parametros = new List<SqlParameter>();

            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            Tema infoTema = new Tema();

            if (dtTema.Rows.Count > 0) //lo encontro
            {
                infoTema.IdTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                infoTema.Nombre = dtTema.Rows[0]["Nombre"].ToString();

                return View(infoTema);
            }
            else
            {  //no lo encontro 
                return View("Error");
            }
        }


        [HttpPost]
        public ActionResult TemaEdit(int id, Tema datosTema)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));

            BaseHelper.ejecutarConsulta("sp_Tema_Actualizar", CommandType.StoredProcedure, parametros);

            return RedirectToAction("Temas");
        }

        [HttpPost]
        public ActionResult TemaCreate(string Nombre)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", Nombre));
            BaseHelper.ejecutarSentencia("sp_Tema_Insertar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Temas");
        }

        public ActionResult TemaCreate()
        {
            return View();
        }
    }
}
