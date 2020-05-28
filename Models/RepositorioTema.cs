using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioTema:ITema 
    {

        public List<Tema> obtenerTema()
        {
            //implementar funcionalidad
            //obtener la info de los temas de la BD
            DataTable dtTemas;
            dtTemas = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarTodo", CommandType.StoredProcedure);

            List<Tema> lstTemas = new List<Tema>();

            //convertir el DataTable a una lista de temas List<Temas>
            foreach (DataRow item in dtTemas.Rows)
            {
                Tema temaAux = new Tema();
                temaAux.IdTema = int.Parse(item["IdTema"].ToString());
                temaAux.Nombre = item["Nombre"].ToString();

                lstTemas.Add(temaAux);
            }

            return lstTemas;
        }


        public Tema obtenerTema(int id)
        {
            DataTable dtTema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            //convertir el dtTema a un objeto Tema
            Tema datosTema = new Tema();

            if (dtTema.Rows.Count > 0) //si lo encontro
            {
                datosTema.IdTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                datosTema.Nombre = dtTema.Rows[0]["Nombre"].ToString();

                return datosTema;
            }
            else
            { //no lo encontro 
                return null;
            }
        }


        public void insertarTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));
            BaseHelper.ejecutarSentencia("sp_Tema_Insertar", CommandType.StoredProcedure, parametros);
        }


        public void eliminarTema(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));         
            BaseHelper.ejecutarSentencia("sp_Tema_Eliminar", CommandType.StoredProcedure, parametros);  

        }

        public void actualizarTema(Tema datosTema)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", datosTema.IdTema));
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));

            BaseHelper.ejecutarConsulta("sp_Tema_Actualizar", CommandType.StoredProcedure, parametros);

        }

        public int obtenerDependenciaTema(int id)
        {
            DataTable dtVideo;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            dtVideo = BaseHelper.ejecutarConsulta("sp_TemaDependencia", CommandType.StoredProcedure, parametros);

            if (dtVideo.Rows.Count > 0) //si lo encontro
            {                
                return 1;
            }
            else
            { //no lo encontro 
                return 0;
            }
        }



    }
}