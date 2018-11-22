<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ConfigUsuario.aspx.cs" Inherits="PapiroWeb.Web.Ventas.ConfigUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container fadeIn fast">
        <div class="card">
            <div class="card-body">
                <h3 class="text-center">Cambio de contraseña</h3>
                <div class="form-group">
                    <label for="lblPass">Ingresa tu contraseña</label>
                    <asp:TextBox ID="txtActualPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <small class="form-text text-muted">Ingresa tu contraseña actual.</small>
                </div>
                <div class="form-group">
                    <label for="lblNuevaPass">Nueva Contraseña</label>
                    <asp:TextBox ID="txtNuevaPass" CssClass="form-control" MaxLength="25" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="La nueva contraseña debe contener mínimo 8 caracteres" ForeColor="Red" ControlToValidate="txtNuevaPass" ValidationExpression="[0-8,a-z]{8,25}"></asp:RegularExpressionValidator>
                    <small class="form-text text-muted">Tu nueva contraseña debe contener más de 8 caracteres.</small>
                </div>
                <div class="form-group">
                    <label for="lblNuevaPass">Confirma tu nueva contraseña</label>
                    <asp:TextBox ID="txtConfirmarPass" CssClass="form-control" MaxLength="25" TextMode="Password" runat="server"></asp:TextBox>

                    <small class="form-text text-muted">Ingresa nuevamente tu nueva contraseña.</small>
                </div>
                <asp:Button ID="btnCambiarContraseña" CssClass="btn btn-outline-danger" runat="server" Text="Cambiar contraseña" OnClick="btnCambiarContraseña_Click" />
            </div>
        </div>
    </div>
</asp:Content>
