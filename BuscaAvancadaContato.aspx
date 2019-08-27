<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/TemplateBusca.Master" AutoEventWireup="true" CodeBehind="BuscaAvancadaContato.aspx.cs" Inherits="Site.BuscaAvancadaContato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(function () {

        $(".excluir").on('click', function () { return confirm('Deseja excluir este Contato?') });

    });
</script>
<script src="Content/js/jquery.mask.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-xs-12">
    <div class="col-xs-6">
        <h3 id="titBusca" runat="server">Busca Avançada   <span class="glyphicon glyphicon-search"></span></h3><h3><asp:Label ID="lblTitulo" runat="server"></asp:Label></h3>
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
     <hr />
    </div>
    <br /><div class="col-xs-12">
    <h4 style="margin-left: 30px;">Escolha os campos de busca</h4>    
    </div>
    <div class="col-xs-12">
        <div ID="Nome" runat="server" class="col-xs-6">
                <div class="form-group">
                    Nome
                    <asp:TextBox runat="server" ID="txtNome" CssClass="form-control txtNome"></asp:TextBox>
                </div>
        </div>
        <div ID="Email" runat="server" class="col-xs-6">
            <div class="form-group">
                Email
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control txtEmail"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div ID="Telefone" runat="server" class="col-xs-3">
            <div class="form-group">
                Telefone
                <asp:TextBox runat="server" ID="txtTelefone" CssClass="form-control txtTelefone"></asp:TextBox>
            </div>
        </div>
        <div ID="Categoria" runat="server" class="col-xs-3">
            <div class="form-group">
                Categoria
                <asp:DropDownList ID="txtCategoria" runat="server" Width="200px" CssClass="form-control txtCategoria">                   
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-xs-4" >
            <div class="form-group">
                Cidade
                <asp:TextBox runat="server" ID="txtCidade" CssClass="form-control txtCidade"></asp:TextBox>
            </div>
        </div>
        <div class="col-xs-2">
            <div class="form-group">
                Estado
                <asp:TextBox runat="server" ID="txtEstado" CssClass="form-control txtEstado" style="text-transform: uppercase;"></asp:TextBox>
            </div>
        </div>
     </div>
     <br />
     <div class="col-xs-12">     
            <div class="col-xs-10" id="msg">            
                <asp:Label runat="server" ID="lblMensagem" CssClass="lblMensagem"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:LinkButton runat="server" cssclass="btn btn-primary btnCadastrar" ID="btnCadastrar" OnClick="Buscar" >
                    <span class="glyphicon glyphicon-search"></span> Buscar
                </asp:LinkButton>
            </div> <br /><br />
        </div>
     <hr />
     <br />
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('.txtTelefone').mask('(99) 9999-9999');
            $('.txtEstado').mask('AA');
        });

        </script>
</asp:Content>
