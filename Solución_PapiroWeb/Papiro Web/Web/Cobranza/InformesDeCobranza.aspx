<%@ Page Title="Documentos por cobrar" Language="C#" MasterPageFile="~/Web/Cobranza/Layout.Cobranza.Master" AutoEventWireup="true" CodeBehind="InformesDeCobranza.aspx.cs" Inherits="PapiroWeb.Web.Cobranza.InformesDeCobranza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Filtro por fechas</h5>
                        <asp:Button ID="btnFecha" CssClass="btn btn-outline-success" runat="server" Text="Filtrar" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Documento por cobrar</h5>
                        <asp:Button ID="btnBuscarDocCobrar" CssClass="btn btn-outline-success" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Ranking deuda total</h5>
                        <asp:Button ID="btnBuscarRankingTotal" CssClass="btn btn-outline-success" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Deuda sin documentar</h5>
                        <asp:Button ID="btnBuscarDeudaSinDoc" CssClass="btn btn-outline-success" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Deuda total por rut</h5>
                        <asp:Button ID="btnBuscarDeudaTotalRut" CssClass="btn btn-outline-success" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Deuda documentada</h5>
                        <asp:Button ID="btnDeudaDocumentada" CssClass="btn btn-outline-success" runat="server" Text="Buscar" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
