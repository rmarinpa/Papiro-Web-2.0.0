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
    
    public partial class tabla_asociar
    {
        public int Id_asociar { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public string numero_pedido { get; set; }
        public string numero_documento { get; set; }
        public string tipo { get; set; }
        public string cliente { get; set; }
        public string corresponde_cliente { get; set; }
        public string monto { get; set; }
        public string corresponde_monto { get; set; }
        public string ejecutivo { get; set; }
    }
}
