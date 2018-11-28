<%@ Page Title="Generación de pedido" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="GenerarPedido.aspx.cs" Inherits="PapiroWeb.Web.Ventas.GenerarPedido" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

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
                        url: "GenerarPedido.aspx/GetDescripcion",
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
            $('#<%=txtCodigoProducto.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "GenerarPedido.aspx/GetCodigo",
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
            $('#<%=txtRazonSocial.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "GenerarPedido.aspx/GetRazon",
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
                        url: "GenerarPedido.aspx/GetRut",
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


    <div class="container animated fadeIn fast">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Cliente</a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Historial de Cliente</a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Venta</a>
                <a class="nav-item nav-link" id="nav-pendiente-tab" data-toggle="tab" href="#nav-pendiente" role="tab" aria-controls="nav-pendiente" aria-selected="false">Productos pendientes de cliente </a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="card-header">
                    <h5>Busqueda de cliente</h5>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="lblRazon">Razón Social</label>
                        <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarRazon" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por razón" AutoPostback="false" OnClick="btnBuscarRazon_Click" />
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lblRut">Rut Empresa</label>
                        <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarRut" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por rut" OnClick="btnBuscarRut_Click" />
                    </div>
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group ">
                    <label for="inputAddress">Dirección</label>
                    <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="inputCity">Comuna</label>
                        <asp:TextBox ID="txtComuna" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputState">Señal de advertencia</label>
                        <asp:TextBox ID="txtSenal" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputState">Ejecutivo</label>
                        <asp:TextBox ID="txtEjecutivo" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputState">Forma de Pago</label>
                        <asp:TextBox ID="txtFormaPago" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputState">Condición</label>
                        <asp:TextBox ID="txtCondicion" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="lblTipoDocumento">Tipo de documento</label>
                        <asp:DropDownList ID="ddlTipoDocuento" CssClass="dropdown-item" runat="server">
                            <asp:ListItem Value="0">Selecione tipo de documento</asp:ListItem>
                            <asp:ListItem Value="1">Factura</asp:ListItem>
                            <asp:ListItem Value="2">Guía de Despacho</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="card-header">
                    <h5>Contacto Comercial</h5>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="lblNombre">Nombre</label>
                        <asp:TextBox ID="txtNombreContacto" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lblRut">Email</label>
                        <asp:TextBox ID="txtEmailContacto" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lblRut">Teléfono</label>
                        <asp:TextBox ID="txtTelefonoContacto" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lblRut">Cargo</label>
                        <asp:TextBox ID="txtCargoContacto" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Inicio cartas -->
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body col-sm-6">
                                <h5 class="card-title">Tipo de contacto</h5>
                                <asp:RadioButton ID="rbWhatsapp" runat="server" />
                                <i class="fab fa-whatsapp fa-3x"></i>
                                <asp:RadioButton ID="rbMail" runat="server" />
                                <i class="far fa-envelope fa-3x"></i>
                                <br />
                                <asp:RadioButton ID="rbLlamada" runat="server" />
                                <i class="fas fa-phone fa-3x"></i>
                                <asp:RadioButton ID="rdPersonal" runat="server" />
                                <i class="far fa-user fa-3x"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">

                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter">
                                    Retiro de documentos</button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter2">
                                    Estado De cuenta de clientes        
                                </button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter3">
                                    Historial de Bloqueos
                                </button>
                                <asp:Button ID="btnLimpiar" CssClass="btn btn-outline-danger" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin cartas -->

            </div>

            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                <asp:GridView ID="gvHistorialCliente" CssClass="table table-responsive table-bordered table-hover" PageSize="6" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" EnableSortingAndPagingCallbacks="True" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        <div class="alert alert-success" role="alert">
                            <i class="fas fa-question"></i>
                            <h4 class="alert-heading">Sin información!</h4>
                            <p>No se ha encontrado historial de datos del cliente .</p>
                        </div>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT numero_folio, fecha, descripcion, medidas, cantidad, unit_venta_m2, precio_cliente, venta_neta FROM venta_nota WHERE (rut = ?) order by numero_folio desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtRutEmpresa" Name="rut" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                <div class="card-header">
                    <h5>Buscar producto</h5>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="lblCodigo">Código</label>
                        <asp:TextBox ID="txtCodigoProducto" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarCodigo" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por código" OnClick="btnBuscarCodigo_Click" />

                    </div>
                    <div class="form-group col-md-3">
                        <label for="lblDescripcion">Descripción</label>
                        <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnDescripcion" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por descripcion" />
                    </div>
                    <div class="form-group col-md-3">
                        <label for="lblFamilia1">Familia I</label>
                        <asp:TextBox ID="txtFamiliaI" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarFamI" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por familia I" />

                    </div>
                    <div class="form-group col-md-3">
                        <label for="lblFamiliaII">Familia II</label>
                        <asp:TextBox ID="txtFamiliaII" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="lblFamiliaIII">Familia III</label>
                        <asp:TextBox ID="txtFamiliaIII" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtAreaNegocio" Visible="false" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Registro de ventas</h5>
                                <asp:Label ID="lblFolio" runat="server" Text="Folio"></asp:Label>
                                <asp:TextBox ID="txtFolio" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtFolioUsado" CssClass="form-control" Visible="false" runat="server">False</asp:TextBox>
                                <asp:TextBox ID="txtTipo1" Visible="false" runat="server"></asp:TextBox>
                                <label for="lblMarca">Marca</label>
                                <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblAncho">Ancho</label>
                                <asp:TextBox ID="txtAncho" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblLargo">Largo</label>
                                <asp:TextBox ID="txtLargo" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblAreaCalculada">Área calculada</label>
                                <asp:TextBox ID="txtAreaCalculada" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Venta</h5>
                                <label for="lblCantidad">Cantidad</label>
                                <asp:TextBox ID="txtCantidadProducto" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />
                                <label for="lblPrecioM2">Precio M2</label>
                                <asp:TextBox ID="txtPrecioM2" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioMax">Precio Max</label>
                                <asp:TextBox ID="txtPrecioMax" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioMin">Precio Min</label>
                                <asp:TextBox ID="txtPrecioMin" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblAreaTotal">Área Total</label>
                                <asp:TextBox ID="txtAreaTotal" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioUn">Precio Un</label>
                                <asp:TextBox ID="txtPrecioUn" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblMontoNeto">Monto Neto</label>
                                <asp:TextBox ID="txtMontoNeto" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:Button ID="btnCalcularTodo" runat="server" Text="Button" OnClick="btnCalcularTodo_Click" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lblNeto" runat="server" Text="NETO"></asp:Label>
                                <asp:TextBox ID="txtNeto" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-3 mb-3">
                                <asp:Label ID="lblIva" runat="server" Text="IVA"></asp:Label>
                                <asp:TextBox ID="txtIva" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-3 mb-3">
                                <asp:Label ID="lblTotal" runat="server" Text="TOTAL"></asp:Label>
                                <asp:TextBox ID="txtTotalPedido" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- Botón para agregar productos -->


                <i class="fas fa-shopping-cart"></i>
                <asp:Button ID="btnGenerarPedido" runat="server" CssClass="btn btn-outline-danger" Text="Agregar al carrito" OnClick="btnGenerarPedido_Click" UseSubmitBehavior="False" />
                <!-- Botón para ver los productos agregados -->
                <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#ModalPedidosAgregados">
                    Ver carrito</button>
            </div>

            <div class="tab-pane fade" id="nav-pendiente" role="tabpanel" aria-labelledby="nav-pendiente-tab">
                <asp:GridView ID="gvProductosGuiaPendiente" runat="server" CssClass="table table-responsive table-bordered table-hover" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" EnableSortingAndPagingCallbacks="True">
                    <EmptyDataTemplate>
                        <div class="alert alert-success" role="alert">
                            <i class="fas fa-question"></i>
                            <h4 class="alert-heading">Sin información!</h4>
                            <p>No se ha encontrado historial de datos del cliente .</p>
                        </div>
                    </EmptyDataTemplate>
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT * FROM dif_producto WHERE (rut = ?) AND CAST(numero_pedido AS UNSIGNED) <> 0 AND Pend > 0 order by numero_pedido desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtRutEmpresa" Name="rut" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>

    <!-- Div -->

    <!-- Modal de pedidos agregados table -->
    <div class="modal fade animated fadeIn fast" id="ModalPedidosAgregados" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pedidos Agregados</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:GridView ID="gvPedidosAgregados" CssClass="table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSource4">
                        <EmptyDataTemplate>
                            <div class="alert alert-success" role="alert">
                                <h4 class="alert-heading">Sin información!</h4>
                                <p>No se ha agregado ningún producto al carrito.</p>
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT fecha, numero_folio, cliente, codigo_producto,toma_pedido FROM venta4 WHERE (numero_folio = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtFolio" Name="numero_folio" PropertyName="Text" Type="Double" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#InformacionPedidoModal">
                        Generar Nota de Pedido
                    </button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal informacion pedido -->
    <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Retiro de documentos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal Estado Cuenta Clientes -->
    <div class="modal fade animated fadeIn fast" id="ModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalCenterTitle2">Estado de cuenta cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal de bloqueos -->
    <div class="modal fade bd-example-modal-lg animated fadeIn fast" id="ModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalCenterTitle">Historial de bloqueos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:GridView ID="gvHistorialBloqueo" runat="server" CssClass="table table-responsive table-bordered table-hover" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <EmptyDataTemplate>
                            No se encuentran datos de bloqueo
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT usuario, fecha, hora, bloqueo_desbloqueo, senal_advertencia, razon FROM bloqueo WHERE (rut = ?) order by fecha desc">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtRutEmpresa" Name="rut" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Información de Pedido -->
    <div class="modal fade animated fadeIn fast" id="InformacionPedidoModal" tabindex="-1" role="dialog" aria-labelledby="InformacionPedidoModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="InformacionPedidoModalLabel">Información de pedido</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="lblRetiraCliente">Retira Cliente</label>
                            <asp:DropDownList ID="ddlRetiraCliente" CssClass="form-control" AutoPostBack="false" runat="server">
                                <asp:ListItem Value="0">--Seleccione --</asp:ListItem>
                                <asp:ListItem Value="1">Sí</asp:ListItem>
                                <asp:ListItem Value="2">No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputCity">Tipo de despacho</label>
                            <asp:DropDownList ID="ddlTipoDespacho" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0">-- Seleccione tipo de despacho --</asp:ListItem>
                                <asp:ListItem Value="1">Facturación</asp:ListItem>
                                <asp:ListItem Value="2">Despacho</asp:ListItem>
                                <asp:ListItem Value="3">Otra</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlFechaDespacho" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0">--Seleccione día de despacho --</asp:ListItem>
                                <asp:ListItem Value="Hoy">Hoy</asp:ListItem>
                                <asp:ListItem>Mañana</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Dirección</label>
                            <asp:TextBox ID="txtDireccionDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">Otra</label>
                            <asp:TextBox ID="txtComunaDespacho" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Solicitado por</label>
                            <asp:TextBox ID="txtSolicitado" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Observación</label>
                            <asp:TextBox ID="txtxObservaciones" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <asp:Button ID="btnTerminarPedido" CssClass="btn btn-outline-info" runat="server" Text="Finalizar pedido" OnClick="btnTerminarPedido_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
