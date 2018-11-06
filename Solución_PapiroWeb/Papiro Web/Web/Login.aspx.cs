using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.Negocio;
using System.Xml.Serialization;
using System.IO;
using System.Web.Security;

namespace Papiro_Web.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Remove("nom");
            }
        }

        protected void loginUsuario_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //Creamos un cliente para consumir los metodos del servicio web
            ServicioAutenticacion.AutenticacionClient cliente = new ServicioAutenticacion.AutenticacionClient();

            string nombreUsuario = loginUsuario.UserName;
            string password = loginUsuario.Password;
            Usuario user = new Usuario();
            password = user.EncriptarPass(password);
            //Validamos el usuario y obtenemos el XML
            string xmlUsuario = cliente.LoginUsuario(nombreUsuario, password);

            XmlSerializer serializador = new XmlSerializer(typeof(Usuario));

            StringReader lector = new StringReader(xmlUsuario);

            Usuario usuario = (Usuario)serializador.Deserialize(lector);

            if (usuario != null)
            {
                e.Authenticated = true;
                Session["nom"] = nombreUsuario;
                FormsAuthentication.RedirectFromLoginPage(nombreUsuario, false);
            }


        }
    }
}