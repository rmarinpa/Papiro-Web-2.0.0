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
    
    public partial class cancelacion_fact_cen
    {
        public Nullable<System.DateTime> fecha { get; set; }
        public string factura { get; set; }
        public Nullable<double> monto { get; set; }
        public string operacion { get; set; }
        public string rut { get; set; }
        public string cliente { get; set; }
        public string banco { get; set; }
        public string serie { get; set; }
        public Nullable<System.DateTime> fecha_cheque { get; set; }
        public int Id_registro { get; set; }
    }
}
