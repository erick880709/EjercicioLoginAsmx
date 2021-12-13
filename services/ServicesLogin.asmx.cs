using EjercicioLoginAsmx.BL;
using EjercicioLoginAsmx.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace EjercicioLoginAsmx.services
{
    /// <summary>
    /// Descripción breve de ServicesLogin
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicesLogin : System.Web.Services.WebService
    {
        UsuarioBL usuarioBl = new UsuarioBL();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }
        [WebMethod]
        public string Login(string user, string password)
        {
            string resul = "";
            Usuario users = new Usuario();
            if (!string.IsNullOrEmpty(user) && !string.IsNullOrEmpty(password))
            {
                users = usuarioBl.ExisteUsuario(user, password);

                if(users != null)
                {
                    resul = "200";
                }
                else
                {
                    resul = "203";
                }
            }
            return resul;
        }
    }
}
