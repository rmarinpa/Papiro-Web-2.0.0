﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class const113_papiroEntities : DbContext
    {
        public const113_papiroEntities()
            : base("name=const113_papiroEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<alerta_precios> alerta_precios { get; set; }
        public DbSet<autorizacion_otros> autorizacion_otros { get; set; }
        public DbSet<bloqueo> bloqueo { get; set; }
        public DbSet<cartera> cartera { get; set; }
        public DbSet<categoria> categoria { get; set; }
        public DbSet<clientes> clientes { get; set; }
        public DbSet<codigos> codigos { get; set; }
        public DbSet<codigos3> codigos3 { get; set; }
        public DbSet<codigos4> codigos4 { get; set; }
        public DbSet<codigos44> codigos44 { get; set; }
        public DbSet<complementarios> complementarios { get; set; }
        public DbSet<compras> compras { get; set; }
        public DbSet<compras_doc> compras_doc { get; set; }
        public DbSet<compras_items> compras_items { get; set; }
        public DbSet<contacto_venta> contacto_venta { get; set; }
        public DbSet<contacto_venta1> contacto_venta1 { get; set; }
        public DbSet<departamento> departamento { get; set; }
        public DbSet<despachos> despachos { get; set; }
        public DbSet<facturas> facturas { get; set; }
        public DbSet<facturas3> facturas3 { get; set; }
        public DbSet<familia_complementaria> familia_complementaria { get; set; }
        public DbSet<familia_complementaria1> familia_complementaria1 { get; set; }
        public DbSet<fecha> fecha { get; set; }
        public DbSet<folio> folio { get; set; }
        public DbSet<folio_compra> folio_compra { get; set; }
        public DbSet<folio_guias> folio_guias { get; set; }
        public DbSet<folio_nc> folio_nc { get; set; }
        public DbSet<folio_nc3> folio_nc3 { get; set; }
        public DbSet<folio_ruta> folio_ruta { get; set; }
        public DbSet<folio3> folio3 { get; set; }
        public DbSet<folio4> folio4 { get; set; }
        public DbSet<folios_factura> folios_factura { get; set; }
        public DbSet<foo> foo { get; set; }
        public DbSet<guias_despacho> guias_despacho { get; set; }
        public DbSet<guias_facturar> guias_facturar { get; set; }
        public DbSet<historial_solicitud_ticket> historial_solicitud_ticket { get; set; }
        public DbSet<llegada_ruta> llegada_ruta { get; set; }
        public DbSet<llegada_ruta2> llegada_ruta2 { get; set; }
        public DbSet<log_emails> log_emails { get; set; }
        public DbSet<nota_compra> nota_compra { get; set; }
        public DbSet<nota_credito> nota_credito { get; set; }
        public DbSet<nota_credito_detalle> nota_credito_detalle { get; set; }
        public DbSet<nota_credito_detalle3> nota_credito_detalle3 { get; set; }
        public DbSet<nota_credito3> nota_credito3 { get; set; }
        public DbSet<notas_de_pedido> notas_de_pedido { get; set; }
        public DbSet<notas_de_pedido_val> notas_de_pedido_val { get; set; }
        public DbSet<notas_de_pedido_val_aut> notas_de_pedido_val_aut { get; set; }
        public DbSet<notas_de_pedido_val_guias> notas_de_pedido_val_guias { get; set; }
        public DbSet<notas_de_pedido_val_rech> notas_de_pedido_val_rech { get; set; }
        public DbSet<notas_de_pedido3> notas_de_pedido3 { get; set; }
        public DbSet<notas_guias> notas_guias { get; set; }
        public DbSet<numero_pedido> numero_pedido { get; set; }
        public DbSet<observaciones_llegada> observaciones_llegada { get; set; }
        public DbSet<observaciones_llegada1> observaciones_llegada1 { get; set; }
        public DbSet<ofertas> ofertas { get; set; }
        public DbSet<perfil> perfil { get; set; }
        public DbSet<programacion_llamadas> programacion_llamadas { get; set; }
        public DbSet<proveedores> proveedores { get; set; }
        public DbSet<reemprimir> reemprimir { get; set; }
        public DbSet<reg_cheques> reg_cheques { get; set; }
        public DbSet<registro_de_pagos4> registro_de_pagos4 { get; set; }
        public DbSet<registro_llamada> registro_llamada { get; set; }
        public DbSet<registro_pagos> registro_pagos { get; set; }
        public DbSet<registro_pagos3> registro_pagos3 { get; set; }
        public DbSet<registro_pagos4> registro_pagos4 { get; set; }
        public DbSet<registro_reemitir> registro_reemitir { get; set; }
        public DbSet<retiro_documentos> retiro_documentos { get; set; }
        public DbSet<ruta> ruta { get; set; }
        public DbSet<ruta1> ruta1 { get; set; }
        public DbSet<solicitud> solicitud { get; set; }
        public DbSet<stock> stock { get; set; }
        public DbSet<sustituto> sustituto { get; set; }
        public DbSet<tabla_asociar> tabla_asociar { get; set; }
        public DbSet<tabla_nueva> tabla_nueva { get; set; }
        public DbSet<tabla_old> tabla_old { get; set; }
        public DbSet<usuario> usuario { get; set; }
        public DbSet<usuario_adm> usuario_adm { get; set; }
        public DbSet<usuarioweb> usuarioweb { get; set; }
        public DbSet<venta_guias> venta_guias { get; set; }
        public DbSet<venta_mod> venta_mod { get; set; }
        public DbSet<venta4> venta4 { get; set; }
        public DbSet<venta41> venta41 { get; set; }
        public DbSet<guias_despachos_tabla> guias_despachos_tabla { get; set; }
        public DbSet<autoriza_pedidos_cliente> autoriza_pedidos_cliente { get; set; }
        public DbSet<cancelacion_fact_cen> cancelacion_fact_cen { get; set; }
        public DbSet<compras_agrupadas> compras_agrupadas { get; set; }
        public DbSet<consulta_despacho_3> consulta_despacho_3 { get; set; }
        public DbSet<consulta_nota_pedido> consulta_nota_pedido { get; set; }
        public DbSet<consulta_alerta_precios> consulta_alerta_precios { get; set; }
        public DbSet<consulta_compras> consulta_compras { get; set; }
        public DbSet<consulta_despacho> consulta_despacho { get; set; }
        public DbSet<consulta_despacho2> consulta_despacho2 { get; set; }
        public DbSet<contabilidad_facturas_pendientes_contabilizacion> contabilidad_facturas_pendientes_contabilizacion { get; set; }
        public DbSet<cuenta_reemprimir> cuenta_reemprimir { get; set; }
        public DbSet<encargado_rutas> encargado_rutas { get; set; }
        public DbSet<facturas_cen> facturas_cen { get; set; }
        public DbSet<facturas_con_cat> facturas_con_cat { get; set; }
        public DbSet<facturas_inf2> facturas_inf2 { get; set; }
        public DbSet<facturas_inf3> facturas_inf3 { get; set; }
        public DbSet<folio_fecha> folio_fecha { get; set; }
        public DbSet<folio_fecha2> folio_fecha2 { get; set; }
        public DbSet<folio_fecha2_1> folio_fecha2_1 { get; set; }
        public DbSet<folio_fecha2_2> folio_fecha2_2 { get; set; }
        public DbSet<folio_fecha3_1> folio_fecha3_1 { get; set; }
        public DbSet<folio_fecha6> folio_fecha6 { get; set; }
        public DbSet<folio_fecha7> folio_fecha7 { get; set; }
        public DbSet<folio_fecha8> folio_fecha8 { get; set; }
        public DbSet<folio_guia1> folio_guia1 { get; set; }
        public DbSet<folio_guia2> folio_guia2 { get; set; }
        public DbSet<folio_guia3> folio_guia3 { get; set; }
        public DbSet<folio_ruta_llegada> folio_ruta_llegada { get; set; }
        public DbSet<folio_ruta_llegada_1> folio_ruta_llegada_1 { get; set; }
        public DbSet<folio_ruta1> folio_ruta1 { get; set; }
        public DbSet<folio_ruta1_1> folio_ruta1_1 { get; set; }
        public DbSet<folio4_clientes> folio4_clientes { get; set; }
        public DbSet<folio4_rut> folio4_rut { get; set; }
        public DbSet<guias_despachos> guias_despachos { get; set; }
        public DbSet<guias_nota> guias_nota { get; set; }
        public DbSet<nc_cen> nc_cen { get; set; }
        public DbSet<nota_credito_detalle2> nota_credito_detalle2 { get; set; }
        public DbSet<notas_de_pedido_rutas> notas_de_pedido_rutas { get; set; }
        public DbSet<notas_de_pedido_rutas2> notas_de_pedido_rutas2 { get; set; }
        public DbSet<notas_de_pedido_val_aut2> notas_de_pedido_val_aut2 { get; set; }
        public DbSet<notas_de_pedido_val_aut3> notas_de_pedido_val_aut3 { get; set; }
        public DbSet<notas_de_pedido_val_aut4> notas_de_pedido_val_aut4 { get; set; }
        public DbSet<notas_de_pedido_val_aut5> notas_de_pedido_val_aut5 { get; set; }
        public DbSet<notas_de_pedido_val_clientes> notas_de_pedido_val_clientes { get; set; }
        public DbSet<notas_de_pedido_val_clientes_guias> notas_de_pedido_val_clientes_guias { get; set; }
        public DbSet<np_rutas_guias> np_rutas_guias { get; set; }
        public DbSet<np_rutas_guias2> np_rutas_guias2 { get; set; }
        public DbSet<pedidos_despachar> pedidos_despachar { get; set; }
        public DbSet<prueba> prueba { get; set; }
        public DbSet<registrar_rutas_pendientes> registrar_rutas_pendientes { get; set; }
        public DbSet<registro_pago_consulta> registro_pago_consulta { get; set; }
        public DbSet<registro_pago_consulta_final> registro_pago_consulta_final { get; set; }
        public DbSet<registro_pagos_cond> registro_pagos_cond { get; set; }
        public DbSet<registro_pagos_imp> registro_pagos_imp { get; set; }
        public DbSet<registro_pagos_rut> registro_pagos_rut { get; set; }
        public DbSet<registro_pagos_rut_mod_pagos> registro_pagos_rut_mod_pagos { get; set; }
        public DbSet<registro_pagos_rut2> registro_pagos_rut2 { get; set; }
        public DbSet<registro_pagos_rut3> registro_pagos_rut3 { get; set; }
        public DbSet<ruta_cobro> ruta_cobro { get; set; }
        public DbSet<ruta_condicion> ruta_condicion { get; set; }
        public DbSet<ruta_fact> ruta_fact { get; set; }
        public DbSet<ruta_guia> ruta_guia { get; set; }
        public DbSet<ruta_pedido> ruta_pedido { get; set; }
        public DbSet<ruta_retiro> ruta_retiro { get; set; }
        public DbSet<val_monto> val_monto { get; set; }
        public DbSet<venta_fecha_2016> venta_fecha_2016 { get; set; }
        public DbSet<venta_mod2> venta_mod2 { get; set; }
        public DbSet<venta_nota> venta_nota { get; set; }
        public DbSet<venta_nota_aut> venta_nota_aut { get; set; }
        public DbSet<venta_nota_guia> venta_nota_guia { get; set; }
        public DbSet<venta_nota2> venta_nota2 { get; set; }
        public DbSet<venta_nota4> venta_nota4 { get; set; }
        public DbSet<venta_un> venta_un { get; set; }
        public DbSet<venta_un_guias> venta_un_guias { get; set; }
        public DbSet<venta_un4> venta_un4 { get; set; }
        public DbSet<venta2> venta2 { get; set; }
        public DbSet<venta4_clientes> venta4_clientes { get; set; }
        public DbSet<ventas_clientes> ventas_clientes { get; set; }
    }
}
