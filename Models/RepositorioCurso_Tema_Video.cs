using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema_Video:ICurso_Tema_Video 
    {

        public List<Curso_Tema_Video> obtenerCursoTemaVideo()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCurso_Tema_Videos;
            dtCurso_Tema_Videos = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarTodo", CommandType.StoredProcedure);

            List<Curso_Tema_Video> lstCurso_Tema_Videos = new List<Curso_Tema_Video>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtCurso_Tema_Videos.Rows)
            {
                Curso_Tema_Video videoAux = new Curso_Tema_Video();
                videoAux.idCTV = int.Parse(item["IdCTV"].ToString());
                videoAux.idCT =int.Parse( item["IdCT"].ToString());
                videoAux.idVideo = int.Parse(item["IdVideo"].ToString());
                lstCurso_Tema_Videos.Add(videoAux);
            }

            return lstCurso_Tema_Videos;
        }


        public Curso_Tema_Video obtenerCursoTemaVideo(int id)
        {
            DataTable dtVideo;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCTV", id));

            dtVideo = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarPorID", CommandType.StoredProcedure, parametros);

            //convertir el dtVideo a un objeto Video
            Curso_Tema_Video datosCursoTemaVideo = new Curso_Tema_Video();

            if (dtVideo.Rows.Count > 0) //si lo encontro
            {
                datosCursoTemaVideo.idCTV = int.Parse(dtVideo.Rows[0]["idCTV"].ToString());
                datosCursoTemaVideo.idCT =int.Parse( dtVideo.Rows[0]["idCT"].ToString());
                datosCursoTemaVideo.idVideo = int.Parse(dtVideo.Rows[0]["idVideo"].ToString());

                return datosCursoTemaVideo;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void insertarCursoTemaVideo(Curso_Tema_Video datosCursoTemaVideo)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCT", datosCursoTemaVideo.idCT));
            parametros.Add(new SqlParameter("@idVideo", datosCursoTemaVideo.idVideo));
            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCursoTemaVideo(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCTV", id));
            BaseHelper.ejecutarSentencia("sp_Curso_Tema_Video_Eliminar", CommandType.StoredProcedure, parametros);

        }

        public void actualizarCursoTemaVideo(Curso_Tema_Video datosCursoTemaVideo)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCTV", datosCursoTemaVideo.idCTV));
            parametros.Add(new SqlParameter("@idCT", datosCursoTemaVideo.idCT));
            parametros.Add(new SqlParameter("@idVideo", datosCursoTemaVideo.idVideo));
            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Actualizar", CommandType.StoredProcedure, parametros);

        }
    }
}