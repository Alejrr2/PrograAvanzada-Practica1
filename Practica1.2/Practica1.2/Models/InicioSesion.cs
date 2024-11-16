using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practica1._2.Models
{
    public partial class InicioSesion_Result
    {
        public long Consecutivo { get; set; }
        public string Identificacion { get; set; }
        public string Nombre { get; set; }
        public string CorreoElectronico { get; set; }
        public string Contrasenna { get; set; }
        public int ConsecutivoRol { get; set; }
        public bool Activo { get; set; }
        public string NombreRol { get; set; }
        public virtual DbSet<tClientes> tClientes { get; set; }
        public virtual DbSet<tAdmins> tAdmins { get; set; }
    }
}
