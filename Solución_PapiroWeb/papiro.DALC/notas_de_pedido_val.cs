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
    
    public partial class notas_de_pedido_val
    {
        public int Id_notas_de_pedido { get; set; }
        public Nullable<double> Folio { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public string Fecha_desp { get; set; }
        public string toma_pedido { get; set; }
        public string solicitado { get; set; }
        public string observaciones { get; set; }
        public string comuna_despacho { get; set; }
        public string direccion_despacho { get; set; }
        public Nullable<bool> retira_cliente { get; set; }
        public Nullable<double> monto { get; set; }
    }
}
