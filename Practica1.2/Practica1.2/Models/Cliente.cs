using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica1._2.Models
{
    public class Cliente
    {
        public int Consecutivo { get; set; }
        public string ID { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string Correo { get; set; }

        public string Telefono { get; set; }

        public string Contraseña { get; set; }

        public string ContraseñaAnterior { get; set; }
   
        public string ConfirmarContraseña { get; set; }

        public string Estado { get; set; }

        public string ConsecutivoRol {  get; set; } 

    }
}