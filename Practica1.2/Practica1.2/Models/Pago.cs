using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica1._2.Models
{
    public class Pago
    {
        public string ID { get; set; }

        public decimal Monto { get; set; }

        public DateTime FechaPago { get; set; }
    }
}