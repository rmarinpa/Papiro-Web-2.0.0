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
    
    public partial class facturas
    {
        public int Id_facturas { get; set; }
        public string rut { get; set; }
        public string razon_social { get; set; }
        public Nullable<int> factura { get; set; }
        public Nullable<int> area_negocio { get; set; }
        public string ejecutivo { get; set; }
        public Nullable<System.DateTime> fecha_factura { get; set; }
        public Nullable<System.DateTime> vencimiento { get; set; }
        public string ano_mes { get; set; }
        public Nullable<int> total_facturado { get; set; }
        public Nullable<int> pagado { get; set; }
        public Nullable<int> cheques_en_cartera { get; set; }
        public Nullable<int> diferencia { get; set; }
        public Nullable<int> deuda_sin_documentar { get; set; }
        public Nullable<int> deuda_sin_doc_ven { get; set; }
        public Nullable<int> dias { get; set; }
        public Nullable<int> deuda_total { get; set; }
        public Nullable<System.DateTime> fecha_cheques { get; set; }
        public Nullable<int> venc_7 { get; set; }
        public Nullable<int> venc_15 { get; set; }
        public Nullable<int> venc_21 { get; set; }
        public Nullable<int> venc_30 { get; set; }
        public Nullable<int> an1 { get; set; }
        public Nullable<int> an2 { get; set; }
        public Nullable<int> an3 { get; set; }
        public Nullable<int> an4 { get; set; }
        public string estado { get; set; }
        public string existe { get; set; }
        public string existe2 { get; set; }
        public string existe3 { get; set; }
        public Nullable<int> ano { get; set; }
        public Nullable<int> mes { get; set; }
        public Nullable<int> dia { get; set; }
        public string existe4 { get; set; }
        public string senal_advertencia { get; set; }
    }
}
