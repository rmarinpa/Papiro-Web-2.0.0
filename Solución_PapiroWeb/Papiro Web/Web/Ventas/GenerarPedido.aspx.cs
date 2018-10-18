using MySql.Data.MySqlClient;
using papiro.DALC;
using papiro.Negocio;
using Papiro_Web.ServicioAutenticacion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapiroWeb.Web.Ventas
{
    public partial class GenerarPedido : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ddlTipoDocuento.Enabled = true;
        }

        protected void btnBuscarRut_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            //Validamos que el rut , sea correcto
            if (cliente.validarRut(txtRutEmpresa.Text) == true)
            {

                //Validamos si el tipo de documento está seleccionado
                if (ddlTipoDocuento.SelectedIndex != 0)
                {
                    gvProductosGuiaPendiente.DataBind();
                    if (gvProductosGuiaPendiente.Rows.Count > 1)
                    {

                        Response.Write("<script>alert('Cliente con productos pendientes de acuerdo a guías de despacho parcial');</script>");
                        Response.Write("<script>alert('Favor, verificar en la pestaña de productos pendientes');</script>");
                    }
                    try
                    {
                        cliente.Rut = txtRutEmpresa.Text;

                        if (cliente.ReadRut())
                        {
                            txtRazonSocial.Text = cliente.NombreCliente;
                            txtDireccion.Text = cliente.Direccion;
                            txtComuna.Text = cliente.Comuna;
                            txtSenal.Text = cliente.SenalAdvertencia;
                            txtNombreContacto.Text = cliente.ContactoComercial;
                            txtEmailContacto.Text = cliente.EmailContactoComercial;
                            txtTelefonoContacto.Text = cliente.TelefonoContactoComercial;
                            txtCargoContacto.Text = cliente.CargoContactoComercial;


                            //Actualizamos el DataGrid
                            gvHistorialCliente.DataBind();
                            gvHistorialBloqueo.DataBind();
                            //Bloqueamos el tipo de documento para que el cliente no pueda interactuar
                            ddlTipoDocuento.Enabled = false;

                        }
                        else
                        {
                            Response.Write("<script>alert('No se encuentra cliente');</script>");
                            Limpiar();
                        }
                    }
                    catch (ArgumentException)
                    {
                        Response.Write("<script>alert('ArgumentException');</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }

                }
                else
                {
                    Response.Write("<script>alert('Debes seleccionar un tipo de documento para continuar');</script>");
                    Limpiar();
                }
            }

            else
            {
                Response.Write("<script>alert('Rut no valido, el formato de rut es: 1111111-1');</script>");
            }

        }

        protected void btnBuscarRazon_Click(object sender, EventArgs e)
        {
            if (ddlTipoDocuento.SelectedIndex != 0)
            {

                try
                {
                    Cliente cliente = new Cliente();
                    cliente.NombreCliente = txtRazonSocial.Text;

                    if (cliente.ReadRazon())
                    {
                        txtRutEmpresa.Text = cliente.Rut;
                        txtDireccion.Text = cliente.Direccion;
                        txtComuna.Text = cliente.Comuna;
                        txtSenal.Text = cliente.SenalAdvertencia;
                        txtNombreContacto.Text = cliente.ContactoComercial;
                        txtEmailContacto.Text = cliente.EmailContactoComercial;
                        txtTelefonoContacto.Text = cliente.TelefonoContactoComercial;
                        txtCargoContacto.Text = cliente.CargoContactoComercial;

                        gvHistorialCliente.DataBind();
                        gvHistorialBloqueo.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('No se encuentra cliente');</script>");
                        Limpiar();
                    }
                }
                catch (ArgumentException)
                {
                    Response.Write("<script>alert('ArgumentException');</script>");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Error al buscar');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Debes seleccionar un tipo de documento para poder continuar');</script>");
            }

        }

        //Metodo limpiar
        private void Limpiar()
        {
            txtRazonSocial.Text = string.Empty;
            txtRutEmpresa.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtComuna.Text = string.Empty;
            txtSenal.Text = string.Empty;
            ddlTipoDocuento.Enabled = true;
            ddlTipoDocuento.SelectedIndex = 0;
            txtNombreContacto.Text = string.Empty;
            txtEmailContacto.Text = string.Empty;
            txtTelefonoContacto.Text = string.Empty;
            txtCargoContacto.Text = string.Empty;
            txtCodigoProducto.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtFamiliaI.Text = string.Empty;
            txtFamiliaII.Text = string.Empty;
            txtMarca.Text = string.Empty;
            txtAncho.Text = string.Empty;
            txtLargo.Text = string.Empty;
            txtAreaCalculada.Text = string.Empty;
            txtPrecioM2.Text = string.Empty;
            txtPrecioMax.Text = string.Empty;
            txtPrecioMin.Text = string.Empty;
            txtAreaTotal.Text = string.Empty;
            txtPrecioUn.Text = string.Empty;
            txtMontoNeto.Text = string.Empty;
            gvHistorialBloqueo.DataSource = null;
            gvProductosGuiaPendiente.DataSource = null;
            gvHistorialCliente.DataSource = null;
        }

        //IMPORTANTE, IMPLEMENTAR LOS WEBMETHOD EN LA INTERFAZ DE AUTENTICACION.CS Y AUTENTICACION.SVC.
        //PARA ASÍ, LLAMAR A UN SOLO METODO DE BUSCAR POR RAZÓN O RUT.

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetRazon(string pre)
        {
            List<string> clientes = new List<string>();
            using (const113_papiroEntities db = new const113_papiroEntities())
            {
                clientes = (from c in db.clientes
                            where c.clientes1.StartsWith(pre)
                            select c.clientes1).ToList();
            }
            return clientes;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetCodigo(string pre)
        {
            List<string> productos = new List<string>();
            using (const113_papiroEntities db = new const113_papiroEntities())
            {

                productos = (from p in db.codigos4
                             where p.Codigo.StartsWith(pre)
                             select p.Codigo).ToList();
            }
            return productos;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetDescripcion(string pre)
        {
            List<string> productos = new List<string>();
            using (const113_papiroEntities db = new const113_papiroEntities())
            {

                productos = (from p in db.codigos4
                             where p.Descripcion.StartsWith(pre)
                             select p.Descripcion).ToList();
            }
            return productos;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetRut(string pre)
        {
            List<string> clientes = new List<string>();
            using (const113_papiroEntities db = new const113_papiroEntities())
            {

                clientes = (from c in db.clientes
                            where c.rut.StartsWith(pre)
                            select c.rut).ToList();
            }
            return clientes;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }


        protected void btnBuscarCodigo_Click(object sender, EventArgs e)
        {
            try
            {
                Producto producto = new Producto();
                producto.Codigo = txtCodigoProducto.Text;
                if (producto.LeerProducto())
                {
                    txtCodigoProducto.Text = producto.Codigo;
                    txtDescripcion.Text = producto.Descripcion;
                    txtMarca.Text = producto.Marca;
                    txtFamiliaI.Text = producto.Familia;
                    txtFamiliaII.Text = producto.Familia2;
                    txtFamiliaIII.Text = producto.Familia3;
                    txtAncho.Text = producto.Ancho.ToString();
                    txtLargo.Text = producto.Largo.ToString();
                    txtAreaCalculada.Text = producto.Area.ToString();

                }
                else
                {
                    Response.Write("<script>alert('No se encuentra producto');</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnGenerarPedido_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(txtCantidadProducto.Text);
            try
            {
                if (txtFolioUsado.Text == "False")
                {
                    //Creamos el folio de la venta
                    Folio folio = new Folio();
                    folio.NumeroPedido = "0";
                    folio.Cliente = txtRazonSocial.Text.ToString();
                    //Agregamos el folio
                    if (folio.UltimoFolio())
                    {
                        txtFolio.Text = folio.NroFolio.ToString();
                        txtFolioUsado.Text = "True";
                    }
                }
                else
                {
                    lblMensaje.Text = "Error";
                }

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error');</script>");
            }

            //Se agrega productos al carrito
            for (int i = 0; i < x; i++)
            {
                try
                {
                    papiro.Negocio.Ventas ventas = new papiro.Negocio.Ventas();
                    ventas.Cliente = txtRazonSocial.Text;
                    ventas.Rut = txtRutEmpresa.Text;
                    //ventas.AreaNegocio.ToString();
                    //ventas.SenalAdvertencia = txtSenal.Text;
                    ventas.Comuna = txtComuna.Text;
                    ventas.Familia_1 = txtFamiliaI.Text;
                    ventas.Familia_2 = txtFamiliaII.Text;
                    ventas.Familia_3 = txtFamiliaIII.Text;
                    //ventas.tipo_1
                    //ventas.Medidas
                    ventas.CodigoProducto = txtCodigoProducto.Text;
                    ventas.Proveedor = txtMarca.Text;
                    ventas.Descripcion = txtDescripcion.Text;
                    ventas.AreaCal = double.Parse(txtAreaCalculada.Text);
                    ventas.Cantidad = double.Parse(txtCantidadProducto.Text);
                    ventas.AreaTotal = double.Parse(txtAreaTotal.Text);
                    ventas.VentaRollo = double.Parse(txtPrecioUn.Text);
                    ventas.UnitVentaM2 = double.Parse(txtPrecioM2.Text);
                    ventas.VentaNeta = double.Parse(txtNeto.Text);
                    ventas.VentaIva = double.Parse(txtIva.Text);
                    ventas.VentaTotal = double.Parse(txtTotalPedido.Text);
                    //ventas.Condicion
                    //ventas.FormaPago
                    //ventas.DiasPago
                    //ventas.Ejecutivo
                    //ventas.PrecioLista 
                    //ventas.PrecioCliente
                    ventas.Fecha = DateTime.Now;
                    ventas.FechaAct = DateTime.Now;
                    //ventas.Hora 
                    ventas.NumeroFolio = double.Parse(txtFolio.Text);

                    //Se traen los parametros del usuario.

                    //ventas.TomaPedido = 
                    ventas.Ancho = double.Parse(txtAncho.Text);
                    ventas.Largo = double.Parse(txtLargo.Text);

                    if (ventas.Create())
                    {
                        Response.Write("<script>alert('Productos agregado correctamente');</script>");
                        gvPedidosAgregados.DataBind();
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Exception');</script>");
                    lblMensaje.Text = ex.Message;
                }
            }




        }

        protected void btnTerminarPedido_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Redirección');</script>");
            Response.Redirect("InformacionPedido.aspx", true);
        }
    }
}
