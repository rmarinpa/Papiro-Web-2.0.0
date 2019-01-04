<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Cobranza/Layout.Cobranza.Master" AutoEventWireup="true" CodeBehind="EstadoCuentaCliente.aspx.cs" Inherits="PapiroWeb.Web.Cobranza.EstadoCuentaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <h2 class="text-center">Estado de cuenta de cliente</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col">
                <label for="lblRut">Rut Empresa</label>
                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRut" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por rut" />
            </div>

            <div class="form-group col">
                <label for="lbl">Razón social</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRazon" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por razón social" />
            </div>
        </div>

        <!-- Panel de combobox-->
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Selección</h5>
                        <asp:RadioButton ID="rdbFacDocumentar" runat="server" />
                        <asp:Label ID="lblSeleccion" CssClass="form-check-label" runat="server" Text="Facturas por documentar"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text="Facturas por documentar y cheques en cartera"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Venta mensual</h5>
                        <asp:RadioButton ID="RadioButton4" runat="server" />
                        <asp:Label ID="lblDetalle" runat="server" Text="Agregar detalle de Venta"></asp:Label>
                    </div>
                </div>
            </div>

        </div>
        <hr />
        <!-- Botones-->

        <asp:Button ID="btnCliente" runat="server" CssClass="btn btn-primary" Text="Cliente" />
        <asp:Button ID="btnTodos" runat="server" CssClass="btn btn-primary" Text="Todos" />
        <asp:Button ID="btnVisualizar" runat="server" CssClass="btn btn-primary" Text="Visualizar Historial Doc." />
        <asp:Button ID="btnTodosEjec" runat="server" CssClass="btn btn-primary" Text="Todos - Ejec. Cobranza" />

    </div>
</asp:Content>
