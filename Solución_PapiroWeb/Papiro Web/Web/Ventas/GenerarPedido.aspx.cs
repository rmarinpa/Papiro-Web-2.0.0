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
                gvProductosGuiaPendiente.DataBind();
                //Validamos si el tipo de documento está seleccionado
                if (ddlTipoDocuento.SelectedIndex != 0)
                {
                    if (gvProductosGuiaPendiente.Rows.Count > 1)
                    {
                        Response.Write("<script>alert('Cliente con productos pendientes de acuerdo a guías de despacho parcial');</script>");
                        Response.Write("<script>alert('Favor, verificar en la pestaña de productos pendientes');</script>");
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
                                //Bloqueamos el tipo de documento para que el cliente no pueda verlo
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

        protected void txtAreaTotal_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscarCodigo_Click(object sender, EventArgs e)
        {
            try
            {
                Producto producto = new Producto();
                producto.Codigo = txtCodigoProducto.Text;
                papiro.Negocio.Ventas ventas = new papiro.Negocio.Ventas();
                txtCodigoProducto.Text = ventas.CodigoProducto;
                txtRazonSocial.Text = ventas.Cliente;
                if (producto.LeerProducto())
                {
                    txtDescripcion.Text = producto.Descripcion;
                    txtMarca.Text = producto.Marca;
                    txtFamiliaI.Text = producto.Familia;
                    txtFamiliaII.Text = producto.Familia2;
                    txtAncho.Text = producto.Ancho.ToString();
                    txtLargo.Text = producto.Largo.ToString();
                    txtAreaCalculada.Text = producto.Area.ToString();


                    //Leemos el m2 desde ventas4
                    if (ventas.LeerAreaM2())
                    {

                        txtPrecioM2.Text = ventas.UnitVentaM2.ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Error en metro cuadrado');</script>");
                    }
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
    }
}
