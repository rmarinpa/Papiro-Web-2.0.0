<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="VisitaTecnica.aspx.cs" Inherits="Papiro_Web.Web.Ventas.VisitaTecnica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-container container fadeIn fast">
        <h2>Solicitud Visita Técnica</h2>
        <label for="lblCliente">Cliente</label>
        <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
        <small id="razonquote" class="form-text text-muted">Buscar por Nombre.</small>
        <label for="lblCliente">Fecha Propuesta</label>
        <asp:Calendar ID="cldFechaPropuesta" runat="server"></asp:Calendar>
        <asp:DropDownList ID="ddlAMPM" CssClass="form-control" runat="server"></asp:DropDownList>
        <label for="lblSolicitante">Solicitante Visita</label>
        <asp:TextBox ID="txtSolicitante" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblFonoSolicitante">Teléfono Solicitante</label>
        <asp:TextBox ID="txtTelefonoSolicitante" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblEmailSolicitante">E-Mail Solicitante</label>
        <asp:TextBox ID="txtEmailSolicitante" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblDireccion">Direccion Visita</label>
        <asp:TextBox ID="txtDireccionVisita" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblComunaVisita">Comuna Visita</label>
        <asp:TextBox ID="txtComunaVisita" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblMotivoVisita">Motivo visita</label>
        <asp:TextBox ID="txtMotivoVisita" CssClass="form-control" runat="server"></asp:TextBox>
        <label for="lblObservacion">Observación</label>
        <asp:TextBox ID="txtObservacion" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnGuardar" CssClass="btn btn-outline-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnCancelar" CssClass="btn btn-outline-danger" runat="server" Text="Cancelar" />
    </div>
</asp:Content>
