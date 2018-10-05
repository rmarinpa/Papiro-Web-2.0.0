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
                            //Traemos los datos
                            //ConMYsql
                            // VerificarDiferenciaDeProducto();
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
                }
            }

            else
            {
                Response.Write("<script>alert('Rut no valido, el formato de rut es: 1111111-1');</script>");
            }

        }

        protected void btnBuscarRazon_Click(object sender, EventArgs e)
        {
            AutenticacionClient client = new AutenticacionClient();


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
            txtRutEmpresa.Text = "";
            txtDireccion.Text = "";
            txtComuna.Text = "";
            txtSenal.Text = "";
            DropDownList1.DataSource = null;
            DropDownList1.Items.Clear();
        }

        //Implementar estos metodos en la interfaz
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


        //Metodo que verifica si el cliente posee productos en la guía de despacho parcial 
        private void VerificarDiferenciaDeProducto()
        {

            DropDownList1.DataSource = null;
            DropDownList1.Items.Clear();
            Conexion con = new Conexion();
            con.AbrirConexion();
            MySqlCommand com = new MySqlCommand("SELECT Pend FROM dif_producto WHERE rut ='" + txtRutEmpresa.Text + "'and Pend > 0", con.cone);
            MySqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
                
            }

            con.CerrarConexion();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}