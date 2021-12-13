using EjercicioLoginAsmx.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjercicioLoginAsmx.BL
{
    public class UsuarioBL
    {
        LoginDBEntities db = new LoginDBEntities();

        public Usuario ExisteUsuario(string user, string password)
        {
            Usuario users = new Usuario();

            var UsuarioExiste = db.Usuario.FirstOrDefault(u =>
                                u.Nombre.Equals(user)
                                && u.Password.Equals(password));

            if(UsuarioExiste!=null)
            {
                return UsuarioExiste;
            }

            return users;
        }

    }
}