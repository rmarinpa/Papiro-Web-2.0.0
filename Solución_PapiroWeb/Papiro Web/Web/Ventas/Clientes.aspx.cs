using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.DALC;
using papiro.Negocio;

namespace PapiroWeb.Web.Ventas
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Metodo limpiar

        private void Limpiar()
        {
            txtIdCliente.Text = "";
            txtRazonSocial.Text = "";
            txtRutEmpresa.Text = "";
            txtDireccionEmpresa.Text = "";
            txtComunaEmpresa.Text = "";
            txtTelefonoEmpresa.Text = "";
            txtNombreContacto.Text = "";
            txtCargoContacto.Text = "";
            txtTelefonoComercial.Text = "";
            txtEmailContacto.Text = "";
            txtNombreProveedores.Text = "";
            txtCargoProveedores.Text = "";
            txtTelefonoProveedores.Text = "";
            txtEmailProveedores.Text = "";
            txtCondicionPago.Text = "";
            ddlformaPago.SelectedIndex= 0;
            //Ejecutivos
            ddlEjecDigital.SelectedIndex= 0;
            ddlEjecMedia.SelectedIndex = 0;
            ddlEjecLed.SelectedIndex= 0;
            ddlEjecMac.SelectedIndex= 0;
            ddlEjecNew.SelectedIndex = 0;
            ddlEjecCob.SelectedIndex= 0;
            txtDireccionDespacho.Text = "";
            txtEmailDespacho.Text = "";
            txtTelefonoDespacho.Text = "";
            txtTelefonoContacto.Text = "";
            txtNombreDespacho.Text = "";
            txtSenal.Text = "";
            txtCiudad.Text = "";
            txtLineaCredito.Text = "";
            txtDicom.Text = "";
            txtFechaIngreso.Text = "";
            txtAreaObservacion.Text = "";
            txtMaquinas.Text = "";
            txtMaquinas160.Text = "";
            txtMaquinas180.Text = "";
            txtMaquinas320.Text = "";
            txtEmailProveedores2.Text = "";
            txtFechaActualizacion.Text = "";
            txtFechaIngreso.Text = "";
            txtReferencia.Text = "";
            ddlFichaCliente.Text = "";
            txtEncargadoProd.Text = "";
            txtGiro.Text = "";
        }


        protected void btnBuscarRut_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente cliente = new Cliente();
                cliente.Rut = txtRutEmpresa.Text;

                if (cliente.ReadRut())
                {
                    txtIdCliente.Text = cliente.IdCliente.ToString();
                    txtRazonSocial.Text = cliente.NombreCliente;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtComunaEmpresa.Text = cliente.Comuna;
                    txtTelefonoEmpresa.Text = cliente.Telefono;
                    txtNombreContacto.Text = cliente.ContactoComercial;
                    txtCargoContacto.Text = cliente.CargoContactoComercial;
                    txtTelefonoComercial.Text = cliente.TelefonoContactoComercial;
                    txtEmailContacto.Text = cliente.EmailContactoComercial;
                    txtNombreProveedores.Text = cliente.ContactoPagoProveedores;
                    txtCargoProveedores.Text = cliente.CargoContactoPago;
                    txtTelefonoProveedores.Text = cliente.TelefonoCargoContacto;
                    txtEmailProveedores.Text = cliente.EmailContactoPago;
                    txtCondicionPago.Text = cliente.Cond;
                    ddlformaPago.Text = cliente.FormaPago;
                    //Ejecutivos
                    ddlEjecDigital.Text = cliente.EjecDigital;
                    ddlEjecMedia.Text = cliente.EjecMedia;
                    ddlEjecLed.Text = cliente.EjecLed;
                    ddlEjecMac.Text = cliente.EjecMac;
                    ddlEjecNew.Text = cliente.EjecNuevo;
                    ddlEjecCob.Text = cliente.EjecCobranza;
                    txtDireccionDespacho.Text = cliente.DireccionDespacho;
                    txtEmailDespacho.Text = cliente.EmailDespacho;
                    txtTelefonoDespacho.Text = cliente.TelefonosDespacho;
                    txtTelefonoContacto.Text = cliente.TelefonoDespacho;
                    txtNombreDespacho.Text = cliente.ContactoDespacho;
                    txtSenal.Text = cliente.SenalAdvertencia;
                    txtCiudad.Text = cliente.Estado;
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtDicom.Text = cliente.Dicom;
                    txtFechaIngreso.Text = cliente.FechaIngreso;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtMaquinas.Text = cliente.Maquinas;
                    txtMaquinas160.Text = cliente.Maquina16;
                    txtMaquinas180.Text = cliente.Maquina18;
                    txtMaquinas320.Text = cliente.Maquinas320;
                    txtEmailProveedores2.Text = cliente.EmailContacto2;
                    txtFechaActualizacion.Text = cliente.Actualizado; ;
                    txtReferencia.Text = cliente.Referencia;
                    ddlFichaCliente.Text = cliente.FichaCliente;
                    txtEncargadoProd.Text = cliente.EncargadoProduccion;
                    txtGiro.Text = cliente.Giro;
                    lblMensaje.Text = "";
                }
                else
                {
                    lblMensaje.Text = "El cliente no existe";
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al buscar";

            }
        }


        protected void btnBuscarRazon_Click(object sender, EventArgs e)
        {

            try
            {
                Cliente cliente = new Cliente();
                cliente.NombreCliente = txtRazonSocial.Text;

                if (cliente.ReadRazon())
                {
                    txtIdCliente.Text = cliente.IdCliente.ToString();
                    txtRutEmpresa.Text = cliente.Rut;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtComunaEmpresa.Text = cliente.Comuna;
                    txtTelefonoEmpresa.Text = cliente.Telefono;
                    txtNombreContacto.Text = cliente.ContactoComercial;
                    txtCargoContacto.Text = cliente.CargoContactoComercial;
                    txtTelefonoComercial.Text = cliente.TelefonoContactoComercial;
                    txtEmailContacto.Text = cliente.EmailContactoComercial;
                    txtNombreProveedores.Text = cliente.ContactoPagoProveedores;
                    txtCargoProveedores.Text = cliente.CargoContactoPago;
                    txtTelefonoProveedores.Text = cliente.TelefonoCargoContacto;
                    txtEmailProveedores.Text = cliente.EmailContactoPago;
                    txtCondicionPago.Text = cliente.Cond;
                    ddlformaPago.Text = cliente.FormaPago;
                    //Ejecutivos
                    ddlEjecDigital.Text = cliente.EjecDigital;
                    ddlEjecMedia.Text = cliente.EjecMedia;
                    ddlEjecLed.Text = cliente.EjecLed;
                    ddlEjecMac.Text = cliente.EjecMac;
                    ddlEjecNew.Text = cliente.EjecNuevo;
                    ddlEjecCob.Text = cliente.EjecCobranza;
                    txtDireccionDespacho.Text = cliente.DireccionDespacho;
                    txtEmailDespacho.Text = cliente.EmailDespacho;
                    txtTelefonoDespacho.Text = cliente.TelefonosDespacho;
                    txtTelefonoContacto.Text = cliente.TelefonoDespacho;
                    txtNombreDespacho.Text = cliente.ContactoDespacho;
                    txtSenal.Text = cliente.SenalAdvertencia;
                    txtCiudad.Text = cliente.Estado;
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtDicom.Text = cliente.Dicom;
                    txtFechaIngreso.Text = cliente.FechaIngreso;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtMaquinas.Text = cliente.Maquinas;
                    txtMaquinas160.Text = cliente.Maquina16;
                    txtMaquinas180.Text = cliente.Maquina18;
                    txtMaquinas320.Text = cliente.Maquinas320;
                    txtEmailProveedores2.Text = cliente.EmailContacto2;
                    txtFechaActualizacion.Text = cliente.Actualizado;
                    txtReferencia.Text = cliente.Referencia;
                    ddlFichaCliente.Text = cliente.FichaCliente;
                    txtEncargadoProd.Text = cliente.EncargadoProduccion;
                    txtGiro.Text = cliente.Giro;
                    lblMensaje.Text = "";
                }
                else
                {
                    lblMensaje.Text = "El cliente no existe";
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al buscar";

            }
        }


        // Metodos para la busqueda de rut con JQUERY

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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente cliente = new Cliente();

                cliente.Rut = txtRutEmpresa.Text;
                cliente.NombreCliente = txtRazonSocial.Text;
                cliente.Direccion = txtDireccionEmpresa.Text;
                cliente.Comuna = txtComunaEmpresa.Text;
                cliente.Telefono = txtTelefonoEmpresa.Text;
                cliente.ContactoComercial = txtNombreContacto.Text;
                cliente.CargoContactoComercial = txtCargoContacto.Text;
                cliente.TelefonoContactoComercial = txtTelefonoComercial.Text;
                cliente.EmailContactoComercial = txtEmailContacto.Text;
                cliente.ContactoPagoProveedores = txtNombreProveedores.Text;
                cliente.CargoContactoPago = txtCargoProveedores.Text;
                cliente.TelefonoCargoContacto = txtTelefonoProveedores.Text;
                cliente.EmailContactoPago = txtEmailProveedores.Text;
                cliente.Cond = txtCondicionPago.Text;
                cliente.FormaPago = ddlformaPago.Text;
                //Ejecutivos
                cliente.EjecDigital = ddlEjecDigital.Text;
                cliente.EjecMedia = ddlEjecMedia.Text;
                cliente.EjecLed = ddlEjecLed.Text;
                cliente.EjecMac = ddlEjecMac.Text;
                cliente.EjecNuevo = ddlEjecNew.Text;
                cliente.EjecCobranza = ddlEjecCob.Text;
                cliente.DireccionDespacho = txtDireccionDespacho.Text;
                cliente.EmailDespacho = txtEmailDespacho.Text;
                cliente.TelefonosDespacho = txtTelefonoDespacho.Text;
                cliente.TelefonoDespacho = txtTelefonoContacto.Text;
                cliente.ContactoDespacho = txtNombreDespacho.Text;
                cliente.SenalAdvertencia = txtSenal.Text;
                cliente.Estado = txtCiudad.Text;
                cliente.LineaCredito = txtLineaCredito.Text;
                cliente.Dicom = txtDicom.Text;
                cliente.Observacion = txtAreaObservacion.Text;
                cliente.Maquinas = txtMaquinas.Text;
                cliente.Maquina16 = txtMaquinas160.Text;
                cliente.Maquina18 = txtMaquinas180.Text;
                cliente.Maquinas320 = txtMaquinas320.Text;
                cliente.EmailContacto2 = txtEmailProveedores2.Text;
                cliente.Referencia = txtReferencia.Text;
                cliente.FichaCliente = ddlFichaCliente.Text;
                cliente.EncargadoProduccion = txtEncargadoProd.Text;
                cliente.Giro = txtGiro.Text;
                cliente.FechaIngreso = DateTime.Now.ToString();
                cliente.Actualizado = DateTime.Now.ToString();

                if (cliente.Create())
                {
                    lblMensaje.Text = "Cliente agregado correctamente";
                    Limpiar();
                }
                else
                {
                    lblMensaje.Text = "No se pudo agregar cliente";
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al registrar cliente";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente cliente = new Cliente();
                cliente.IdCliente = int.Parse(txtIdCliente.Text);

                if (cliente.Delete())
                {
                    lblMensaje.Text = "Cliente eliminado correctamente";

                    Limpiar();
                }
            }
            catch (Exception)
            {

                lblMensaje.Text = "Error al eliminar";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente cliente = new Cliente();
                cliente.IdCliente = int.Parse(txtIdCliente.Text);
                cliente.Rut = txtRutEmpresa.Text;
                cliente.NombreCliente = txtRazonSocial.Text;
                cliente.Direccion = txtDireccionEmpresa.Text;
                cliente.Comuna = txtComunaEmpresa.Text;
                cliente.Telefono = txtTelefonoEmpresa.Text;
                cliente.ContactoComercial = txtNombreContacto.Text;
                cliente.CargoContactoComercial = txtCargoContacto.Text;
                cliente.TelefonoContactoComercial = txtTelefonoComercial.Text;
                cliente.EmailContactoComercial = txtEmailContacto.Text;
                cliente.ContactoPagoProveedores = txtNombreProveedores.Text;
                cliente.CargoContactoPago = txtCargoProveedores.Text;
                cliente.TelefonoCargoContacto = txtTelefonoProveedores.Text;
                cliente.EmailContactoPago = txtEmailProveedores.Text;
                cliente.Cond = txtCondicionPago.Text;
                cliente.FormaPago = ddlformaPago.Text;
                //Ejecutivos
                cliente.EjecDigital = ddlEjecDigital.Text;
                cliente.EjecMedia = ddlEjecMedia.Text;
                cliente.EjecLed = ddlEjecLed.Text;
                cliente.EjecMac = ddlEjecMac.Text;
                cliente.EjecNuevo = ddlEjecNew.Text;
                cliente.EjecCobranza = ddlEjecCob.Text;
                cliente.DireccionDespacho = txtDireccionDespacho.Text;
                cliente.EmailDespacho = txtEmailDespacho.Text;
                cliente.TelefonosDespacho = txtTelefonoDespacho.Text;
                cliente.TelefonoDespacho = txtTelefonoContacto.Text;
                cliente.ContactoDespacho = txtNombreDespacho.Text;
                cliente.SenalAdvertencia = txtSenal.Text;
                cliente.Estado = txtCiudad.Text;
                cliente.LineaCredito = txtLineaCredito.Text;
                cliente.Dicom = txtDicom.Text;
                cliente.Observacion = txtAreaObservacion.Text;
                cliente.Maquinas = txtMaquinas.Text;
                cliente.Maquina16 = txtMaquinas160.Text;
                cliente.Maquina18 = txtMaquinas180.Text;
                cliente.Maquinas320 = txtMaquinas320.Text;
                cliente.EmailContacto2 = txtEmailProveedores2.Text;
                cliente.Referencia = txtReferencia.Text;
                cliente.FichaCliente = ddlFichaCliente.Text;
                cliente.EncargadoProduccion = txtEncargadoProd.Text;
                cliente.Giro = txtGiro.Text;
                cliente.Actualizado = DateTime.Now.ToString();

                if (cliente.Update())
                {
                    lblMensaje.Text = "Cliente modificado correctamente";
                    Limpiar();
                }
                else
                {
                    lblMensaje.Text = "No se pudo modificar el cliente";
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al modificar cliente";
            }
        }
    }

}
