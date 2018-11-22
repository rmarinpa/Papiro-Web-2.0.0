<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="MenuVentas.aspx.cs" Inherits="PapiroWeb.Web.Ventas.MenuVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="wrapper" class="animated fadeIn fast">
        <div id="content-wrapper">

            <div class="container-fluid">
                <br />
                <!-- DataTables Example -->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Ultimas ventas
                        <asp:Label ID="lblUsuario" runat="server" Visible="False" ></asp:Label>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="gvUltimasVentas"  CssClass="table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowSorting="True">
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT cliente As Cliente, rut As Rut, senal_advertencia As Senal, familia_1 As FamiliaI, familia_2 As FamiliaII, familia_3 As FamiliaIII, descripcion As Descripcion, cantidad As Cantidad, venta_total As VentaTotal,  forma_pago As FormadePago, DATE_FORMAT(fecha, '%d/%m/%Y') As Fecha, numero_folio As Folio FROM venta4 WHERE (toma_pedido = ?) ORDER BY fecha DESC">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblUsuario" Name="toma_pedido" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </div>

                    <div class="card-footer small text-muted">Actualizado: </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->







</asp:Content>
