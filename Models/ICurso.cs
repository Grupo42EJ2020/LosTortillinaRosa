﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
        List<Curso> obtenerCurso();
        Curso obtenerCurso(int idCT);
        void insertarCurso(Curso datosCurso);
        void eliminarCurso(int idCurso);
        void actualizarCurso(Curso datosCurso);
        int obtenerDependenciaCurso(int id);
    }
}