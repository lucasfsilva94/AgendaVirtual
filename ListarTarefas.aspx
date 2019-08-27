<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="ListarTarefas.aspx.cs" Inherits="Site.ListarTarefas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .nav-tabs > li > a:hover {
    border-color: #eee #eee #ddd;
    background-color: rgba(59, 131, 194, 1);
    color: white;
    }
</style>

<script type="text/javascript">
    $(function () {

        $(".excluir").on('click', function () { return confirm('Deseja excluir esta tarefa?') });

    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-5">
        <h4>Próximas Tarefas</h4>
    </div>
    <div class="col-xs-offset-5">
     <div class="col-xs-6">           
            <asp:LinkButton ID="btnRelatorio" runat="server" CssClass="btn btn-primary btnRelatorio" OnClick="Relatorio">
                <i aria-hidden="true" class="glyphicon glyphicon-save"></i> Gerar Relatorio
            </asp:LinkButton>
        </div> 
    <div class="col-xs-6">           
            <a href="CadastrarTarefa.aspx" class="btn btn-primary">
                <span class="glyphicon glyphicon-plus"></span> Nova Tarefa
            </a> 
        </div> 
    </div>
        <hr />
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
