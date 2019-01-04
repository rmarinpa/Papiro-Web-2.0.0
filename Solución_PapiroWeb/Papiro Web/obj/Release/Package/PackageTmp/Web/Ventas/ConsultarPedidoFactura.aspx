<%@ Page Title="Consultar pedidos de facturas" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ConsultarPedidoFactura.aspx.cs" Inherits="PapiroWeb.Web.Ventas.ConsultarPedidoFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container main-container fadeIn fast">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Notas de pedidos
                </a>
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
                            <asp:Button ID="btnConsutarInicial" runat="server" CssClass="btn btn-outline-danger" Text="Mostrar Calendario" OnClick="btnConsutarInicial_Click" />

                            <asp:TextBox ID="txtFechaInicial" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                            <asp:Calendar ID="cldFechaIniciar" runat="server" OnSelectionChanged="cldFechaIniciar_SelectionChanged"></asp:Calendar>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="lblFechaFinal">Fecha Final</label>
                            <i class="fa fa-calendar"></i>
                            <asp:Button ID="btnFechaFinal" CssClass="btn btn-outline-danger" runat="server" Text="Mostrar Calendario" OnClick="btnFechaFinal_Click" />
                            <asp:TextBox ID="txtFechaFinal" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                            <asp:Calendar ID="cldFechaFinal" runat="server" OnSelectionChanged="cldFechaFinal_SelectionChanged"></asp:Calendar>
                        </div>
                        <asp:GridView ID="dgvHistorialPedidos" CssClass="table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT folio, numero_pedido, cliente, DATE_FORMAT(Fecha, '%d/%m/%Y') As Fecha, toma_pedido, Hora, SumaDeventa_neta FROM folio_fecha8 WHERE ((Fecha &gt;= ?) AND (Fecha &lt;= ?)) ORDER BY folio desc">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtFechaInicial" Name="Fecha" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="txtFechaFinal" Name="Fecha2" PropertyName="Text" Type="DateTime" />
                            </SelectParameters>
                        </asp:SqlDataSource>
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

                    <!--
                    <div class="form-row">
                        <asp:Button ID="btnBuscar" CssClass="btn btn-outline-danger" runat="server" Text="Actualizar" OnClick="btnBuscar_Click" />
                    </div>
                    -->
                </div>

            </div>
            <!--Fin de primera pestaña-->

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                <asp:GridView ID="dgvHistorialPendientes" CssClass="table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT folio, numero_pedido, cliente, DATE_FORMAT(Fecha, '%d/%m/%Y') As Fecha, toma_pedido, Hora, SumaDeventa_neta FROM folio_fecha8 WHERE ((numero_pedido = ?) AND (Fecha &gt;= ?)) ORDER BY Fecha, folio">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="numero_pedido" Type="String" />
                        <asp:Parameter DefaultValue="2016-10-01" Name="Fecha" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <!--Fin de segunda pestaña-->
        </div>
    </div>

</asp:Content>
