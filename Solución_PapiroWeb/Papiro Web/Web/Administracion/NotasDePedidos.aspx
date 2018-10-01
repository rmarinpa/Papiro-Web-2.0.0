<%@ Page Title="Notas de Pedidos" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="NotasDePedidos.aspx.cs" Inherits="PapiroWeb.Web.Administracion.NotasDePedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-center">Notas de Pedido - Facturas</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblFechaIniciar">Fecha inicial</label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaFinal">Fecha Final</label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:GridView ID="gvNota" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
