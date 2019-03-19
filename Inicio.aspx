<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="gestion_documental.Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html  xmlns="http://www.w3.org/1999/xhtml" style="height:100%;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=IE8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIO - Centurión Doc</title>
<!--Adobe Edge Runtime-->
    <script type="text/javascript" charset="utf-8" src="index_edgePreload.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
    <link href="Styles/Default.css" rel="Stylesheet" />
<!--Adobe Edge Runtime End-->

</head>

<body>   
    

    <div id="Stage" class="centurion container">            
        <div class="form edgeLoad-centurion">
            <div class="form-container">
              <form runat="server">
                  <div class="form-container">
                    <div class="form-logo">
                      <img src="images/2019/logo1.png" alt="" />
                    </div>
                    <span class="form-title">Acceso al sistema</span>

                    <div class="form-input form-user">
                      <div class="input">
                        <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Usuario"></asp:TextBox>
                      </div>
                    </div>

                    <div class="form-input form-password">
                      <div class="input">
                        <asp:TextBox ID="TxtClave" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                      </div>
                    </div>

                    <div class="finger-print">
                      <div class="image">
                        <img src="images/2019/huella.png" alt="" />
                      </div>
                      <div class="text">
                        <span>Coloque su dedo índice derecho encima</span>
                      </div>
                    </div>

                    <div class="captcha">
                      <div class="g-recaptcha"  data-sitekey="6LfyJ5UUAAAAANrLy46XJWWEYHg0aJMmbB_R-Npv" margin: 0 auto;"></div>
                      <span id="captcha-required" style="display:block; margin-left: 40px; margin-top: 10px; color:red; display: none;">El captcha es obligatorio</span>
                      <span id="captcha-error" style="display:block; margin-left: 40px; margin-top: 10px; color:red; display: none;">Captcha incorrecto</span>
                    </div>

                    <div class="button-container">                       
                      <asp:Button ID="Button1" runat="server" Text="Ingresar"  CssClass="button"
                        onclick="Button1_Click" />
                    </div>

                      <div style="display: none;">
                          <asp:CheckBox ID="ChkActiveDirectory" runat="server" AutoPostBack="True" 
                        oncheckedchanged="ChkActiveDirectory_CheckedChanged" />
                      </div>

                    <div class="forgot-pw-container">
                      <a href="#">¿Olvide mi <span>contraseña</span>?</a>
                    </div>
                  </div>
              </form>
            </div>
        </div>
    </div>            


    <script type="text/javascript" src='https://www.google.com/recaptcha/api.js'></script>
       
</body>
</html>