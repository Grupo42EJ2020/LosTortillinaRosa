﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using MVCLaboratorio.Utilerias;
using System.Data;

namespace MVCLaboratorio.Models
{
    public class Curso_Tema_Video
    {
        public int idCTV { get; set; }
        public int idCT { get; set; }
        public int idVideo { get; set; }     
      
    }
}