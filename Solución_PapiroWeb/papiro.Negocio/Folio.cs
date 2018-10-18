using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;
namespace papiro.Negocio
{
    public class Folio
    {
        const113_papiroEntities db = new const113_papiroEntities();

        private int _idFolio;

        public int IdFolio
        {
            get { return _idFolio; }
            set { _idFolio = value; }
        }

        private double _nroFolio;

        public double NroFolio
        {
            get { return _nroFolio; }
            set { _nroFolio = value + 1; }
        }

        private string _numeroPedido;

        public string NumeroPedido
        {
            get { return _numeroPedido; }
            set { _numeroPedido = value; }
        }


        private string _cliente;

        public string Cliente
        {
            get { return _cliente; }
            set { _cliente = value; }
        }

        //Create folio de venta

        public bool Create()
        {

            try
            {
                DALC.folio4 folio4 = new folio4();

                folio4.Id_folio = this.IdFolio;
                folio4.folio = this.NroFolio;
                folio4.numero_pedido = this.NumeroPedido;
                folio4.cliente = this.Cliente;

                db.folio4.Add(folio4);

                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }


        public bool UltimoFolio()
        {
            try
            {
                var ultimoFolio = (from f in db.folio4
                                   orderby f.folio descending
                                   select f).First();

                this.NroFolio = ultimoFolio.folio;
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
