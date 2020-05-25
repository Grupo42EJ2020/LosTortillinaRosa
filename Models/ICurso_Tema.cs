using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso_Tema
    {
        List<Curso_Tema> obtenerCursoTema();
        Curso_Tema obtenerCursoTema(int idCT);
        void insertarCursoTema(Curso_Tema datosCurso_Tema);
        void eliminarCursoTema(int idCT);
        void actualizarCursoTema(Curso_Tema datosCurso_Tema);
            
    }
}