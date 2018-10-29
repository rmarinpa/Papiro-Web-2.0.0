<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Papiro_Web.Web.Login" %>

<!doctype html>
<html lang="es">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Iniciar sesión</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/LoginStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/umd/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.bundle.min.js"></script>
</head>


<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <asp:Login ID="loginUsuario" runat="server" OnAuthenticate="loginUsuario_Authenticate">
                            <LayoutTemplate>
                                <div class="card-body">
                                    <h5 class="card-title text-center"><i class="fa fa-sign-in-alt"></i>Ingreso</h5>
                                    <div class="form-label-group">
                                        <!-- Nombre de usuario -->
                                        <label for="ingresoUsuario">
                                        Usuario</label>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="loginUsuario">*</asp:RequiredFieldValidator>
                                    </div>
                                    <!-- Contraseña -->
                                    <div class="form-label-group">
                                        <label for="ingresoPassword">
                                        Password</label>
                                        <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="loginUsuario">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="custom-control custom-checkbox mb-3">
                                        <!-- Checkbox-->
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                    </div>
                                    <div class="form-label-group">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </div>
                                    <!-- Botón -->
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btn btn-lg btn btn-outline-danger btn-block text-uppercase" Text="Inicio de sesión" ValidationGroup="loginUsuario" />
                                    <hr class="my-4" />
                                    <!-- Otros botones-->
                            </LayoutTemplate>
                        </asp:Login>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Scripts -->



    <!-- Fin de Scripts -->
</body>
</html>
