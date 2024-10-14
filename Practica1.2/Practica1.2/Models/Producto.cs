using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica1._2.Models
{
    public class Producto
    {
        public string ID { get; set; }

        public string Nombre { get; set; }

        public string Descripción { get; set; }

        public decimal Precio { get; set; }

        public int Stock { get; set; }

    }
}