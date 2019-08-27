<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/TemplateBusca.Master" AutoEventWireup="true" CodeBehind="BuscaAvancadaTarefa.aspx.cs" Inherits="Site.BuscaAvancadaTarefa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-xs-12">
    <div class="col-xs-6">
        <h3 id="titBusca" runat="server">Busca Avançada   <span class="glyphicon glyphicon-search"></span></h3><h3><asp:Label ID="lblTitulo" runat="server"></asp:Label></h3>
    </div>

<div class="col-xs-6" style="margin-top: 16px">
         
        <div class="col-xs-5 pull-right">
            <a href="CadastrarContato.aspx" class="btn btn-primary">
                    <span class="glyphicon glyphicon-plus"></span> Nova Tarefa
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
    <br />
    <h4 class="margin-left: 30px;">Escolha os campos de busca</h4>
    <div class="col-xs-12">
        <div ID="Nome" runat="server" class="col-xs-6">
                <div class="form-group">
                    Titulo
                    <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control txtTitulo"></asp:TextBox>
                </div>
        </div>
        <div ID="Email" runat="server" class="col-xs-6">
            <div class="form-group">
                Descrição
                <asp:TextBox runat="server" ID="txtDescricao" CssClass="form-control txtDescricao"></asp:TextBox>        
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div ID="DataIni" runat="server" class="col-xs-3">
            Data Inicio        
        <div class="input-append date">
            <asp:TextBox runat="server" ID="txtDataIni" CssClass="form-control txtDataIni" placeholder="Escolha a Data"></asp:TextBox>    
            <span class="add-on"><i class="icon-th"></i></span>        
        </div>
        <asp:HiddenField id="dtTarefa" runat="server"/>
        <script type="text/javascript">
            $("#<%= txtDataIni.ClientID %>").datepicker({
                format: "dd/mm/yyyy",
                language: "pt-BR",
                orientation: "bottom right",
                todayHighlight: true
            });  
        </script>        
        </div>
        <div ID="DataFim" runat="server" class="col-xs-3">
            Data Fim        
        <div class="input-append date">
            <asp:TextBox runat="server" ID="txtDataFim" CssClass="form-control txtDataFim" placeholder="Escolha a Data"></asp:TextBox>    
            <span class="add-on"><i class="icon-th"></i></span>        
        </div>
        <asp:HiddenField id="HiddenField1" runat="server"/>
        <script type="text/javascript">
            $("#<%= txtDataFim.ClientID %>").datepicker({
                format: "dd/mm/yyyy",
                language: "pt-BR",
                orientation: "bottom right",
                todayHighlight: true
            });  
        </script>        
        </div>
        <div ID="Categoria" runat="server" class="col-xs-3">
            <div class="form-group">
         Prioridade
        <asp:DropDownList ID="txtPrioridade" runat="server" Width="200px" CssClass="form-control txtPrioridade">
            <asp:ListItem Text="Selecione a prioridade" Value="0"></asp:ListItem>
            <asp:ListItem Text="Alta" Value="Alta"></asp:ListItem>
            <asp:ListItem Text="Média" Value="Média"></asp:ListItem>
            <asp:ListItem Text="Baixa" Value="Baixa"></asp:ListItem>
        </asp:DropDownList>
            </div>
        </div>     
     <br />
     <div class="col-xs-12">     
            <div class="col-xs-10" id="msg">            
                <asp:Label runat="server" ID="lblMensagem" CssClass="lblMensagem"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:LinkButton runat="server" cssclass="btn btn-primary btnCadastrar" ID="btnCadastrar" OnClick="Buscar">
                    <span class="glyphicon glyphicon-search"></span> Buscar
                </asp:LinkButton>
            </div> <br /><br />
        </div>
     <hr />
     <br />
      <asp:GridView runat="server" ID="gridContatos" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Titulo" DataField="Titulo"/>
            <asp:BoundField HeaderText="Descricao" DataField="Descricao"/>
            <asp:BoundField HeaderText="Data" DataField="Data"/>
            <asp:BoundField HeaderText="Prioridade" DataField="Prioridade"/>
            <asp:HyperLinkField
                DataNavigateUrlFields="IdTarefa"
                DataNavigateUrlFormatString="DetalhesContato.aspx?id={0}"                         
                Text="Detalhes" >
            </asp:HyperLinkField>
            <asp:HyperLinkField
                ControlStyle-CssClass="excluir"
                DataNavigateUrlFields="IdTarefa"
                DataNavigateUrlFormatString="ExcluirContato.aspx?id={0}"                         
                Text="Excluir" >
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
