<%@ Page Title="Compras" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="PapiroWeb.Web.Administracion.Compras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../Scripts/Reloj.js"></script>

    <div class="container main-container fadeIn fast">
        <h2>Modulo de Compras</h2>
        <hr />
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <label for="lblImportacion">Importación</label>
                                <asp:DropDownList CssClass="dropdown-item" ID="DropDownList1" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label for="lblCN">CN</label>
                                <asp:TextBox CssClass="form-control" ID="txtCN" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <h2>Busquedas</h2>
                        <div class="row">
                            <div class="col">
                                <label for="lblImportacion">Importación</label>
                                <asp:DropDownList CssClass="dropdown-item" ID="DropDownList2" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label for="lblCN">CN</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
