<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/TemplateBusca.Master" AutoEventWireup="true" CodeBehind="ListarContatos.aspx.cs" Inherits="Site.ListarContatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(function () {

        $(".excluir").on('click', function () { return confirm('Deseja excluir este Contato?') });

    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-xs-12">
    <div class="col-xs-6">
        <h3>Lista de Contatos <span class="glyphicon glyphicon-list"></span></h3>
    </div>

<div class="col-xs-6" style="margin-top: 16px">
         
        <div class="col-xs-5 pull-right">
            <a href="CadastrarContato.aspx" class="btn btn-primary">
                    <span class="glyphicon glyphicon-plus"></span> Novo Contato
            </a> 
        </div>
        <div class="col-xs-5 pull-right">
            <asp:LinkButton ID="btnRelatorio" runat="server" CssClass="btn btn-primary btnRelatorio" OnClick="Relatorio">
                <i aria-hidden="true" class="glyphicon glyphicon-save"></i> Gerar Relatorio
            </asp:LinkButton>
        </div>
</div>
</div>
<hr /><br />
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
