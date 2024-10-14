using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica1._2.Models
{
    public class Pedido
    {
        public string ID { get; set; }

        public DateTime Fecha { get; set; }

        public decimal Total { get; set; }

        public string Estado { get; set; }
    }
}