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
    
    public partial class venta_nota_guia
    {
        public int Id_ventas { get; set; }
        public string cliente { get; set; }
        public string rut { get; set; }
        public string area_negocio { get; set; }
        public string senal_advertencia { get; set; }
        public string comuna { get; set; }
        public string familia_1 { get; set; }
        public string familia_2 { get; set; }
        public string familia_3 { get; set; }
        public string tipo_1 { get; set; }
        public string medidas { get; set; }
        public string codigo_producto { get; set; }
        public string proveedor { get; set; }
        public string descripcion { get; set; }
        public Nullable<double> area_calc { get; set; }
        public Nullable<double> cantidad { get; set; }
        public Nullable<double> area_total { get; set; }
        public Nullable<double> venta_rollo { get; set; }
        public Nullable<double> unit_venta_m2 { get; set; }
        public Nullable<double> venta_neta { get; set; }
        public Nullable<double> venta_iva { get; set; }
        public Nullable<double> venta_total { get; set; }
        public string condicion { get; set; }
        public string forma_pago { get; set; }
        public string dias_pago { get; set; }
        public string ejecutivo { get; set; }
        public string observaciones { get; set; }
        public Nullable<double> precio_lista { get; set; }
        public Nullable<int> precio_cliente { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public Nullable<double> numero_pedido { get; set; }
        public Nullable<System.DateTime> fecha_act { get; set; }
        public Nullable<System.DateTime> hora { get; set; }
        public Nullable<double> descuento { get; set; }
        public Nullable<double> numero_folio { get; set; }
        public string toma_pedido { get; set; }
        public Nullable<double> ancho { get; set; }
        public Nullable<double> largo { get; set; }
        public string solicitado { get; set; }
        public Nullable<System.DateTime> Fecha_nota { get; set; }
        public Nullable<System.TimeSpan> Hora_nota { get; set; }
        public string Fecha_desp_nota { get; set; }
        public string toma_pedido_nota { get; set; }
        public string solicitado_nota { get; set; }
        public string observaciones_nota { get; set; }
        public string comuna_nota { get; set; }
        public string direccion_nota { get; set; }
    }
}
