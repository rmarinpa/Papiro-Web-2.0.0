<%@ Page Title="Consulta servicio tecnico" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="ConsultaServicioTecnico.aspx.cs" Inherits="PapiroWeb.Web.Ventas.ConsultaServicioTecnico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Solicitud de servicio técnico</h2>
        <div class="row">
            <div class="col-sm">
                <div class="card">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="lblRut">Rut de cliente</label>
                                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:Button ID="btnBuscarRut" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por rut" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lblRazon">Razón social</label>
                                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:Button ID="btnBuscarRazon" runat="server" CssClass="btn btn-outline-danger" Text="Buscar por razón" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="lblFechaPropuesta">Fecha propuesta</label>
                                <asp:TextBox ID="txtFechaPropuesta" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lblRazon">Solicitante de visita</label>
                                <asp:TextBox ID="txtSolicitante" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Direccion visita</label>
                            <asp:TextBox ID="txtDireccionVisita" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="lblComuna">Comuna</label>
                                <asp:DropDownList ID="ddlComuna" CssClass="form-control" runat="server" DataSourceID="EntityDataComuna" DataTextField="NombreComuna" DataValueField="IdComuna"></asp:DropDownList>
                                <asp:EntityDataSource ID="EntityDataComuna" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Comunas">
                                </asp:EntityDataSource>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lblMotivoVisita">Motivo de visita</label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="lblObervacion">Observación</label>
                            <asp:TextBox id="txtAreaObservacion" CssClass="form-control" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                        </div>
                        <button type="submit" class="btn btn-primary">Generar solicitud</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
