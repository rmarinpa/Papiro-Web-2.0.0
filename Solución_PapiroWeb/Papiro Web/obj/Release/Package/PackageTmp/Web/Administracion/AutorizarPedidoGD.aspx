<%@ Page Title="Autorizar G/D" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="AutorizarPedidoGD.aspx.cs" Inherits="PapiroWeb.Web.Administracion.AutorizarGD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-center">Autorizar FACT</h2>
        <div class="form-row">
            <div class="col-lg-4 col-lg-offset-4">
                <asp:GridView ID="gvGD" runat="server">
                </asp:GridView>
            </div>
        </div>
        <div class="form-control">
            <asp:Button ID="btnAutorizar" CssClass="btn btn-primary" runat="server" Text="Autorizar" />
            <asp:Button ID="btnRechazar" CssClass="btn btn-danger" runat="server" Text="Rechazar" />
            <asp:Button ID="btnHistorial" CssClass="btn btn-info" runat="server" Text="Historial" />
        </div>
    </div>
</asp:Content>
