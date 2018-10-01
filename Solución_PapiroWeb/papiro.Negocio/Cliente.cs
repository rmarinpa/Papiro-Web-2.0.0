using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Cliente
    {
        const113_papiroEntities db = new const113_papiroEntities();

        private int _idCliente;

        public int IdCliente
        {
            get { return _idCliente; }
            set { _idCliente = value; }
        }

        private string _rut;

        public string Rut
        {
            get { return _rut; }
            set { _rut = value; }
        }

        private string _nombreCliente;

        public string NombreCliente
        {
            get { return _nombreCliente; }
            set { _nombreCliente = value; }
        }


        private string _direccion;

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }
        private string _comuna;

        public string Comuna
        {
            get { return _comuna; }
            set { _comuna = value; }
        }
        private string _telefono;

        public string Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }
        private string _contactoComercial;

        public string ContactoComercial
        {
            get { return _contactoComercial; }
            set { _contactoComercial = value; }
        }

        private string _cargoContactoComercial;

        public string CargoContactoComercial
        {
            get { return _cargoContactoComercial; }
            set { _cargoContactoComercial = value; }
        }

        private string _telefonoContactoComercial;

        public string TelefonoContactoComercial
        {
            get { return _telefonoContactoComercial; }
            set { _telefonoContactoComercial = value; }
        }

        private string _emailContactoComercial;

        public string EmailContactoComercial
        {
            get { return _emailContactoComercial; }
            set { _emailContactoComercial = value; }
        }

        private string _contactoPagoProveedores;

        public string ContactoPagoProveedores
        {
            get { return _contactoPagoProveedores; }
            set { _contactoPagoProveedores = value; }
        }
        private string _cargoContactoPago;

        public string CargoContactoPago
        {
            get { return _cargoContactoPago; }
            set { _cargoContactoPago = value; }
        }
        private string _telefonoCargoContacto;

        public string TelefonoCargoContacto
        {
            get { return _telefonoCargoContacto; }
            set { _telefonoCargoContacto = value; }
        }

        private string _emailContactoPago;

        public string EmailContactoPago
        {
            get { return _emailContactoPago; }
            set { _emailContactoPago = value; }
        }

        private string _cond;

        public string Cond
        {
            get { return _cond; }
            set { _cond = value; }
        }

        private string _formaPago;

        public string FormaPago
        {
            get { return _formaPago; }
            set { _formaPago = value; }
        }


        private string _ejecDigital;

        public string EjecDigital
        {
            get { return _ejecDigital; }
            set { _ejecDigital = value; }
        }


        private string _ejecMedia;

        public string EjecMedia
        {
            get { return _ejecMedia; }
            set { _ejecMedia = value; }
        }

        private string _ejecLed;

        public string EjecLed
        {
            get { return _ejecLed; }
            set { _ejecLed = value; }
        }
        private string _ejecMac;

        public string EjecMac
        {
            get { return _ejecMac; }
            set { _ejecMac = value; }
        }

        private string _direccionDespacho;

        public string DireccionDespacho
        {
            get { return _direccionDespacho; }
            set { _direccionDespacho = value; }
        }

        private string _emailDespacho;

        public string EmailDespacho
        {
            get { return _emailDespacho; }
            set { _emailDespacho = value; }
        }

        private string _telefonosDespacho;

        public string TelefonosDespacho
        {
            get { return _telefonosDespacho; }
            set { _telefonosDespacho = value; }
        }

        private string _contactoDespacho;

        public string ContactoDespacho
        {
            get { return _contactoDespacho; }
            set { _contactoDespacho = value; }
        }
        private string _telefonoDespacho;

        public string TelefonoDespacho
        {
            get { return _telefonoDespacho; }
            set { _telefonoDespacho = value; }
        }


        private string _senalAdvertencia;

        public string SenalAdvertencia
        {
            get { return _senalAdvertencia; }
            set { _senalAdvertencia = value; }
        }

        private string _estado;

        public string Estado
        {
            get { return _estado; }
            set { _estado = value; }
        }

        private string _lineaCredito;

        public string LineaCredito
        {
            get { return _lineaCredito; }
            set { _lineaCredito = value; }
        }

        private string _dicom;

        public string Dicom
        {
            get { return _dicom; }
            set { _dicom = value; }
        }

        private string _fechaIngreso;

        public string FechaIngreso
        {
            get { return _fechaIngreso; }
            set { _fechaIngreso = value; }
        }

        private string _observacion;

        public string Observacion
        {
            get { return _observacion; }
            set { _observacion = value; }
        }

        private string _maquinas;

        public string Maquinas
        {
            get { return _maquinas; }
            set { _maquinas = value; }
        }

        private string _emailContacto2;

        public string EmailContacto2
        {
            get { return _emailContacto2; }
            set { _emailContacto2 = value; }
        }

        private string _actualizado;

        public string Actualizado
        {
            get { return _actualizado; }
            set { _actualizado = value; }
        }

        private string _giro;

        public string Giro
        {
            get { return _giro; }
            set { _giro = value; }
        }

        private string _emailContactoDespacho2;

        public string EmailContactoDespacho2
        {
            get { return _emailContactoDespacho2; }
            set { _emailContactoDespacho2 = value; }
        }

        private string _referencia;

        public string Referencia
        {
            get { return _referencia; }
            set { _referencia = value; }
        }

        private string _fichaCliente;

        public string FichaCliente
        {
            get { return _fichaCliente; }
            set { _fichaCliente = value; }
        }

        private string _encargadoProduccion;

        public string EncargadoProduccion
        {
            get { return _encargadoProduccion; }
            set { _encargadoProduccion = value; }
        }

        private string _maquina16;

        public string Maquina16
        {
            get { return _maquina16; }
            set { _maquina16 = value; }
        }

        private string _maquina18;

        public string Maquina18
        {
            get { return _maquina18; }
            set { _maquina18 = value; }
        }

        private string _maquina320;

        public string Maquinas320
        {
            get { return _maquina320; }
            set { _maquina320 = value; }
        }

        private string _ejecNuevo;

        public string EjecNuevo
        {
            get { return _ejecNuevo; }
            set { _ejecNuevo = value; }
        }


        private string _ejecCobranza;

        public string EjecCobranza
        {
            get { return _ejecCobranza; }
            set { _ejecCobranza = value; }
        }

        //Metodos CRUD.


        public bool Create()
        {
            try
            {
                DALC.clientes cliente = new clientes();
                cliente.rut = this.Rut;
                cliente.clientes1 = this.NombreCliente;
                cliente.direccion = this.Direccion;
                cliente.comuna = this.Comuna;
                cliente.telefonos = this.Telefono;
                cliente.contacto_comercial = this.ContactoComercial;
                cliente.cargo_contacto_comercial = this.CargoContactoComercial;
                cliente.telefonos_contacto = this.TelefonoContactoComercial;
                cliente.email_contacto_comercial = this.EmailContactoComercial;
                cliente.contacto_pago_proveedores = this.ContactoPagoProveedores;
                cliente.cargo_contacto_pago = this.CargoContactoPago;
                cliente.telefonos_cargo_contacto = this.TelefonoCargoContacto;
                cliente.email_contacto_pago = this.EmailContactoPago;
                cliente.cond = this.Cond;
                cliente.forma_de_pago = this.FormaPago;
                cliente.ejec_digital = this.EjecDigital;
                cliente.ejec_media = this.EjecMedia;
                cliente.ejec_led = this.EjecLed;
                cliente.ejec_mac = this.EjecMac;
                cliente.direccion_despacho = this.DireccionDespacho;
                cliente.email_despacho = this.EmailDespacho;
                cliente.telefonos_despacho = this.TelefonosDespacho;
                cliente.contacto_despacho = this.ContactoDespacho;
                cliente.telefono_despacho = this.TelefonoDespacho;
                cliente.senal_advertencia = this.SenalAdvertencia;
                cliente.estado = this.Estado;
                cliente.linea_credito = this.LineaCredito;
                cliente.dicom = this.Dicom;
                cliente.fecha_ingreso = this.FechaIngreso;
                cliente.observacion = this.Observacion;
                cliente.maquinas = this.Maquinas;
                cliente.email_contacto2 = this.EmailContacto2;
                cliente.actualizado = this.Actualizado;
                cliente.giro = this.Giro;
                cliente.email_contacto_despacho2 = this.EmailContactoDespacho2;
                cliente.referencia = this.Referencia;
                cliente.ficha_cliente = this.FichaCliente;
                cliente.encargado_produccion = this.EncargadoProduccion;
                cliente.maquina16 = this.Maquina16;
                cliente.maquina18 = this.Maquina18;
                cliente.maquina320 = this.Maquinas320;
                cliente.ejec_new = this.EjecNuevo;
                cliente.ejec_cobranza = this.EjecCobranza;

                db.clientes.Add(cliente);

                db.SaveChanges();

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool ReadRazon()
        {
            try
            {
                DALC.clientes cliente = (from c in db.clientes
                                         where c.clientes1.Equals(this.NombreCliente)
                                         select c).First();

                this.IdCliente = cliente.id_clientes;
                this.Rut = cliente.rut;
                this.Direccion = cliente.direccion;
                this.Comuna = cliente.comuna;
                this.Telefono = cliente.telefonos;
                this.ContactoComercial = cliente.contacto_comercial;
                this.CargoContactoComercial = cliente.cargo_contacto_comercial;
                this.TelefonoContactoComercial = cliente.telefonos_contacto;
                this.EmailContactoComercial = cliente.email_contacto_comercial;
                this.ContactoPagoProveedores = cliente.contacto_pago_proveedores;
                this.CargoContactoPago = cliente.cargo_contacto_pago;
                this.TelefonoCargoContacto = cliente.telefonos_cargo_contacto;
                this.EmailContactoPago = cliente.email_contacto_pago;
                this.Cond = cliente.cond;
                this.FormaPago = cliente.forma_de_pago;
                this.EjecDigital = cliente.ejec_digital;
                this.EjecMedia = cliente.ejec_media;
                this.EjecLed = cliente.ejec_led;
                this.EjecMac = cliente.ejec_mac;
                this.DireccionDespacho = cliente.direccion_despacho;
                this.EmailDespacho = cliente.email_despacho;
                this.TelefonosDespacho = cliente.telefonos_despacho;
                this.ContactoDespacho = cliente.contacto_despacho;
                this.TelefonoDespacho = cliente.telefono_despacho;
                this.SenalAdvertencia = cliente.senal_advertencia;
                this.Estado = cliente.estado;
                this.LineaCredito = cliente.linea_credito;
                this.Dicom = cliente.dicom;
                this.FechaIngreso = cliente.fecha_ingreso;
                this.Observacion = cliente.observacion;
                this.Maquinas = cliente.maquinas;
                this.EmailContacto2 = cliente.email_contacto2;
                this.Actualizado = cliente.actualizado;
                this.Giro = cliente.giro;
                this.EmailContactoDespacho2 = cliente.email_contacto_despacho2;
                this.Referencia = cliente.referencia;
                this.FichaCliente = cliente.ficha_cliente;
                this.EncargadoProduccion = cliente.encargado_produccion;
                this.Maquina16 = cliente.maquina16;
                this.Maquina18 = cliente.maquina18;
                this.Maquinas320 = cliente.maquina320;
                this.EjecNuevo = cliente.ejec_new;
                this.EjecCobranza = cliente.ejec_cobranza;


                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool ReadRut()
        {
            try
            {
                DALC.clientes cliente = (from c in db.clientes
                                         where c.rut.Equals(this.Rut)
                                         select c).First();

                this.IdCliente = cliente.id_clientes;
                this.NombreCliente = cliente.clientes1;
                this.Direccion = cliente.direccion;
                this.Comuna = cliente.comuna;
                this.Telefono = cliente.telefonos;
                this.ContactoComercial = cliente.contacto_comercial;
                this.CargoContactoComercial = cliente.cargo_contacto_comercial;
                this.TelefonoContactoComercial = cliente.telefonos_contacto;
                this.EmailContactoComercial = cliente.email_contacto_comercial;
                this.ContactoPagoProveedores = cliente.contacto_pago_proveedores;
                this.CargoContactoPago = cliente.cargo_contacto_pago;
                this.TelefonoCargoContacto = cliente.telefonos_cargo_contacto;
                this.EmailContactoPago = cliente.email_contacto_pago;
                this.Cond = cliente.cond;
                this.FormaPago = cliente.forma_de_pago;
                this.EjecDigital = cliente.ejec_digital;
                this.EjecMedia = cliente.ejec_media;
                this.EjecLed = cliente.ejec_led;
                this.EjecMac = cliente.ejec_mac;
                this.DireccionDespacho = cliente.direccion_despacho;
                this.EmailDespacho = cliente.email_despacho;
                this.TelefonosDespacho = cliente.telefonos_despacho;
                this.ContactoDespacho = cliente.contacto_despacho;
                this.TelefonoDespacho = cliente.telefono_despacho;
                this.SenalAdvertencia = cliente.senal_advertencia;
                this.Estado = cliente.estado;
                this.LineaCredito = cliente.linea_credito;
                this.Dicom = cliente.dicom;
                this.FechaIngreso = cliente.fecha_ingreso;
                this.Observacion = cliente.observacion;
                this.Maquinas = cliente.maquinas;
                this.EmailContacto2 = cliente.email_contacto2;
                this.Actualizado = cliente.actualizado;
                this.Giro = cliente.giro;
                this.EmailContactoDespacho2 = cliente.email_contacto_despacho2;
                this.Referencia = cliente.referencia;
                this.FichaCliente = cliente.ficha_cliente;
                this.EncargadoProduccion = cliente.encargado_produccion;
                this.Maquina16 = cliente.maquina16;
                this.Maquina18 = cliente.maquina18;
                this.Maquinas320 = cliente.maquina320;
                this.EjecNuevo = cliente.ejec_new;
                this.EjecCobranza = cliente.ejec_cobranza;


                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Update()
        {
            try
            {
                DALC.clientes cliente = db.clientes.Find(this.IdCliente);

                cliente.rut = this.Rut;
                cliente.clientes1 = this.NombreCliente;
                cliente.direccion = this.Direccion;
                cliente.comuna = this.Comuna;
                cliente.telefonos = this.Telefono;
                cliente.contacto_comercial = this.ContactoComercial;
                cliente.cargo_contacto_comercial = this.CargoContactoComercial;
                cliente.telefonos_contacto = this.TelefonoContactoComercial;
                cliente.email_contacto_comercial = this.EmailContactoComercial;
                cliente.contacto_pago_proveedores = this.ContactoPagoProveedores;
                cliente.cargo_contacto_pago = this.CargoContactoPago;
                cliente.telefonos_cargo_contacto = this.TelefonoCargoContacto;
                cliente.email_contacto_pago = this.EmailContactoPago;
                cliente.cond = this.Cond;
                cliente.forma_de_pago = this.FormaPago;
                cliente.ejec_digital = this.EjecDigital;
                cliente.ejec_media = this.EjecMedia;
                cliente.ejec_led = this.EjecLed;
                cliente.ejec_mac = this.EjecMac;
                cliente.direccion_despacho = this.DireccionDespacho;
                cliente.email_despacho = this.EmailDespacho;
                cliente.telefonos_despacho = this.TelefonosDespacho;
                cliente.contacto_despacho = this.ContactoDespacho;
                cliente.telefono_despacho = this.TelefonoDespacho;
                cliente.senal_advertencia = this.SenalAdvertencia;
                cliente.estado = this.Estado;
                cliente.linea_credito = this.LineaCredito;
                cliente.dicom = this.Dicom;
                cliente.fecha_ingreso = this.FechaIngreso;
                cliente.observacion = this.Observacion;
                cliente.maquinas = this.Maquinas;
                cliente.email_contacto2 = this.EmailContacto2;
                cliente.actualizado = this.Actualizado;
                cliente.giro = this.Giro;
                cliente.email_contacto_despacho2 = this.EmailContactoDespacho2;
                cliente.referencia = this.Referencia;
                cliente.ficha_cliente = this.FichaCliente;
                cliente.encargado_produccion = this.EncargadoProduccion;
                cliente.maquina16 = this.Maquina16;
                cliente.maquina18 = this.Maquina18;
                cliente.maquina320 = this.Maquinas320;
                cliente.ejec_new = this.EjecNuevo;
                cliente.ejec_cobranza = this.EjecCobranza;

                db.Entry(cliente).State = System.Data.EntityState.Modified;

                db.SaveChanges();

                return true;


            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                DALC.clientes cliente = db.clientes.Find(this.IdCliente);

                db.clientes.Remove(cliente);

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
