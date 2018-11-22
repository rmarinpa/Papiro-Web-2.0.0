<%@ Page Title="Generar de Nota Credito" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="GenerarNotaCredito.aspx.cs" Inherits="PapiroWeb.Web.Ventas.GenerarNotaCredito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--AutoComplete-->
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



    <script type="text/javascript">
        $(function () {
            $('#<%=txtIdFactura.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "GenerarNotaCredito.aspx/GetFactura",
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

        <h2 class="text-center">Nota de crédito</h2>
        <hr />
        <div class="form-group">
            <div class="form-group col-md-4">
                <label for="lblFactura">Número de factura</label>
                <asp:TextBox ID="txtIdFactura" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarFactura" runat="server" CssClass="btn btn-primary" Text="Buscar factura" />
            </div>
            <div class="form-group col-md-4">
                <label for="lblRazonSocial">Razón social</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label for="lblRut">Rut</label>
                <asp:TextBox ID="txtRut" CssClass="form-control" runat="server"></asp:TextBox>
            </div>


            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Productos
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:GridView ID="gvProductos" Visible="false" runat="server"></asp:GridView>
                        <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                        </table>
                    </div>
                </div>

                <div class="card-footer small text-muted">Actualizado: </div>
            </div>

            <!-- Fin del DataTable-->

            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Nota de crédito
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:GridView ID="gvNotaCredito" Visible="false" runat="server"></asp:GridView>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        </table>
                    </div>
                </div>

                <div class="card-footer small text-muted">Actualizado: </div>
            </div>

            <!-- Fin del DataTable-->

            <h2 class="text-center">Acción</h2>
            <hr />
            <div class="form-group">
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton1" runat="server" />
                    <label for="lblMontos">1.- C/montos ($)</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton2" runat="server" />
                    <label for="lblRut">2.- C/montos (Q)</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton3" runat="server" />
                    <label for="lblRut">3.- Anular</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton4" runat="server" />
                    <label for="lblRut">4.- C/Texto</label>
                </div>
            </div>
            <h2 class="text-center">Error de</h2>
            <hr />
            <div class="form-group">
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton5" runat="server" />
                    <label for="lblVentas">Ventas</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton6" runat="server" />
                    <label for="lblCliente">Cliente</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton7" runat="server" />
                    <label for="lblFacturacion">Facturacion</label>
                </div>
                <div class="form-group col-md-2">
                    <asp:RadioButton ID="RadioButton8" runat="server" />
                    <label for="lblLogistica">Logistica</label>
                </div>
            </div>
            <label for="lblObservacion">Observación</label>
            <div class="form-group">

                <textarea id="TextAreaObservacion" cols="20" rows="2"></textarea>
            </div>



        </div>

    </div>
</asp:Content>
