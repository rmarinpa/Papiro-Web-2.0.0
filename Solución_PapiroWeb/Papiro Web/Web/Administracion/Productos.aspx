<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Papiro_Web.Web.Administracion.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--IMPORTANTE, AL TERMINAR EL DESARROLLO, MOVER LOS SCRIPT A ARCHIVOS JS -->
    <!--AutoComplete-->
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <script type="text/javascript">
        $(function () {
            $('#<%=txtDescripcion.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Productos.aspx/GetDescripcion",
                        data: "{'pre':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf=8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, erroThrown) {
                            alert(textStatus);
                        }
                    });
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $('#<%=txtCodigo.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Productos.aspx/GetCodigo",
                        data: "{'pre':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf=8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, erroThrown) {
                            alert(textStatus);
                        }
                    });
                }
            });
        });
    </script>

    <h1 class="text-center">Productos</h1>
    <hr />
    <div class="container fadeIn fast">
        <h2>Datos de productos</h2>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="lblCodigo">Código del producto</label>
                <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarCodigo" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por código" OnClick="btnBuscarCodigo_Click" />
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group col-md-6">
                <label for="lblDesripcion">Descripcion del producto</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtPrecioMin" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
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
            <div class="form-group col-md-3">
                <label for="lblTipo">Tipo</label>
                <asp:TextBox ID="txtTipo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label for="lblFamilia1">Familia 1</label>
                <asp:TextBox ID="txtFamilia1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label for="lblFamilia2">Familia 2</label>
                <asp:TextBox ID="txtFamilia2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
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
