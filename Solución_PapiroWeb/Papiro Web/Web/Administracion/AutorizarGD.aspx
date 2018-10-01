<%@ Page Title="Autorizar guía de despacho" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="AutorizarGD.aspx.cs" Inherits="PapiroWeb.Web.Administracion.AutorizarGD1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2 class="text-center">Autorizar guía de despacho</h2>
        <div class="form-row">
        <div class="col-lg-4 col-lg-offset-4">
            <asp:GridView ID="gvAutorizarGD" runat="server">
            </asp:GridView>
        </div>
    </div>
    <div class="form-control">
        <asp:Button ID="btnAutorizarGuia" CssClass="btn btn-primary" runat="server" Text="Autorizar" />
        <asp:Button ID="btnRechazarGuia" CssClass="btn btn-danger" runat="server" Text="Rechazar" />
        <asp:Button ID="btnHistorial" CssClass="btn btn-info" runat="server" Text="Historial" />
    </div>
    <br />
    <h5>Autorizar</h5>
    <br />
    <div class="form-row">
        
        <div class="form-group col-md-2">
            <label for="lblNumero">Número de folio</label>
            <asp:TextBox ID="txtNumeroFolio" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscarRut" CssClass="btn btn-primary" runat="server" Text="Autorizar guía de despacho" />
            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Rechazar guía de despacho " />
        </div>
        <div class="form-group col-md-2">
            <label for="lblRazonSocial">Número de guía</label>
            <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscarRazon" CssClass="btn btn-primary" runat="server" Text="Anular o cambiar folio" />
        </div>
    </div>
    </div>
</asp:Content>
