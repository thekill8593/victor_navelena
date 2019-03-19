using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gestion_documental.codigo;
using gestion_documental.BusinessObjects;
using gestion_documental.DataAccessLayer;
using gestion_documental.Utils;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string cClave = TxtClave.Text;
         string cUsuario = TxtUsuario.Text;
        
         int codigo = new UsuariosManagement().CheckLogin(cUsuario, cClave);
         if (codigo != 0)
         {
             Usuarios usuario = new UsuariosManagement().GetUsuariosById(codigo);
             SessionDocumental.UsuarioInicioSession = usuario;
             Response.Redirect("docPendi.aspx");
         }
         else
         {
             SessionDocumental.UsuarioInicioSession = null;
             //throw new Exception("No coincide usuario o contraseña");
         }


    }

    
}
