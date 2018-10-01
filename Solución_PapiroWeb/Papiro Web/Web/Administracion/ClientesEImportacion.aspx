<%@ Page Title="Clientes e importación" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ClientesEImportacion.aspx.cs" Inherits="PapiroWeb.Web.Administracion.ClientesEImportacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2 class="text-center">Registro de clientes - Importación</h2>
        <div class="form-row">
            <div class="form-group">
                <div class="form-group">
                    <asp:FileUpload ID="fuExcel" runat="server" />
                    <asp:Button ID="btnImportar" CssClass="btn btn-primary" runat="server" Text="Importar Datos" />
                </div>
                <asp:GridView ID="gvTablaImportacion" CssClass="form-control" runat="server"></asp:GridView>
            </div>
        </div>

        <h2 class="text-center">Tabla de ítems registrados</h2>
        <div class="form-row">
            <div class="form-group">
                <asp:GridView ID="gvItems" CssClass="form-control" runat="server"></asp:GridView>
            </div>
        </div>

    </div>

</asp:Content>
