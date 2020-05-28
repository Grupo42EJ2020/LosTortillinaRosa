using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MVCLaboratorio.Models
{
    public class Curso_Tema
    {
        public int idCT { get; set; }     
        public int idCurso { get; set; }       
        public int idTema { get; set; } 
    }
}