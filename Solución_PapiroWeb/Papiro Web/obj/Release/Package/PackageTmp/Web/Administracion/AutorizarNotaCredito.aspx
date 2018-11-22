<%@ Page Title="Autorizar nota de crédito" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="AutorizarNotaCredito.aspx.cs" Inherits="PapiroWeb.Web.Administracion.AutorizarNotaCredito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2 class="text-center">Notas de credito</h2>
        <div class="form-row">
            <div class="col-lg-4 col-lg-offset-4">
                <asp:GridView ID="gvAutorizarNC" runat="server">
                </asp:GridView>
            </div>

            <div class="form-control">
                <asp:Button ID="btnAutorizarNC" CssClass="btn btn-primary" runat="server" Text="Autorizar" />
                <asp:Button ID="btnRechazarGuia" CssClass="btn btn-danger" runat="server" Text="Rechazar" />
            </div>
        </div>
        <br />
        <h5>Anular o cambiar folio</h5>
        <br />
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblNumero">Número de folio</label>
                <asp:TextBox ID="txtNumeroFolio" CssClass="form-control" runat="server"></asp:TextBox>
                <label for="lblNota">Nota de crédito</label>
                <asp:TextBox ID="txtNotaCredito" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnAutorizarAnular" CssClass="btn btn-danger" runat="server" Text="Anular o cambiar folio" />
            </div>
        </div>
    </div>

</asp:Content>
