using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
        public bool CreateUsuario()
        {
            try
            {
                DALC.usuario usuario = new usuario();
                usuario.cod_usuario = this.cod_Usuario;
                usuario.nombre = this.Nombre;
                usuario.password = this.Password;
                usuario.Obra = this.Obra;
                string hash = "MVbxmVM4Ib";

                EncriptarPass(usuario.password, hash);


                usuario.password=  this.Password;

                db.usuario.Add(usuario);

                db.SaveChanges();


                return true;
            }
            catch (Exception)
            {

                return false;
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
        public String EncriptarPass(string password, string hash)
        {
            try
            {
                byte[] data = UTF8Encoding.UTF8.GetBytes(password);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.CBC, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripleDES.CreateEncryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        password = Convert.ToBase64String(results, 0, results.Length);
                        return Convert.ToBase64String(results, 0, results.Length);
                        //DesencriptarPass(password,hash);
                    }
                }
            }
            catch (Exception)
            {

                return null;
            }
        }

        public bool DesencriptarPass(string password, string hash)
        {
            try
            {
                byte[] data = Convert.FromBase64String(password);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.CBC, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripleDES.CreateDecryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        password = UTF8Encoding.UTF8.GetString(results);
                    }
                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
