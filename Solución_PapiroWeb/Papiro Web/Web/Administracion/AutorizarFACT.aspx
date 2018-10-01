<%@ Page Title="AutorizarFACT" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="AutorizarFACT.aspx.cs" Inherits="PapiroWeb.Web.Administracion.AutorizarFACT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <h2 class="text-center">Autorizar FACT</h2>
        <div class="form-row">
            <div class="col-lg-4 col-lg-offset-4">
                <asp:GridView ID="gvFACT" runat="server"></asp:GridView>
            </div>
        </div>
        <div class="form-control">
            <asp:Button ID="btnAutorizar" CssClass="btn btn-primary" runat="server" Text="Autorizar" />
            <asp:Button ID="btnRechazar" CssClass="btn btn-danger" runat="server" Text="Rechazar" />
            <asp:Button ID="btnHistorial" CssClass="btn btn-info" runat="server" Text="Historial" />
        </div>
    </div>


</asp:Content>