<%@ Page Title="ImprimirPedidosNC" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ImprimirPedidosNC.aspx.cs" Inherits="PapiroWeb.Web.Ventas.ImprimirPedidosNC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <h2 class="text-center">Imprimir Pedidos Notas de Credito</h2>
        <hr />
        <div class="form-group">
            <label for="lblFecha">Filtrar por fecha</label>
            <asp:Calendar ID="cldFiltro" runat="server"></asp:Calendar>
            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Pedidos autorizados
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:GridView ID="gvPedidosAutorizados" runat="server"></asp:GridView>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
                        <asp:GridView ID="gvNotaCredito" runat="server"></asp:GridView>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        </table>
                    </div>
                </div>

                <div class="card-footer small text-muted">Actualizado: </div>
            </div>

            <!-- Fin del DataTable-->
            <asp:Button ID="btnGenerarInforme" runat="server" CssClass="btn btn-primary" Text="Generar informe" />
        </div>
    </div>
</asp:Content>
