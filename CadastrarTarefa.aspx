<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="CadastrarTarefa.aspx.cs" Inherits="Site.CadastrarTarefa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
    <script src="Content/js/bootstrap-timepicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script type="text/javascript">
    $(function () {
        $(".btncriartarefa").on('click', function () {

            var titulo = $(".txtTitulo").val();
            var Descricao = $(".txtDescricao").val();
            var Data = $(".txtData").val();
            var Hora = $(".txtHora").val();
            var Prioridade = $(".txtPrioridade").val();
            if (titulo == "" || Descricao == "" || Data == "" || Hora == "" || Prioridade == '0') {
                $(".lblMensagem").html("Preencha todos os campos");
                $("#msg").addClass("alert alert-danger");
                return false;
            } else {
                return true;
            }


        });
    }); 
</script>
    <h4 class="page-header" style="margin: 0px 0px 10px;">Criar uma nova tarefa</h4>    
        <div class="form-group">
            Titulo
                    <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control txtTitulo"></asp:TextBox>        
        </div>        
    <div class="form-group">
        Descrição
                <asp:TextBox runat="server" ID="txtDescricao" CssClass="form-control txtDescricao" TextMode="MultiLine" Height="49px"></asp:TextBox>        
    </div>      
    <div class="form-group col-xs-4">
        Data        
        <div class="input-append date">
            <asp:TextBox runat="server" ID="txtData" CssClass="form-control txtData" placeholder="Escolha a Data"></asp:TextBox>    
            <span class="add-on"><i class="icon-th"></i></span>        
        </div>
        <asp:HiddenField id="dtTarefa" runat="server"/>
        <script type="text/javascript">
            $("#<%= txtData.ClientID %>").datepicker({
                format: "dd/mm/yyyy",
                language: "pt-BR",
                orientation: "bottom right",
                todayHighlight: true
            });  
        </script>        
    </div>        
    <div class="form-group col-xs-3">
        Horário
        <div class="bootstrap-timepicker">
            <asp:TextBox runat="server" ID="txtHora" CssClass="form-control input-small txtHora"></asp:TextBox>                        
        </div>
        <script type="text/javascript">
            $('#<%= txtHora.ClientID %>').timepicker({
                minuteStep: 5,
                showInputs: false,
                disableFocus: true,
                showMeridian: false
            });
        </script>
    </div>   
    <div class="form-group col-xs-5">
         Prioridade
        <asp:DropDownList ID="txtPrioridade" runat="server" Width="200px" CssClass="form-control txtPrioridade">
            <asp:ListItem Text="Selecione a prioridade" Value="0"></asp:ListItem>
            <asp:ListItem Text="Alta" Value="Alta"></asp:ListItem>
            <asp:ListItem Text="Média" Value="Média"></asp:ListItem>
            <asp:ListItem Text="Baixa" Value="Baixa"></asp:ListItem>
        </asp:DropDownList>
    </div> 
    <div class="col-xs-12" style="margin-top:-7px">
        <div class="col-xs-7" id="msg">            
                <asp:Label runat="server" ID="lblMensagem" CssClass="lblMensagem"></asp:Label>           
        </div>
        <div class="col-xs-2" style="margin-top:14px">
            <a id="A1" href="ListarTarefas.aspx" runat="server">
                <i aria-hidden="true" class="glyphicon glyphicon-arrow-left"></i> Voltar
            </a>   
        </div>
        <div class="col-xs-2" style="margin-top:14px">
            <asp:LinkButton id="btnNova" runat="server" CssClass="btn btn-primary btncriartarefa" OnClick="CadTarefa">
                <i aria-hidden="true" class="glyphicon glyphicon-ok"></i> Criar Tarefa
            </asp:LinkButton>   
        </div>  
    </div>
</asp:Content>
