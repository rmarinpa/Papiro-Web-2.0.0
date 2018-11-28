using papiro.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Papiro_Web.Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string userName = Page.User.Identity.Name;

                try
                {
                    Usuario usuario = new Usuario();
                    usuario.Nombre = userName;
                    if (usuario.LeerDeptoUsuario())
                    {
                        userName = usuario.Nombre;
                        if (usuario.Obra == "Ventas")
                        {
                            Response.Redirect("Web/Ventas/MenuVentas.aspx");
                        }
                        if (usuario.Obra == "Administración")
                        {
                            Response.Redirect("Web/Administracion/MenuAdministracion.aspx");
                        }
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }
    }
}