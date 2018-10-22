using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;
namespace papiro.Negocio
{
    public class ContactoVenta
    {
        const113_papiroEntities db = new const113_papiroEntities();


        private int _IdContactoVenta;

        public int IdContactoVenta
        {
            get { return _IdContactoVenta; }
            set { _IdContactoVenta = value; }
        }

        private int _folio;

        public int Folio
        {
            get { return _folio; }
            set { _folio = value; }
        }

        private string _contacto;

        public string Contacto
        {
            get { return _contacto; }
            set { _contacto = value; }
        }

        private string _medio;

        public string Medio
        {
            get { return _medio; }
            set { _medio = value; }
        }

        private double _documento;

        public double Documento
        {
            get { return _documento; }
            set { _documento = value; }
        }




        public bool Create()
        {

            try
            {
                DALC.contacto_venta contactoVenta = new contacto_venta();
                
                contactoVenta.Id_contacto_venta = this.IdContactoVenta;
                contactoVenta.folio = this.Folio;
                contactoVenta.contacto = this.Contacto;
                contactoVenta.medio = this.Medio;
                contactoVenta.documento = this.Documento;

                db.contacto_venta.Add(contactoVenta);

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
