using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public class Curso
    {
        public int idCurso { get; set; }
        public string descripcion { get; set; }
        public int idEmpleado { get; set; }
    }
}