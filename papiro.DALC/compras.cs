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
    
    public partial class compras
    {
        public int Id_compras { get; set; }
        public Nullable<int> id_proveedor { get; set; }
        public string PAI { get; set; }
        public string rut { get; set; }
        public string nombre_proveedor { get; set; }
        public string tipo_compra { get; set; }
        public Nullable<int> folio_compra { get; set; }
        public Nullable<System.DateTime> eta_estimado { get; set; }
        public Nullable<System.DateTime> eta_real { get; set; }
        public Nullable<System.DateTime> fecha_ingreso { get; set; }
        public string tipo_moneda { get; set; }
        public Nullable<int> pos { get; set; }
        public string codigo { get; set; }
        public string descripcion { get; set; }
        public string cant_ped { get; set; }
        public string cant_pro { get; set; }
        public string pre_pro { get; set; }
        public string cant_inv { get; set; }
        public string pre_inv { get; set; }
        public string certifica { get; set; }
        public string obs { get; set; }
    }
}