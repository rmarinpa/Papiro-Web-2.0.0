<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PapiroWeb.Web.Ventas.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--AutoComplete-->
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#<%=txtRazonSocial.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Clientes.aspx/GetRazon",
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
            $('#<%=txtRutEmpresa.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "Clientes.aspx/GetRut",
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

    <!--FinAutoComplete-->

    <div class="container">


        <div class="container">

            <h2 class="text-center">Información general</h2>
            <hr />
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="lblRut">Rut Empresa</label>
                    <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtIdCliente" Visible="false" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscarRut" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por rut" OnClick="btnBuscarRut_Click" />
                </div>

                <div class="form-group col-md-4">
                    <label for="lblRazonSocial">Razón social</label>
                    <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscarRazon" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por razón social" OnClick="btnBuscarRazon_Click" />
                </div>
                <div class="form-group col-md-4">
                    <label for="lblGiro">Giro</label>
                    <asp:TextBox ID="txtGiro" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="form-group">
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">Dirección</label>
                    <asp:TextBox ID="txtDireccionEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblComuna">Comuna</label>
                    <asp:TextBox ID="txtComunaEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblCiudad">Ciudad</label>
                    <asp:TextBox ID="txtCiudad" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefono">Teléfono</label>
                    <asp:TextBox ID="txtTelefonoEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Información contacto comercial</h2>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="lblNombre">Nombre</label>
                    <asp:TextBox ID="txtNombreContacto" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblCargo">Cargo</label>
                    <asp:TextBox ID="txtCargoContacto" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefono">Teléfono</label>
                    <asp:TextBox ID="txtTelefonoComercial" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEmail">E-Mail</label>
                    <asp:TextBox ID="txtEmailContacto" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Información contacto pago proveedores</h2>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="lblNombre">Nombre</label>
                    <asp:TextBox ID="txtNombreProveedores" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <label for="lblCargo">Cargo</label>
                    <asp:TextBox ID="txtCargoProveedores" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefono">Teléfono</label>
                    <asp:TextBox ID="txtTelefonoProveedores" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEmail">E-Mail</label>
                    <asp:TextBox ID="txtEmailProveedores" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEmail">E-Mail 2</label>
                    <asp:TextBox ID="txtEmailProveedores2" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Información contacto despacho</h2>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="lblNombre">Nombre</label>
                    <asp:TextBox ID="txtNombreDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefono">Teléfonos</label>
                    <asp:TextBox ID="txtTelefonoDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefonoDespacho2">Teléfono de contacto</label>
                    <asp:TextBox ID="txtTelefonoContacto" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblComuna">Comuna</label>
                    <asp:TextBox ID="txtComunaDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="lblDireccionDespacho">Dirección</label>
                    <asp:TextBox ID="txtDireccionDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEmail">E-Mail</label>
                    <asp:TextBox ID="txtEmailDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Condiciones de pago</h2>
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="lblPago">Condición de pago</label>
                    <asp:TextBox ID="txtCondicionPago" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblFormaPago">Forma de pago</label>
                    <asp:DropDownList ID="ddlformaPago" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="Seleccione Forma de Pago">Seleccione Forma de Pago</asp:ListItem>
                        <asp:ListItem>Cheque Anticipado</asp:ListItem>
                        <asp:ListItem>Cheque Contra Entrega</asp:ListItem>
                        <asp:ListItem>Cheque Mensual</asp:ListItem>
                        <asp:ListItem>Cheque Semanal</asp:ListItem>
                        <asp:ListItem>Crédito</asp:ListItem>
                        <asp:ListItem>Doc. Antes Vencimiento</asp:ListItem>
                        <asp:ListItem>Efectivo</asp:ListItem>
                        <asp:ListItem>Transferencia</asp:ListItem>
                        <asp:ListItem>Efectivo o Transferencia</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblLineaCredito">Línea de credito</label>
                    <asp:TextBox ID="txtLineaCredito" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblDicom">Dicom</label>
                    <asp:TextBox ID="txtDicom" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblTelefono">Señal Advertencia</label>
                    <asp:TextBox ID="txtSenal" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Ejecutivos</h2>
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="lblDigital">Ejec. Digital</label>
                    <asp:DropDownList ID="ddlEjecDigital" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecMedia">Ejec. Media</label>
                    <asp:DropDownList ID="ddlEjecMedia" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecLed">Ejec. Led</label>
                    <asp:DropDownList ID="ddlEjecLed" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecMac">Ejec Mac</label>
                    <asp:DropDownList ID="ddlEjecMac" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecNew">Ejec. New</label>
                    <asp:DropDownList ID="ddlEjecNew" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecCobranza">Ejec. Cobranza</label>
                    <asp:DropDownList ID="ddlEjecCob" CssClass="form-control" runat="server" Enabled="False">
                        <asp:ListItem Value="0">Seleccione Ejecutivo</asp:ListItem>
                        <asp:ListItem>FM</asp:ListItem>
                        <asp:ListItem>AVG</asp:ListItem>
                        <asp:ListItem>ES</asp:ListItem>
                        <asp:ListItem>VG</asp:ListItem>
                        <asp:ListItem>PAPIRO</asp:ListItem>
                        <asp:ListItem>OF-SS</asp:ListItem>
                        <asp:ListItem>TBV</asp:ListItem>
                        <asp:ListItem>AG</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <hr />
            <h2 class="text-center">Fechas y observaciones</h2>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="lblObservaciones">Observaciones</label>
                    <asp:TextBox ID="txtAreaObservacion" CssClass="form-control" Height="100" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="lblFechaIngreso">Fecha de ingreso</label>
                    <asp:TextBox ID="txtFechaIngreso" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="lblFechaActualizacion">Fecha de actualización</label>
                    <asp:TextBox ID="txtFechaActualizacion" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-1">
                    <label for="lblReferencia">Referencia</label>
                    <asp:TextBox ID="txtReferencia" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecNew">Ficha cliente</label>
                    <asp:DropDownList ID="ddlFichaCliente" CssClass="form-control" runat="server">
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-1">
                    <label for="lblEjecCobranza">Maquinas</label>
                    <asp:TextBox ID="txtMaquinas" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecCobranza">Encargado Prod</label>
                    <asp:TextBox ID="txtEncargadoProd" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecCobranza">Maquinas 1,60MT</label>
                    <asp:TextBox ID="txtMaquinas160" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecCobranza">Maquinas 1,80MT</label>
                    <asp:TextBox ID="txtMaquinas180" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-2">
                    <label for="lblEjecCobranza">Maquinas 3,20MT</label>
                    <asp:TextBox ID="txtMaquinas320" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <hr />
            <asp:Button ID="btnAgregar" CssClass="btn btn-outline-danger" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <asp:Button ID="btnModificar" CssClass="btn btn-outline-danger" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
            <asp:Button ID="btnEliminar" CssClass=" btn btn-outline-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
            <asp:Button ID="btnLimpiar" CssClass="btn btn-outline-danger" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
                Estado de cuenta cliente</button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
