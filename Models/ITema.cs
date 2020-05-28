using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ITema
    {
        List<Tema> obtenerTema();
        Tema obtenerTema(int id);
        void insertarTema(Tema datosTema);
        void eliminarTema(int id);
        void actualizarTema(Tema datosTema);
    }
}