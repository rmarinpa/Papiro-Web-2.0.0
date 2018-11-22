<%@ Page Title="Administración" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="MenuAdministracion.aspx.cs" Inherits="PapiroWeb.Web.Administracion.MenuAdministracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr />
    <div class="container">
        <h3>Bienvenido:</h3>
        <div class="form-row">
            <i class="fa fa-user-circle"></i>
            <asp:LoginName ID="LoginName1" runat="server" />
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_01901ef141ac41d9b1ed74df5ed4fad0~mv2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">CAVASER Súper permanente</h5>
                        <p class="card-text">Vinilo premium Cavaser súper permanente, de alta adherencia, especial para trabajos en MDF, cartones y superficies complejas.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_9a80a14487c14fd38610be9cf61766f7~mv2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Linea Glass Cavaser</h5>
                        <p class="card-text">Instalación sobre cuadros de acrílicos.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_1f6b8878ea6643c4bca2409f37b69369~mv2.webp.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">CAVASER Súper Permanente</h5>
                        <p class="card-text">Vinilo Premium Cavaser Súper Permanente, de alta adherencia en muro.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
