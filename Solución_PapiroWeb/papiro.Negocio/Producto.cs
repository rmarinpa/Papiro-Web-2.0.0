using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Producto
    {
        const113_papiroEntities db = new const113_papiroEntities();
        private int _id_Codigos;

        public int Id_Codigos
        {
            get { return _id_Codigos; }
            set { _id_Codigos = value; }
        }

        private string _codigo;

        public string Codigo
        {
            get { return _codigo; }
            set { _codigo = value; }
        }

        private string _marca;

        public string Marca
        {
            get { return _marca; }
            set { _marca = value; }
        }

        private string _descripcion;

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }


        private string _tipo_1;

        public string Tipo_1
        {
            get { return _tipo_1; }
            set { _tipo_1 = value; }
        }
        private string _medidas;

        public string Medidas
        {
            get { return _medidas; }
            set { _medidas = value; }
        }

        private double _unid_Paquete;

        public double Unid_Paquete
        {
            get { return _unid_Paquete; }
            set { _unid_Paquete = value; }
        }


        private double _ancho;

        public double Ancho
        {
            get { return _ancho; }
            set { _ancho = value; }
        }

        private double _largo;

        public double Largo
        {
            get { return _largo; }
            set { _largo = value; }
        }

        private double _area;

        public double Area
        {
            get { return _area; }
            set { _area = value; }
        }

        private string _descripcion_2;

        public string Descripcion_2
        {
            get { return _descripcion_2; }
            set { _descripcion_2 = value; }
        }

        private string _area_negocio;

        public string Area_Negocio
        {
            get { return _area_negocio; }
            set { _area_negocio = value; }
        }


        private string _proveedor;

        public string Proveedor
        {
            get { return _proveedor; }
            set { _proveedor = value; }
        }

        private string _mapa;

        public string Mapa
        {
            get { return _mapa; }
            set { _mapa = value; }
        }

        private string _descripcion_3;

        public string Descripcion_3
        {
            get { return _descripcion_3; }
            set { _descripcion_3 = value; }
        }


        private string _obs;

        public string Obs
        {
            get { return _obs; }
            set { _obs = value; }
        }

        private string _familia;

        public string Familia
        {
            get { return _familia; }
            set { _familia = value; }
        }

        private string _familia2;

        public string Familia2
        {
            get { return _familia2; }
            set { _familia2 = value; }
        }

        private string _familia3;

        public string Familia3
        {
            get { return _familia3; }
            set { _familia3 = value; }
        }

        private double _stock;

        public double Stock
        {
            get { return _stock; }
            set { _stock = value; }
        }

        private double _medida_unid;

        public double Medida_Unidad
        {
            get { return _medida_unid; }
            set { _medida_unid = value; }
        }

        private double _precio_lista;

        public double Precio_Lista
        {
            get { return _precio_lista; }
            set { _precio_lista = value; }
        }

        private DateTime _fecha_caduci;

        public DateTime Fecha_Caducidad
        {
            get { return _fecha_caduci; }
            set { _fecha_caduci = value; }
        }

        private double _precio_max;

        public double Precio_Max
        {
            get { return _precio_max; }
            set { _precio_max = value; }
        }

        private double _precio_Min;

        public double Precio_Min
        {
            get { return _precio_Min; }
            set { _precio_Min = value; }
        }

        private double _activo;

        public double Activo
        {
            get { return _activo; }
            set { _activo = value; }
        }

        private string _categoria;

        public string Categoria
        {
            get { return _categoria; }
            set { _categoria = value; }
        }

        private string _categoria2;

        public string Categoria2
        {
            get { return _categoria2; }
            set { _categoria2 = value; }
        }

        public bool CreateProducto()
        {
            try
            {
                DALC.codigos4 productos = new codigos4();

                producto.id_codigos = this.Id_Codigos;
                producto.Codigo = this.Codigo;
                producto.Marca = this.Marca;
                producto.Descripcion = this.Descripcion;
                producto.Tipo_1 = this.Tipo_1;
                producto.medidas = this.Medidas;
                producto.unid_paquete = this.Unid_Paquete;
                producto.ancho = this.Ancho;
                producto.largo = this.Largo;
                producto.area = this.Area;
                producto.descripcion_2 = this.Descripcion_2;
                producto.area_negocio = this.Area_Negocio;
                producto.proveedor = this.Proveedor;
                producto.mapa = this.Mapa;
                producto.descripcion_3 = this.Descripcion_3;
                producto.obs = this.Obs;
                producto.familia = this.Familia;
                producto.familia_2 = this.Familia2;
                producto.familia_3 = this.Familia3;
                producto.stock = this.Stock;
                producto.medida_unid = this.Medida_Unidad;
                producto.Precio_lista = this.Precio_Lista;
                producto.fecha_caducidad = this.Fecha_Caducidad;
                producto.precio_max = this.Precio_Max;
                producto.precio_min = this.Precio_Min;
                producto.activo = this.Activo;
                producto.Categoria = this.Categoria;
                producto.Categoria2 = this.Categoria2; 


                db.codigos4.Add(productos);

                db.SaveChanges();


                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool LeerProducto()
        {
            try
            {
                DALC.codigos4 producto = (from c in db.codigos4
                                          where c.Codigo.Equals(this.Codigo)
                                          select c).First();

                this.Id_Codigos = producto.id_codigos;
                this.Codigo = producto.Codigo;
                this.Marca = producto.Marca;
                this.Descripcion = producto.Descripcion;
                this.Tipo_1 = producto.Tipo_1;
                this.Medidas = producto.medidas;
                this.Unid_Paquete = producto.unid_paquete;
                this.Ancho = producto.ancho;
                this.Largo = producto.largo;
                this.Area = producto.area;
                this.Descripcion_2 = producto.descripcion_2;
                this.Area_Negocio = producto.area_negocio;
                this.Proveedor = producto.proveedor;
                this.Mapa = producto.mapa;
                this.Descripcion_3 = producto.descripcion_3;
                this.Obs = producto.obs;
                this.Familia = producto.familia;
                this.Familia2 = producto.familia_2;
                this.Familia3 = producto.familia_3;
                this.Stock = producto.stock;
                this.Medida_Unidad = producto.medida_unid;
                this.Precio_Lista = producto.Precio_lista;
                this.Fecha_Caducidad = producto.fecha_caducidad;
                this.Precio_Max = producto.precio_max;
                this.Precio_Min = producto.precio_min;
                this.Activo = producto.activo;
                this.Categoria = producto.Categoria;
                this.Categoria2 = producto.Categoria2;

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

    }
}
