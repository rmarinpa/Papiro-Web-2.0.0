<%@ Page Title="Configuración de usuario" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ConfigUsuario.aspx.cs" Inherits="PapiroWeb.Web.Administracion.ConfigUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <h2 class="text-center">Administración de usuarios</h2>
        <div class="col col-lg-auto">

            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Configuración de usuario
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:GridView ID="gvUsuario" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="EntityDataUsuario" CssClass="table table-borderless" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:EntityDataSource ID="EntityDataUsuario" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Usuarios">
                        </asp:EntityDataSource>

                    </div>
                </div>

            </div>

            <!-- Fin del DataTable-->


        </div>
    </div>
</asp:Content>
