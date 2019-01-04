using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Papiro_Web.Web.Ventas
{
    public partial class VisitaTecnica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("ricardomarinpalacios@gmail.com");
                msg.To.Add(txtEmailSolicitante.Text);
                msg.Subject = txtMotivoVisita.Text;

                msg.Body = String.Format(Environment.NewLine) + "Estimado/a: " + txtRazonSocial.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Se ha procesado su solicitud de visita técnica, a continuación se mostrará el detalle de su solicitud: " +
                            String.Format(Environment.NewLine) +
                            "Solicitante:" + txtSolicitante.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Teléfono:" + txtTelefonoSolicitante.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "E-Mail: " + txtEmailSolicitante.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Dirección: " + txtDireccionVisita.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Comuna: " + txtComunaVisita.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Fecha Propuesta: " + DateTime.Now.ToString() + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Hora Pruesta: AM" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Motivo: " + txtMotivoVisita.Text + "" + String.Format(Environment.NewLine) +
                            String.Format(Environment.NewLine) +
                            "Observación: " + txtObservacion.Text + "" + String.Format(Environment.NewLine)
                            ;

                MailAddress ms = new MailAddress("ricardomarinpalacios@gmail.com");
                msg.CC.Add(ms);

                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 587;
                sc.Credentials = new NetworkCredential("ricardomarinpalacios@gmail.com", "darkwolf1");

                sc.EnableSsl = true;
                sc.Send(msg);
                Response.Write("Correo enviado");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}