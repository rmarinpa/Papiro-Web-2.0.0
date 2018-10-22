using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;
namespace papiro.Negocio
{
    public class NotasPedidos
    {
        const113_papiroEntities db = new const113_papiroEntities();

        private int _idNotas;

        public int IdNotas
        {
            get { return _idNotas; }
            set { _idNotas = value; }
        }

        private double _folio;

        public double Folio
        {
            get { return _folio; }
            set { _folio = value; }
        }

        private DateTime _fecha;

        public DateTime Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }

        private DateTime _hora;

        public DateTime Hora
        {
            get { return _hora; }
            set { _hora = value; }
        }
        private string _fechaDespacho;

        public string FechaDespacho
        {
            get { return _fechaDespacho; }
            set { _fechaDespacho = value; }
        }

        private string _tomaPedido;

        public string TomaPedido
        {
            get { return _tomaPedido; }
            set { _tomaPedido = value; }
        }

        private string _solicitado;

        public string Solicitado
        {
            get { return _solicitado; }
            set { _solicitado = value; }
        }

        private string _observaciones;

        public string Observaciones
        {
            get { return _observaciones; }
            set { _observaciones = value; }
        }

        private string _comunaDespacho;

        public string ComunaDespacho
        {
            get { return _comunaDespacho; }
            set { _comunaDespacho = value; }
        }

        private string _direccionDespacho;

        public string DireccionDespacho
        {
            get { return _direccionDespacho; }
            set { _direccionDespacho = value; }
        }

        private bool _despachado;

        public bool Despachado
        {
            get { return _despachado; }
            set { _despachado = value; }
        }


        private bool _retiraCliente;

        public bool RetiraCliente
        {
            get { return _retiraCliente; }
            set { _retiraCliente = value; }
        }

        //Metodos

        public bool Create()
        {
            
            try
            {
                DALC.notas_de_pedido notapedido = new notas_de_pedido();
                notapedido.Id_notas_de_pedido = this.IdNotas;
                notapedido.Folio = this.Folio;
                notapedido.Fecha = this.Fecha;
                notapedido.Hora = this.Hora.TimeOfDay;
                notapedido.Fecha_desp = this.FechaDespacho;
                notapedido.toma_pedido = this.TomaPedido;
                notapedido.solicitado = this.Solicitado;
                notapedido.observaciones = this.Observaciones;
                notapedido.comuna_despacho = this.ComunaDespacho;
                notapedido.direccion_despacho = this.DireccionDespacho;
                notapedido.despachado = this.Despachado;
                notapedido.retira_cliente = this.RetiraCliente;

                db.notas_de_pedido.Add(notapedido);
                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
