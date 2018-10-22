<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Papiro_Web.Web.Administracion.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="text-center">Productos</h1>
    <hr />
    <div class="container">
        <h2>Datos de productos</h2>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="lblCodigo">Código del producto</label>
                <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>
                <button type="submit" class="btn btn-outline-primary">Buscar por código</button>
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group col-md-4">
                <label for="lblDesripcion">Descripcion del producto</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>
                <button type="submit" class="btn btn-outline-primary">Buscar por descripción</button>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblCodigoPrecio">Código Precio</label>
                <asp:TextBox ID="txtCodigoPrecio" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblMarca">Marca</label>
                <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblPrecioMax">Precio Máximo</label>
                <asp:TextBox ID="txtPrecioMaximo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblPrecioMin">Precio mínimo</label>
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="lblNombreProveedor">Nombre proveedor</label>
                <asp:TextBox ID="txtNombreProveedor" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />
        <h2>Caracteristicas y otras</h2>


        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblUnidad">Unidad paquete</label>
                <asp:TextBox ID="txtUnidadPaquete" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label for="lblMedidas">Medidas</label>
                <asp:TextBox ID="txtMedidas" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblAncho">Ancho</label>
                <asp:TextBox ID="txtAncho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblLargo">Largo</label>
                <asp:TextBox ID="txtLargo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblArea">Área</label>
                <asp:TextBox ID="txtArea" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblStock">Stock</label>
                <asp:TextBox ID="txtStock" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblTipo">Tipo</label>
                <asp:TextBox ID="txtTipo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblFamilia1">Familia 1</label>
                <asp:TextBox ID="txtFamilia1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblFamilia2">Familia 2</label>
                <asp:TextBox ID="txtFamilia2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblFamilia3">Familia 3</label>
                <asp:TextBox ID="txtFamilia3" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblAreaNeg">Área Neg</label>
                <asp:TextBox ID="txtAreaNeg" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCaducidad">Fecha de caducidad</label>
                <asp:TextBox ID="txtFechaCaducidad" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />
        <asp:Button ID="btnAgregar" CssClass="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
        <asp:Button ID="btnModificar" CssClass="btn btn-outline-primary" runat="server" Text="Modificar" />
        <asp:Button ID="btnEliminar" CssClass="btn btn-outline-primary" runat="server" Text="Eliminar" />
    </div>


</asp:Content>
