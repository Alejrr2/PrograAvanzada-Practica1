﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class AlaPastaDatabaseEntities : DbContext
    {
        public AlaPastaDatabaseEntities()
            : base("name=AlaPastaDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tAdmins> tAdmins { get; set; }
        public virtual DbSet<tCategorias> tCategorias { get; set; }
        public virtual DbSet<tClientes> tClientes { get; set; }
        public virtual DbSet<tDetalles> tDetalles { get; set; }
        public virtual DbSet<tDirecciones> tDirecciones { get; set; }
        public virtual DbSet<tEmpleados> tEmpleados { get; set; }
        public virtual DbSet<tMetodos> tMetodos { get; set; }
        public virtual DbSet<tPagos> tPagos { get; set; }
        public virtual DbSet<tPedidos> tPedidos { get; set; }
        public virtual DbSet<tProductos> tProductos { get; set; }
        public virtual DbSet<tPuestos> tPuestos { get; set; }
        public virtual DbSet<tRoles> tRoles { get; set; }
    }
}
