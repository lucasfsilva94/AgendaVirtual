<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/TemplateBusca.Master" AutoEventWireup="true" CodeBehind="BuscaContato.aspx.cs" Inherits="Site.BuscaContato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(function () {

        $(".excluir").on('click', function () { return confirm('Deseja excluir este Contato?') });

    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-xs-12">
    <h3 class="margin-left: 30px;">Busca de Contatos <span class="glyphicon glyphicon-list"></span></h3>
    <div class="col-xs-2 pull-right" style="margin-top: -40px;" >
        <a href="CadastrarContato.aspx" class="btn btn-primary">
                <span class="glyphicon glyphicon-plus"></span> Novo Contato
        </a> 
    </div>
    <hr />
</div><br />
<asp:GridView runat="server" ID="gridContatos" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField HeaderText="Nome" DataField="Nome"/>
        <asp:BoundField HeaderText="Email" DataField="Email"/>
        <asp:BoundField HeaderText="Telefone" DataField="Telefone"/>
        <asp:BoundField HeaderText="Tipo" DataField="Tipo.Tipo"/>
        <asp:BoundField HeaderText="Endereço" DataField="EnderecoC.Logradouro"/>
        <asp:BoundField HeaderText="Cidade" DataField="EnderecoC.Cidade"/>
        <asp:BoundField HeaderText="Estado" DataField="EnderecoC.Estado"/>
        <asp:HyperLinkField
            DataNavigateUrlFields="IdContato"
            DataNavigateUrlFormatString="DetalhesContato.aspx?id={0}"                         
            Text="Detalhes" >
        </asp:HyperLinkField>
        <asp:HyperLinkField
            ControlStyle-CssClass="excluir"
            DataNavigateUrlFields="IdContato"
            DataNavigateUrlFormatString="ExcluirContato.aspx?id={0}"                         
            Text="Excluir" >
        </asp:HyperLinkField>
    </Columns>
</asp:GridView>
</asp:Content>
