using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Usuario
    {
        //Se crea instancia de negocio
        const113_papiroEntities db = new const113_papiroEntities();

        //Se mapean las propiedades del Entity Framework
        private int cod_Usuario;

        public int Cod_Usuario
        {
            get { return cod_Usuario; }
            set { cod_Usuario = value; }
        }


        private string _nombre;

        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        private string _password;

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        private string _obra;

        public string Obra
        {
            get { return _obra; }
            set { _obra = value; }
        }
        //Metodo para validar el usuario
        public Usuario LoginUsuario(string username, string password)
        {
            try
            {
                //Validamos el usuario y lo rescatamos de la BD
                DALC.usuario user = (from u in db.usuario
                                     where u.nombre.Equals(username)
                                     && u.password.Equals(password)
                                     select u).First();

                //Se retorna nuevo usuario
                return new Usuario()
                {
                    Nombre = user.nombre,
                    Password = user.password,
                    Obra = user.Obra
                };
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return null;
            }
        }


        public bool UpdateContrasena()
        {
            try
            {

                DALC.usuario usuario = (from u in db.usuario
                                        where u.nombre.Equals(this.Nombre)
                                         select u).First();
                this.Cod_Usuario = usuario.cod_usuario;

                db.usuario.Find(this.Cod_Usuario);

                usuario.password = this.Password;

                db.Entry(usuario).State = System.Data.EntityState.Modified;

                db.SaveChanges();

                return true;


            }
            catch (Exception ex)
            {

                return false;
            }
        }


    }
}
