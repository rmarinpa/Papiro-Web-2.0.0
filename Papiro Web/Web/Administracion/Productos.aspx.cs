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
                producto.Marca = txtMarca.Text;
                producto.Descripcion = txtDescripcion.Text;
                producto.Tipo_1 = txtCodigoPrecio.Text;
                producto.Medidas = txtMedidas.Text;
                producto.Unid_Paquete = double.Parse(txtUnidadPaquete.Text);
                producto.Ancho = double.Parse(txtAncho.Text);
                producto.Largo = double.Parse(txtLargo.Text);
                producto.Area = double.Parse(txtArea.Text);
                producto.Descripcion_2 = "";
                producto.Area_Negocio = txtAreaNeg.Text;
                producto.Proveedor = txtNombreProveedor.Text;
                producto.Mapa = txtCodigoPrecio.Text;
                producto.Descripcion_3 = "";
                producto.Obs = "";
                producto.Familia = txtFamilia1.Text;
                producto.Familia2 = txtFamilia2.Text;
                producto.Familia3 = txtFamilia3.Text;
                producto.Stock = double.Parse(txtStock.Text);
                producto.Medida_Unidad = double.Parse(txtMedidas.Text);
                producto.Precio_Lista = double.Parse(txtPrecioMaximo.Text);
                producto.Fecha_Caducidad = DateTime.Parse(txtFechaCaducidad.Text);
                producto.Precio_Max = double.Parse(txtPrecioMaximo.Text);
                producto.Precio_Min = double.Parse(txtPrecioMin.Text);
                producto.Activo = 1;
                producto.Categoria = "";
                producto.Categoria2 = "";
                if (producto.CreateProducto())
                {
                    lblMensaje.Text = "Producto registrado correctamente";
                }
                else
                {
                    lblMensaje.Text = "No se pudo agregar producto";
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

        protected void btnBuscarCodigo_Click(object sender, EventArgs e)
        {
            try
            {
                Producto producto = new Producto();
                producto.Codigo = txtCodigo.Text;
                if (producto.LeerProducto())
                {
                    txtCodigo.Text = producto.Codigo;
                    txtMarca.Text = producto.Marca;
                    txtDescripcion.Text = producto.Descripcion;
                    txtCodigoPrecio.Text = producto.Tipo_1;
                    txtMedidas.Text = producto.Medidas;
                    txtUnidadPaquete.Text = producto.Unid_Paquete.ToString();
                    txtAncho.Text = producto.Ancho.ToString();
                    txtLargo.Text = producto.Largo.ToString();
                    txtArea.Text = producto.Area.ToString();
                    txtAreaNeg.Text = producto.Area_Negocio;
                    txtNombreProveedor.Text = producto.Proveedor;
                    txtCodigoPrecio.Text = producto.Mapa;
                    txtFamilia1.Text =producto.Familia;
                    txtFamilia2.Text = producto.Familia2;
                    txtFamilia3.Text = producto.Familia3;
                    txtStock.Text = producto.Stock.ToString();
                    txtMedidas.Text = producto.Medida_Unidad.ToString();
                    txtPrecioMaximo.Text = producto.Precio_Lista.ToString();
                    txtFechaCaducidad.Text = producto.Fecha_Caducidad.ToShortDateString();
                    txtPrecioMaximo.Text = producto.Precio_Max.ToString();
                    txtPrecioMin.Text = producto.Precio_Min.ToString();
                    txtTipo.Text = producto.Tipo_1;
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



        private void Limpiar()
        {
            txtCodigo.Text = "";
            txtMarca.Text = "";
            txtDescripcion.Text = "";
            txtCodigoPrecio.Text = "";
            txtMedidas.Text = "";
            txtUnidadPaquete.Text = "";
            txtAncho.Text = "";
            txtLargo.Text = "";
            txtArea.Text = "";
            txtAreaNeg.Text = "";
            txtNombreProveedor.Text = "";
            txtCodigoPrecio.Text = ""; 
            txtFamilia1.Text = "";
            txtFamilia2.Text = "";
            txtFamilia3.Text = "";
            txtStock.Text = "";
            txtMedidas.Text = "";
            txtPrecioMaximo.Text = "";
            txtFechaCaducidad.Text = "";
            txtPrecioMaximo.Text = "";
            txtPrecioMin.Text = "";
            txtTipo.Text = "";
        }
    }
}