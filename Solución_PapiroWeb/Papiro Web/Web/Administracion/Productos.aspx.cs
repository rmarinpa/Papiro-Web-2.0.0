using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.Negocio;

namespace Papiro_Web.Web.Administracion
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                Producto producto = new Producto();

                producto.Codigo = txtCodigo.Text;

                if (producto.CreateProducto ())
                {
                    lblMensaje.Text = "Producto registrado correctamente";
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
                lblMensaje.Text = "Error al registrar producto";
            }
        }

        private void Limpiar()
        {
            
        }
    }
}