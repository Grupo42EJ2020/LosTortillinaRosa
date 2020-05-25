using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema : Curso_Tema
    {
        public List<Curso_Tema> obtenerCursoTema()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCurso_Tema;
            dtCurso_Tema = BaseHelper.ejecutarConsulta("sp_Curso_Tema_ConsultarTodo", CommandType.StoredProcedure);

            List<Curso_Tema> lstCurso_Tema = new List<Curso_Tema>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtCurso_Tema.Rows)
            {
                Curso_Tema videoAux = new Curso_Tema();
                videoAux.idCT = int.Parse(item["IdCT"].ToString());
                videoAux.idCurso = int.Parse(item["IdCurso"].ToString());
                videoAux.idTema = int.Parse(item["IdTema"].ToString());
                lstCurso_Tema.Add(videoAux);
            }

            return lstCurso_Tema;
        }


        public Curso_Tema obtenerCursoTema(int id)
        {
            DataTable dtVideo;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCTV", id));

            dtVideo = BaseHelper.ejecutarConsulta("sp_Curso_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            //convertir el dtVideo a un objeto Video
            Curso_Tema datosCursoTema = new Curso_Tema();

            if (dtVideo.Rows.Count > 0) //si lo encontro
            {
                datosCursoTema.idCT = int.Parse(dtVideo.Rows[0]["idCT"].ToString());
                datosCursoTema.idCurso = int.Parse(dtVideo.Rows[0]["idCuso"].ToString());
                datosCursoTema.idTema = int.Parse(dtVideo.Rows[0]["idTema"].ToString());

                return datosCursoTema;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void insertarCursoTema(Curso_Tema datosCursoTema)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCuso", datosCursoTema.idCurso));
            parametros.Add(new SqlParameter("@idTema", datosCursoTema.idTema));
            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCursoTema(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCT", id));
            BaseHelper.ejecutarSentencia("sp_Curso_Tema_Eliminar", CommandType.StoredProcedure, parametros);

        }

        public void actualizarCursoTema(Curso_Tema datosCursoTema)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCTV", datosCursoTema.idCT));
            parametros.Add(new SqlParameter("@idCT", datosCursoTema.idCurso));
            parametros.Add(new SqlParameter("@idVideo", datosCursoTema.idTema));
            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Actualizar", CommandType.StoredProcedure, parametros);
        }
    
    }
}