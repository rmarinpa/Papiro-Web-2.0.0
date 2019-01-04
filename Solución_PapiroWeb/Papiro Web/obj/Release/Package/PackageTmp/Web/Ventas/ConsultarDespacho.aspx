<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ConsultarDespacho.aspx.cs" Inherits="Papiro_Web.Web.Ventas.ConsultarDespacho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container fadeIn fast">

        <h2 class="text-center">Consultar despacho</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col">
                <label for="lblRut">Rut Empresa</label>
                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnRut" runat="server" Text="Buscar por rut" OnClick="btnRut_Click" />
            </div>

            <div class="form-group col">
                <label for="lblRazonSocial">Razón social</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnRazon" runat="server" Text="Buscar por razón social" />
            </div>
        </div>

        <!-- Panel de busqueda-->
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Busqueda por parametros</h5>
                        <label for="lblPedido">Número de pedido</label>
                        <asp:TextBox ID="txtNroPedido" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnNroPedido" runat="server" Text="Buscar" />
                        <br />
                        <label for="lblNroFactura">Número de Factura</label>
                        <asp:TextBox ID="txtNroFactura" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-danger" Text="Buscar" />
                        <br />
                        <label for="lblNroRetDoc">Número retiro de documento</label>
                        <asp:TextBox ID="txtNroRetDocumento" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" Text="Buscar" />
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Busqueda por fecha</h5>
                        <label for="lblFecha">Fecha</label>
                        <asp:TextBox ID="txtFecha" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscarFecha" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por fecha" />
                    </div>
                </div>
            </div>

        </div>
        <hr />


        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Consulta despachos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Consulta retiros</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Consulta por despachos
                   
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="gvProductos" Visible="False" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" ></asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString2 %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString2.ProviderName %>" SelectCommand="SELECT folio_ruta, Folio, numero_pedido, cliente, toma_pedido, chofer, vehiculo, fecha_ruta, hora_llegada, hora_ruta, fecha_nota, Id_ruta, hora_nota FROM consulta_ruta4 WHERE (cliente = ?) ORDER BY Id_ruta DESC">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtRazonSocial" Name="cliente" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>


                        </div>
                    </div>
                </div>

            </div>
            <!--Fin de primera pestaña-->
            <asp:GridView ID="gvRetiro" Visible="False" runat="server"></asp:GridView>
            
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Consulta retiros
                   
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            


                        </div>
                    </div>

                </div>
            </div>

            <!--Fin de segunda pestaña-->
        </div>


    </div>

</asp:Content>
