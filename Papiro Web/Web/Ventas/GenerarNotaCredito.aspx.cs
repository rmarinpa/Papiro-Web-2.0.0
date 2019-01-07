using papiro.DALC;
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
    public partial class GenerarNotaCredito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarFactura_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "Lo lograste!";
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetFactura(string pre)
        {
            List<string> factura = new List<string>();
            using (const113_papiroEntities db = new const113_papiroEntities())
            {
                factura = (from f in db.folio4
                            where f.numero_pedido.StartsWith(pre)
                            select f.numero_pedido).ToList();
            }
            return factura;

        }

    }
}