//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Practica1._2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tClientes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tClientes()
        {
            this.tPedidos = new HashSet<tPedidos>();
        }
    
        public int Consecutivo { get; set; }
        public string IdCliente { get; set; }
        public string NombreCliente { get; set; }
        public string ApellidoCliente { get; set; }
        public string CorreoCliente { get; set; }
        public string Contraseña { get; set; }
        public string TelCliente { get; set; }
        public int ConsecutivoDirec { get; set; }
        public int ConsecutivoRol { get; set; }
        public System.DateTime FechaRegistro { get; set; }
        public bool ActivoCliente { get; set; }
    
        public virtual tDirecciones tDirecciones { get; set; }
        public virtual tRoles tRoles { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tPedidos> tPedidos { get; set; }
    }
}
