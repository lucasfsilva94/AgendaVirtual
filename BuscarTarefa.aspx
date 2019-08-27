<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="BuscarTarefa.aspx.cs" Inherits="Site.BuscarTarefa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .nav-tabs > li > a:hover {
    border-color: #eee #eee #ddd;
    background-color: rgba(59, 131, 194, 1);
    color: white;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-offset-9">           
            <a href="CadastrarTarefa.aspx" class="btn btn-primary">
                <span class="glyphicon glyphicon-plus"></span> Nova Tarefa
            </a> 
        </div> 
        <br />
    <div class="col-xs-12">
        
        <asp:GridView ID="gridListaTarefa" runat="server" AutoGenerateColumns="false" 
            CssClass="table table-hover table-striped" GridLines="None">
                <Columns>
                    <asp:BoundField HeaderText="Título" DataField="Titulo"/>
                    <asp:BoundField HeaderText="Data  /  Horário" DataField="Data" />   
                    <asp:BoundField HeaderText="Prioridade" DataField="Prioridade" />                  
                    <asp:HyperLinkField
                        DataNavigateUrlFields="IdTarefa"
                        DataNavigateUrlFormatString="DetalhesTarefa.aspx?id={0}"                         
                        Text="Detalhes" >
                    </asp:HyperLinkField>
                    <asp:HyperLinkField
                        ControlStyle-CssClass="excluir"
                        DataNavigateUrlFields="IdTarefa"
                        DataNavigateUrlFormatString="ExcluirTarefa.aspx?id={0}"                         
                        Text="Excluir" >
                    </asp:HyperLinkField>
                </Columns>
        </asp:GridView>      
    </div>
</asp:Content>
