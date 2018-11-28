<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="MenuVentas.aspx.cs" Inherits="PapiroWeb.Web.Ventas.MenuVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblUsuario" runat="server" Visible="False"></asp:Label>

    <div class="accordion" id="accordionExample">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Collapsible Group Item #1
                    </button>
                </h5>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipiscing elit rhoncus mus, augue dapibus orci conubia fringilla porta eu. Vulputate proin sodales sed habitasse augue tristique luctus, platea dui taciti vestibulum suspendisse velit tempor sociosqu, erat rhoncus mi potenti nibh laoreet. Risus morbi quam vulputate cum sodales nostra nec ut pellentesque, viverra eros aptent suscipit class id odio lacus tristique, blandit posuere leo dictum lectus nam accumsan cras.

Egestas ligula himenaeos nibh morbi nisl cubilia donec viverra taciti, pellentesque eros mus purus vitae primis dictumst. Semper tristique fusce elementum lobortis habitasse mattis, ad donec metus nascetur sodales posuere porta, consequat curae in inceptos scelerisque. Himenaeos est magnis nibh faucibus lacinia urna erat, nunc class in mauris quisque tellus pretium iaculis, sodales primis ante gravida mus tempus.
                    </p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingTwo">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Mis ventas
                    </button>
                </h5>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                    <asp:GridView ID="gvUltimasVentas" CssClass=" table-responsive table table-striped table-bordered table-hover" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" EnableSortingAndPagingCallbacks="True">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:const113_papiroConnectionString %>" ProviderName="<%$ ConnectionStrings:const113_papiroConnectionString.ProviderName %>" SelectCommand="SELECT cliente As Cliente, rut As Rut, senal_advertencia As Senal, familia_1 As FamiliaI, familia_2 As FamiliaII, familia_3 As FamiliaIII, descripcion As Descripcion, cantidad As Cantidad, venta_total As VentaTotal,  forma_pago As FormadePago, DATE_FORMAT(fecha, '%d/%m/%Y') As Fecha, numero_folio As Folio FROM venta4 WHERE (toma_pedido = ?) ORDER BY fecha DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblUsuario" Name="toma_pedido" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingThree">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Collapsible Group Item #3</button>
                </h5>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                <div class="card-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
            </div>
        </div>
    </div>

</asp:Content>
