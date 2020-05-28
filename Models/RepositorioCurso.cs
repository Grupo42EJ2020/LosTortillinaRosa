using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso : ICurso
    {


        public List<Curso> obtenerCurso()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCurso;
            dtCurso = BaseHelper.ejecutarConsulta("sp_Curso_ConsultarTodo", CommandType.StoredProcedure);

            List<Curso> lstCurso = new List<Curso>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtCurso.Rows)
            {
                Curso videoAux = new Curso();
                videoAux.idCurso = int.Parse(item["IdCurso"].ToString());
                videoAux.descripcion = item["descripcion"].ToString();
                videoAux.idEmpleado = int.Parse(item["IdEmpleado"].ToString());
                lstCurso.Add(videoAux);
            }

            return lstCurso;
        }


        public Curso obtenerCurso(int id)
        {
            DataTable dtVideo;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", id));

            dtVideo = BaseHelper.ejecutarConsulta("sp_Curso_ConsultarPorID", CommandType.StoredProcedure, parametros);

            //convertir el dtVideo a un objeto Video
            Curso datosCurso = new Curso();

            if (dtVideo.Rows.Count > 0) //si lo encontro
            {
                datosCurso.idCurso = int.Parse(dtVideo.Rows[0]["idCurso"].ToString());
                datosCurso.descripcion = dtVideo.Rows[0]["descripcion"].ToString();
                datosCurso.idEmpleado = int.Parse(dtVideo.Rows[0]["idEmpleado"].ToString());

                return datosCurso;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void insertarCurso(Curso datosCurso)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@descripcion", datosCurso.descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado", datosCurso.idEmpleado));
            BaseHelper.ejecutarConsulta("sp_Curso_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCurso(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", id));
            BaseHelper.ejecutarSentencia("sp_Curso_Eliminar", CommandType.StoredProcedure, parametros);

        }

        public void actualizarCurso(Curso datosCurso)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCurso.idCurso));
            parametros.Add(new SqlParameter("descripcion", datosCurso.descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado", datosCurso.idEmpleado));
            BaseHelper.ejecutarConsulta("sp_Curso_Actualizar", CommandType.StoredProcedure, parametros);
        }

        public int obtenerDependenciaCurso(int id)
        {
            DataTable dtVideo;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", id));

            dtVideo = BaseHelper.ejecutarConsulta("sp_CursoDependencia", CommandType.StoredProcedure, parametros);

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