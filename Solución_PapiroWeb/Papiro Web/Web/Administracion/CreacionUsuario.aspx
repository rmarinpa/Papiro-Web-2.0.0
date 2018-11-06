<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="CreacionUsuario.aspx.cs" Inherits="Papiro_Web.Web.Administracion.CreacionUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
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
                    <small class="form-text text-muted">Tu nueva contraseña debe contener más de 8 caracteres.</small>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="La nueva contraseña debe contener mínimo 8 caracteres" ForeColor="Red" ControlToValidate="txtPass" ValidationExpression="[0-8,a-z]{8,25}"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="lblNuevaPass">Confirma tu nueva contraseña</label>
                    <asp:TextBox ID="txtConfirmarPass" CssClass="form-control" MaxLength="25" TextMode="Password" runat="server"></asp:TextBox>
                    <small class="form-text text-muted">Ingresa nuevamente tu nueva contraseña.</small>
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
            <asp:GridView ID="gvListadoUsuarios" CssClass="table table-responsive table-bordered table-hover" runat="server" DataSourceID="EntityDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cod_usuario">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="cod_usuario" HeaderText="cod_usuario" ReadOnly="True" SortExpression="cod_usuario" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="Obra" HeaderText="Obra" SortExpression="Obra" />
                </Columns>
            </asp:GridView>
            
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=const113_papiroEntities" DefaultContainerName="const113_papiroEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="usuario">
            </asp:EntityDataSource>
            
        </div>
    </div>
</asp:Content>
