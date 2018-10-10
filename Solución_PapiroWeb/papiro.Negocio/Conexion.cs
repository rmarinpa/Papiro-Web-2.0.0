using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace papiro.Negocio
{
    public class Conexion
    {
        public MySqlConnection cone;

        //Conexión solo para vistas, ya que, EF no puede mapearlas
        //Sugerencia a futuro: Convertir las vistas en Procedimientos Almacenados
        public Conexion()
        {
            cone = new MySqlConnection("server=localhost;user id=root;password=toor;database=const113_papiro");
        }

        public bool AbrirConexion()
        {
            try
            {
                cone.Open();
                return true;
            }
            catch (MySqlException ex)
            {

                return false;
                throw ex;
            }

        }

        public bool CerrarConexion()
        {
            try
            {
                cone.Close();
                return true; 
            }
            catch (MySqlException ex)
            {
                return false;
                throw ex;
            }
        }
    }
}
