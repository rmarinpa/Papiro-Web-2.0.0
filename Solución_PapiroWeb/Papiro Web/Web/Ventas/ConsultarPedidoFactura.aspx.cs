using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapiroWeb.Web.Ventas
{
    public partial class ConsultarPedidoFactura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cldFechaIniciar.Visible = false;
                cldFechaFinal.Visible = false;

            }
        }

        protected void btnConsutarInicial_Click(object sender, EventArgs e)
        {
            if (cldFechaIniciar.Visible)
            {
                cldFechaIniciar.Visible = false;
            }
            else
            {
                cldFechaIniciar.Visible = true;
            }
        }

        protected void cldFechaIniciar_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaInicial.Text = cldFechaIniciar.SelectedDate.ToLongDateString();
            cldFechaIniciar.Visible = false;
        }

        protected void cldFechaFinal_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaFinal.Text = cldFechaFinal.SelectedDate.ToLongDateString();
            cldFechaFinal.Visible = false;
        }

        protected void btnFechaFinal_Click(object sender, EventArgs e)
        {
            if (cldFechaFinal.Visible)
            {
                cldFechaFinal.Visible = false;
            }
            else
            {
                cldFechaFinal.Visible = true;
            }

        }


    }
}