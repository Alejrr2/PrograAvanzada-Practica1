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
    
    public partial class tProductos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tProductos()
        {
            this.tDetalles = new HashSet<tDetalles>();
        }
    
        public int IdProducto { get; set; }
        public string NombreProducto { get; set; }
        public string Descripción { get; set; }
        public decimal Precio { get; set; }
        public int ConsecutivoCat { get; set; }
        public int Stock { get; set; }
        public string ImagenProd { get; set; }
        public bool ActivoProd { get; set; }
    
        public virtual tCategorias tCategorias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tDetalles> tDetalles { get; set; }
    }
}
