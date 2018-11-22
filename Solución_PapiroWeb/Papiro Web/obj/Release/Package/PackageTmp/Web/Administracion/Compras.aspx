<%@ Page Title="Compras" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="PapiroWeb.Web.Administracion.Compras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../Scripts/Reloj.js"></script>

    <div class="container">
        <h2 class="text-center">Modulo de compras</h2>
        <div class="row">
            <div class="col">
                <label for="lblCodigo">Usuario</label>
                <asp:TextBox ID="txtUsuario" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="col align-self-end">
                <label for="lblCodigo">Hora</label>
                <div id="reloj" style="font-size: 20px;"></div>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <h5>Busqueda </h5>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="lblCategoriaI">Categoría I</label>
                <asp:TextBox ID="txtRut" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarCat" CssClass="btn btn-primary" runat="server" Text="Buscar categoría I" />
            </div>
            <div class="form-group col-md-4">
                <label for="lclCategoriaII">Categoría II</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarCatII" CssClass="btn btn-primary" runat="server" Text="Buscar categoría II" />
            </div>
            <div class="form-group col-md-4">
                <label for="lblNombre">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnNombre" CssClass="btn btn-primary" runat="server" Text="Buscar por nombre" />
            </div>
            <asp:GridView ID="gvInfoDatos" runat="server"></asp:GridView>
            <div class="form-group col-md-4">
                <label for="lblCodigo">Código</label>
                <asp:TextBox ID="txtCodigo" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-4">
                <label for="lblCodigo">Descripción</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblCodigo">Ancho</label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCodigo">Largo</label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCodigo">Cantidad</label>
                <asp:TextBox ID="txtCantidad" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCodigo">Stock</label>
                <asp:TextBox ID="TextBox4" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblCodigo">N° de Items</label>
                <asp:TextBox ID="txtItems" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="btnComprar" CssClass="btn btn-primary" runat="server" Text="Comprar" />
        <i class="fa fa-shopping-cart"></i>
        <asp:Button ID="btnGenerar" CssClass="btn btn-primary" runat="server" Text="Generar compra" />
        <i class="fa fa-shopping-cart"></i>
    </div>
</asp:Content>
