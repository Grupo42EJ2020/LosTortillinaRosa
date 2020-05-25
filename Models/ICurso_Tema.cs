using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso_Tema
    {
        List<ICurso_Tema> obtenerICurso_Tema();
        Curso_Tema obtenerICurso_Tema(int idCT);
        void insertarICurso_Tema(Curso_Tema datosCurso_Tema);
        void eliminarICurso_Tema(int idCTV);
        void actualizarICurso_Tema(Curso_Tema datosCurso_Tema);
    }
}