using papiro.Negocio;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace Papiro_Web.Web.Administracion
{
    public partial class CreacionUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false)
            {
                return;
            }
            try
            {
                if (txtNombreUsuario.Text != "" || txtPass.Text != "" || txtConfirmarPass.Text != "")
                {
                    if (txtPass.Text == txtConfirmarPass.Text)
                    {
                        Usuario usuario = new Usuario();

                        usuario.Nombre = txtNombreUsuario.Text;
                        usuario.Obra = ddlDepartamento.SelectedItem.ToString();
                        this.txtPass.Text = usuario.EncriptarPass(this.txtPass.Text);   
                        usuario.Password = txtPass.Text;
                        ; if (usuario.CreateUsuario())
                        {
                            Response.Write("<script>alert('Usuario creado');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Las contraseñas no coinciden');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Campos vacíos');</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }
    }
}