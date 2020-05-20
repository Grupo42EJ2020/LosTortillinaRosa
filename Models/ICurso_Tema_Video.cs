using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso_Tema_Video
    {
        List<Curso_Tema_Video> obtenerCursoTemaVideo();
        Curso_Tema_Video obtenerCursoTemaVideo(int idVideo);
        void insertarCursoTemaVideo(Curso_Tema_Video datosCurso_Tema_Video);
        void eliminarCursoTemaVideo(int idCTV);
        void actualizarCursoTemaVideo(Curso_Tema_Video datosCurso_Tema_Video);
    }
}