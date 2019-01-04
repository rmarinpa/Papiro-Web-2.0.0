<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="AsociarPedidoConFactura.aspx.cs" Inherits="Papiro_Web.Web.Ventas.AsociarPedidoConFactura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container main-container">
        <h4>Asosiación Pedido con Documento</h4>
        <hr>
        <div class="form-group row">
            <label class="col-2 col-form-label">Seleccione Fecha</label>
            <div class="col-8">
                <asp:Calendar ID="Calendar1" runat="server">
                </asp:Calendar>
            </div>
        </div>
        <div class="form-group row">


            <label class="col-2 col-form-label">N° Pedido</label>
            <div class="col-2">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </div>


        <div class="form-group row">
            <label class="col-2 col-form-label">N° Documento</label>
            <div class="col-8">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-2 col-form-label">Tipo</label>
            <div class="col-8">
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-2 col-form-label">Cliente</label>
            <div class="col-md-8">
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <label class="col-2 col-form-label">Corresponde</label>
                <br />
                <asp:CheckBox ID="CheckBox1" CssClass="custom-checkbox" runat="server" />
                <label class="col-2 col-form-label">Sí</label>
                <asp:CheckBox ID="CheckBox2" CssClass="custom-checkbox" runat="server" />
                <label class="col-2 col-form-label">No</label>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-2 col-form-label">Monto Pedido</label>
            <div class="col-md-8">
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <label class="col-2 col-form-label">Corresponde</label>
                <br />
                <asp:CheckBox ID="CheckBox3" CssClass="custom-checkbox" runat="server" />
                <label class="col-2 col-form-label">Sí</label>
                <asp:CheckBox ID="CheckBox4" CssClass="custom-checkbox" runat="server" />
                <label class="col-2 col-form-label">No</label>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-2 col-form-label">&nbsp;</label>
            <div class="input-group col-md-8">
                <button type="submit" class="btn btn-outline-primary">
                    Guardar
     
                </button>
            </div>
        </div>

    </div>

</asp:Content>
