using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Papiro_Web.Web.Ventas
{
    public partial class ConsultarDespacho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRut_Click(object sender, EventArgs e)
        {
            try
            {
                gvProductos.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}