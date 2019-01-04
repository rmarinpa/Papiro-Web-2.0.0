<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Papiro_Web.Web.Login" %>

<!doctype html>
<html lang="es-cl">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Iniciar sesión</title>
    <link href="../Content/Animate.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link href="../Content/LoginStyle.css" rel="stylesheet" />
</head>


<body>


    <form id="form1" runat="server">
        <div class="container animated fadeIn slow">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <asp:Login ID="loginUsuario" runat="server" OnAuthenticate="loginUsuario_Authenticate">
                            <LayoutTemplate>
                                <div class="card-body">
                                    <div class="text-center">
                                        <img src="../img/Papiro.gif" class="img-fluid" alt="Responsive image">
                                    </div>
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
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btn btn-lg btn btn-outline-danger btn-block " Text="Inicio de sesión" ValidationGroup="loginUsuario" />
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
