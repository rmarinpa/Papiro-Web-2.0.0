<%@ Page Title="Generación de pedido" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="GenerarPedido.aspx.cs" Inherits="PapiroWeb.Web.Ventas.GenerarPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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


    <div class="container">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Cliente</a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Historial de Cliente</a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Venta
                </a>
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
                        <asp:Button ID="btnBuscarRazon" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por razón" OnClick="btnBuscarRazon_Click" OnClientClick="Confirm()" />

                    </div>
                    <div class="form-group col-md-6">
                        <label for="lblRut">Rut Empresa</label>
                        <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarRut" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por rut" OnClick="btnBuscarRut_Click" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Dirección</label>
                    <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Comuna</label>
                        <asp:TextBox ID="txtComuna" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">Señal de advertencia</label>
                        <asp:TextBox ID="txtSenal" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
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
                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                <i class="fab fa-whatsapp fa-3x"></i>
                                <asp:RadioButton ID="RadioButton3" runat="server" />
                                <i class="far fa-envelope fa-3x"></i>
                                <br />
                                <asp:RadioButton ID="RadioButton2" runat="server" />
                                <i class="fas fa-phone fa-3x"></i>
                                <asp:RadioButton ID="RadioButton4" runat="server" />
                                <i class="far fa-user fa-3x"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter">
                                    Retiro de documentos
                                </button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter2">
                                    Estado De cuenta de clientes        
                                </button>
                                <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalCenter3">
                                    Historial de Bloqueos
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin cartas -->
            </div>

            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <asp:GridView ID="gvHistorialCliente" CssClass="table-active" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" EnableSortingAndPagingCallbacks="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        No se encuentra historial de datos del cliente
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT numero_folio, fecha, descripcion, medidas, cantidad, unit_venta_m2, precio_cliente, venta_neta FROM venta_nota WHERE (rut = ?) order by fecha desc">
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
                        <asp:Button ID="btnBuscarCodigo" CssClass="btn btn-outline-danger" runat="server" Text="Buscar por código" />

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
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Registro de ventas</h5>
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
                                <asp:DropDownList ID="ddlCantidad" CssClass="dropdown-toggle" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <label for="lblPrecioM2">Precio M2</label>
                                <asp:TextBox ID="txtPrecioM2" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioMax">Precio Max</label>
                                <asp:TextBox ID="txtPrecioMax" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioMin">Precio Min</label>
                                <asp:TextBox ID="txtPrecioMin" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblAreaTotal">Área Total</label>
                                <asp:TextBox ID="txtAreaTotal" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblPrecioUn">Precio Un</label>
                                <asp:TextBox ID="txtPrecioUn" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                                <label for="lblMontoNeto">Monto Neto</label>
                                <asp:TextBox ID="txtMontoNeto" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <i class="fas fa-shopping-cart"></i>
                <asp:Button ID="btnGenerarPedido" runat="server" CssClass="btn btn-outline-danger" Text="Agregar producto" />

            </div>
        </div>

        <!-- Div -->

        <!-- Modal -->
        <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Retiro de documentos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        asd
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Div 2 -->


        <!-- Modal -->
        <div class="modal fade" id="ModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalCenterTitle2">Estado de cuenta cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal de bloqueos -->
        <div class="modal fade bd-example-modal-lg" id="ModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalCenterTitle">Historial de bloqueos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:GridView ID="gvHistorialBloqueo" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <!-- Fin del Modal -->



    </div>
</asp:Content>
