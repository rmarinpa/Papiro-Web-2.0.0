using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Ventas
    {
        const113_papiroEntities db = new const113_papiroEntities();

        private int _idVentas;

        public int IdVentas
        {
            get { return _idVentas; }
            set { _idVentas = value; }
        }
        private string _cliente;

        public string Cliente
        {
            get { return _cliente; }
            set { _cliente = value; }
        }

        private string _rut;

        public string Rut
        {
            get { return _rut; }
            set { _rut = value; }
        }

        private string _areaNegocio;

        public string AreaNegocio
        {
            get { return _areaNegocio; }
            set { _areaNegocio = value; }
        }

        private string _senalAdvertencia;

        public string SenalAdvertencia
        {
            get { return _senalAdvertencia; }
            set { _senalAdvertencia = value; }
        }

        private string _comuna;

        public string Comuna
        {
            get { return _comuna; }
            set { _comuna = value; }
        }

        private string _familia1;

        public string Familia_1
        {
            get { return _familia1; }
            set { _familia1 = value; }
        }

        private string _familia2;

        public string Familia_2
        {
            get { return _familia2; }
            set { _familia2 = value; }
        }

        private string _familia3;

        public string Familia_3
        {
            get { return _familia3; }
            set { _familia3 = value; }
        }
        private string _tipo1;

        public string Tipo1
        {
            get { return _tipo1; }
            set { _tipo1 = value; }
        }

        private string _medidas;

        public string Medidas
        {
            get { return _medidas; }
            set { _medidas = value; }
        }

        private string _codigoProducto;

        public string CodigoProducto
        {
            get { return _codigoProducto; }
            set { _codigoProducto = value; }
        }

        private string _proveedor;

        public string Proveedor
        {
            get { return _proveedor; }
            set { _proveedor = value; }
        }

        private string _descripcion;

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }
        private decimal _areaCal;

        public decimal AreaCal
        {
            get { return _areaCal; }
            set { _areaCal = value; }
        }

        private decimal _cantidad;

        public decimal Cantidad
        {
            get { return _cantidad; }
            set { _cantidad = value; }
        }

        private decimal _areaTotal;

        public decimal AreaTotal
        {
            get { return _areaTotal; }
            set { _areaTotal = value; }
        }

        private decimal _ventaRollo;

        public decimal VentaRollo
        {
            get { return _ventaRollo; }
            set { _ventaRollo = value; }
        }

        private double _unitVentaV2;

        public double UnitVentaM2
        {
            get { return _unitVentaV2; }
            set { _unitVentaV2 = value; }
        }


        private decimal _ventaNeta;

        public decimal VentaNeta
        {
            get { return _ventaNeta; }
            set { _ventaNeta = value; }
        }

        private decimal _ventaIva;

        public decimal VentaIva
        {
            get { return _ventaIva; }
            set { _ventaIva = value; }
        }

        private decimal _ventaTotal;

        public decimal VentaTotal
        {
            get { return _ventaTotal; }
            set { _ventaTotal = value; }
        }

        private string _condicion;

        public string Condicion
        {
            get { return _condicion; }
            set { _condicion = value; }
        }

        private string _formaPago;

        public string FormaPago
        {
            get { return _formaPago; }
            set { _formaPago = value; }
        }

        private string _diasPago;

        public string DiasPago
        {
            get { return _diasPago; }
            set { _diasPago = value; }
        }

        private string _ejecutivo;

        public string Ejecutivo
        {
            get { return _ejecutivo; }
            set { _ejecutivo = value; }
        }

        private string _observacion;

        public string Observacion
        {
            get { return _observacion; }
            set { _observacion = value; }
        }

        private decimal _precioLista;

        public decimal PrecioLista
        {
            get { return _precioLista; }
            set { _precioLista = value; }
        }

        private int _precioCliente;

        public int PrecioCliente
        {
            get { return _precioCliente; }
            set { _precioCliente = value; }
        }

        private DateTime _fecha;

        public DateTime Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }
        private decimal _numeroPedido;

        public decimal NumeroPedido
        {
            get { return _numeroPedido; }
            set { _numeroPedido = value; }
        }

        private DateTime _fechaAct;

        public DateTime FechaAct
        {
            get { return _fechaAct; }
            set { _fechaAct = value; }
        }

        private DateTime _hora;

        public DateTime Hora
        {
            get { return _hora; }
            set { _hora = value; }
        }


        private decimal _descuento;

        public decimal Descuento
        {
            get { return _descuento; }
            set { _descuento = value; }
        }


        private decimal _numeroFolio;

        public decimal NumeroFolio
        {
            get { return _numeroFolio; }
            set { _numeroFolio = value; }
        }


        private string _tomaPedido;

        public string TomaPedido
        {
            get { return _tomaPedido; }
            set { _tomaPedido = value; }
        }
        private decimal _ancho;

        public decimal Ancho
        {
            get { return _ancho; }
            set { _ancho = value; }
        }

        private decimal _largo;

        public decimal Largo
        {
            get { return _largo; }
            set { _largo = value; }
        }

        private string _solicitado;

        public string Solicitado
        {
            get { return _solicitado; }
            set { _solicitado = value; }
        }

        public bool LeerAreaM2()
        {
            try
            {
                DALC.venta4 venta = (from v in db.venta4
                                     where v.codigo_producto.Equals(this.CodigoProducto)
                                     && v.cliente.Equals(this.Cliente)
                                     select v).First();

                this.UnitVentaM2 = venta.unit_venta_m2;
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }



    }
}
