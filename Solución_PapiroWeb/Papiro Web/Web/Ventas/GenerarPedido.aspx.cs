using papiro.DALC;
using papiro.Negocio;
using System;
using System.Collections.Generic;
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
            //Validamos que el rut , sea correcto
            if (validarRut(txtRutEmpresa.Text) == true)
            {
                //Validamos si el tipo de documento está seleccionado
                if (ddlTipoDocuento.SelectedIndex != 0)
                {
                    try
                    {
                        Cliente cliente = new Cliente();
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

        private void Limpiar()
        {
            txtRazonSocial.Text = "";
            txtRutEmpresa.Text = "";
            txtDireccion.Text = "";
            txtComuna.Text = "";
            txtSenal.Text = "";
        }

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

        //Metodo de validación de rut (Cambiar a una función de JS)
        //Este funciona, por el momento 
        public bool validarRut(string rut)
        {

            bool validacion = false;
            try
            {
                rut = rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));

                char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                if (dv == (char)(s != 0 ? s + 47 : 75))
                {
                    validacion = true;
                }
            }
            catch (Exception ex)
            {

            }
            return validacion;
        }
    }

}