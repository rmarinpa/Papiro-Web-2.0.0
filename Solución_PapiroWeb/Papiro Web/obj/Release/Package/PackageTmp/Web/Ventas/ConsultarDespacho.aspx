<%@ Page Title="Consultar despacho" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <h2 class="text-center">Consultar despacho</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col">
                <label for="lblRut">Rut Empresa</label>
                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRut" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por rut" />
            </div>

            <div class="form-group col">
                <label for="lblRazonSocial">Razón social</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRazon" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por razón social" />
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
                        <asp:Button ID="btnNroPedido" runat="server" CssClass="btn btn-outline-danger" Text="Buscar" />
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
                            <asp:GridView ID="gvProductos" Visible="false" runat="server"></asp:GridView>

                        </div>
                    </div>
                </div>

            </div>
            <!--Fin de primera pestaña-->

            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Consulta retiros
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" Visible="false" runat="server"></asp:GridView>


                        </div>
                    </div>

                </div>
            </div>

            <!--Fin de segunda pestaña-->
        </div>


    </div>

</asp:Content>
