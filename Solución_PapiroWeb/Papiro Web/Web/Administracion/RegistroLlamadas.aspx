<%@ Page Title="Registro de llamadas" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="RegistroLlamadas.aspx.cs" Inherits="PapiroWeb.Web.Administracion.RegistroLlamadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-center">Registro de llamadas</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblFechaInicio">Fecha de inicio</label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaFinal">Fecha final</label>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaFinal">Cliente</label>
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaFinal">Ejecutivo</label>
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-3">
                <asp:Button ID="btnRegistro1" CssClass="form-control" runat="server" Text="Registro de llamadas por fecha" />
            </div>
            <div class="form-group col-md-2">
                <asp:Button ID="btnRegistro2" CssClass="form-control" runat="server" Text="Resumen de llamadas" />
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="btnRegistro3" CssClass="form-control" runat="server" Text="Registro de llamadas por Fecha - Cliente" />
            </div>
            <div class="form-group col-md-3">
                <asp:Button ID="btnRegistro4" CssClass="form-control" runat="server" Text="Registro de llamadas por ejecutivo" />
            </div>
        </div>
    </div>
</asp:Content>
