//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace papiro.DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class alerta_precios
    {
        public int Id_alertas { get; set; }
        public string usuario { get; set; }
        public string rut_cliente { get; set; }
        public string nom_cliente { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public Nullable<int> num_pedido { get; set; }
        public string codigo_producto { get; set; }
        public string nom_producto { get; set; }
        public Nullable<int> cantidad { get; set; }
        public Nullable<int> precio { get; set; }
        public Nullable<int> precio_min { get; set; }
        public Nullable<int> precio_max { get; set; }
        public Nullable<int> tipo { get; set; }
    }
}