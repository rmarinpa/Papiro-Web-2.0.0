<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ConsultarPedidoFactura.aspx.cs" Inherits="PapiroWeb.Web.Ventas.ConsultarPedidoFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Notas de pedidos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Pedidos Pendientes</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="container">
                    <h3>Busqueda por fecha</h3>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="lblFechaInicial">Fecha inicial</label>
                            <i class="fa fa-calendar"></i>
                            <asp:Button ID="btnConsutarInicial" runat="server" CssClass="btn btn-primary" Text="Consultar Fecha" OnClick="btnConsutarInicial_Click" />

                            <asp:TextBox ID="txtFechaInicial" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                            <asp:Calendar ID="cldFechaIniciar" runat="server" OnSelectionChanged="cldFechaIniciar_SelectionChanged"></asp:Calendar>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="lblFechaFinal">Fecha Final</label>
                            <i class="fa fa-calendar"></i>
                            <asp:Button ID="btnFechaFinal" CssClass="btn btn-primary" runat="server" Text="Consultar Fecha" OnClick="btnFechaFinal_Click" />

                            <asp:TextBox ID="txtFechaFinal" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                            <asp:Calendar ID="cldFechaFinal" runat="server" OnSelectionChanged="cldFechaFinal_SelectionChanged"></asp:Calendar>
                        </div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </div>

                    <hr />
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="lblNotasPedido">Total notas de pedido</label>
                            <asp:TextBox ID="txtTotalNotas" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="lblTotalFacturado">Total facturado</label>
                            <asp:TextBox ID="txtTotalFacturado" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <asp:Button ID="btnBuscar" CssClass="btn btn-primary" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
            <!--Fin de primera pestaña-->

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <asp:GridView ID="GridView2" runat="server"></asp:GridView>
            </div>

            <!--Fin de segunda pestaña-->
        </div>
    </div>

</asp:Content>
