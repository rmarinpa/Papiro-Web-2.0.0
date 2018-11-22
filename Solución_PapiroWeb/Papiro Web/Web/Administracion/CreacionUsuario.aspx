<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="CreacionUsuario.aspx.cs" Inherits="Papiro_Web.Web.Administracion.CreacionUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container fadeIn fast">
        <div class="card">
            <div class="card-body">
                <h3 class="text-center">Creación de Usuario</h3>
                <div class="form-group">
                    <label for="lblPass">Ingresa el nombre de Usuario</label>
                    <asp:TextBox ID="txtNombreUsuario" CssClass="form-control" runat="server"></asp:TextBox>
                    <small class="form-text text-muted">Ingresa el nombre de usuario.</small>
                </div>
                <div class="form-group">
                    <label for="lblNuevaPass">Ingrese una Contraseña</label>
                    <asp:TextBox ID="txtPass" CssClass="form-control" MaxLength="25" TextMode="Password" runat="server"></asp:TextBox>
                    <small class="form-text text-muted">La contraseña debe contener más de 8 caracteres.</small>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="La nueva contraseña debe contener mínimo 8 caracteres" ForeColor="Red" ControlToValidate="txtPass" ValidationExpression="[0-9a-zA-Z]{8,}"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="lblNuevaPass">Confirma tu nueva contraseña</label>
                    <asp:TextBox ID="txtConfirmarPass" CssClass="form-control" MaxLength="25" TextMode="Password" runat="server"></asp:TextBox>
                    <small class="form-text text-muted">Ingresa nuevamente la nueva contraseña.</small>
                </div>
                <div class="form-group">
                    <label for="lblDepartamento">Ingresa al Departamento que tendrá acceso el usuario</label>
                    <asp:DropDownList ID="ddlDepartamento" CssClass="dropdown-item-text" runat="server">
                        <asp:ListItem Value="0">--Selecione Departamento--</asp:ListItem>
                        <asp:ListItem Value="1">Ventas</asp:ListItem>
                        <asp:ListItem Value="2">Facturación</asp:ListItem>
                        <asp:ListItem Value="3">Administración</asp:ListItem>
                        <asp:ListItem Value="3">Cobranza</asp:ListItem>
                        <asp:ListItem Value="4">Servicio Técnico</asp:ListItem>
                        <asp:ListItem Value="5">Lógistica</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <!-- Button trigger modal -->
                <asp:Button ID="btnAgregarUsuario" CssClass="btn btn-outline-danger" runat="server" Text="Ingresar Usuario" OnClick="btnAgregarUsuario_Click" />
            </div>
            <asp:GridView ID="gvListadoUsuarios" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ReadUsuario" TypeName="papiro.Negocio.Usuario"></asp:ObjectDataSource>
            
        </div>
    </div>
</asp:Content>
