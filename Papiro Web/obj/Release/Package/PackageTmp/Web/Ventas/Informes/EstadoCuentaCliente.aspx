<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="EstadoCuentaCliente.aspx.cs" Inherits="Papiro_Web.Web.Ventas.Informes.EstadoCuentaCliente" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../../aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>
    <div class="main-container container">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="C:\Users\USUARIO\Documents\GitHub\Papiro-Web-2.0.0 Reportes Prueba\Solución_PapiroWeb\Papiro Web\Web\Informes\Estado_de_pago_clientes_cat3.rpt">
            </Report>
        </CR:CrystalReportSource>
    </div>
</asp:Content>
