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
    
    public partial class retiro_documentos
    {
        public int Id_retiro { get; set; }
        public Nullable<int> folio { get; set; }
        public string cliente { get; set; }
        public string rut { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public string usuario { get; set; }
        public string factura { get; set; }
        public Nullable<int> monto { get; set; }
        public string contacto { get; set; }
        public string horario { get; set; }
        public string direccion { get; set; }
        public string comuna { get; set; }
    }
}
