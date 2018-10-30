using papiro.Negocio;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace PapiroWeb.Web.Ventas
{
    public partial class ConfigUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNuevaPass.Text = "";

        }


        protected void btnCambiarContraseña_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false)
            {
                return;
            }
            try
            {

                //Creamos un cliente para consumir los metodos del servicio web
                Papiro_Web.ServicioAutenticacion.AutenticacionClient cliente = new Papiro_Web.ServicioAutenticacion.AutenticacionClient();

                string nombreUsuario = Page.User.Identity.Name;
                string password = txtActualPass.Text;

                //Validamos el usuario y obtenemos el XML
                string xmlUsuario = cliente.LoginUsuario(nombreUsuario, password);

                XmlSerializer serializador = new XmlSerializer(typeof(Usuario));

                StringReader lector = new StringReader(xmlUsuario);

                Usuario usuario = (Usuario)serializador.Deserialize(lector);

                usuario.Password = "";
                if (txtNuevaPass.Text == txtConfirmarPass.Text)
                {
                    if (usuario != null)
                    {
                        usuario.Nombre = nombreUsuario;
                        usuario.Password = txtNuevaPass.Text;
                        if (usuario.UpdateContrasena())
                        {
                            Response.Write("<script>alert('Contraseña Cambiada');</script>");
                            LimpiarFormulario();
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Contraseña Incorrecta');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Las contraseñas no coinciden');</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }

        private void LimpiarFormulario()
        {
            txtActualPass.Text = "";
            txtNuevaPass.Text = "";
            txtConfirmarPass.Text = "";
        }
    }
}