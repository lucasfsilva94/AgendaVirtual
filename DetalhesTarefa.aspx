<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true"
    CodeBehind="Tarefa.aspx.cs" Inherits="Site.DetalhesTarefa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
    <script src="Content/js/bootstrap-timepicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="col-xs-offset-5" style="margin-top: -10px">                 
            <asp:LinkButton runat="server" OnClick="Editar" class="btn btn-primary" ID="btnEditar"
                CausesValidation="false">
                <span class="glyphicon glyphicon-pencil"></span> Editar Tarefa
            </asp:LinkButton>
            <a href="CadastrarTarefa.aspx" class="btn btn-primary"><span class="glyphicon glyphicon-plus">
            </span>Nova Tarefa </a>
        </div>
        <h4 class="page-header" style="margin: -14px 0px 10px;">
            Detalhes da tarefa</h4>
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
        <div class="form-group">
            Titulo
            <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control txtTitulo"></asp:TextBox>
        </div>
        <div class="form-group">
            Descrição
            <asp:TextBox runat="server" ID="txtDescricao" CssClass="form-control txtDescricao" TextMode="MultiLine"
                Height="49px"></asp:TextBox>
        </div>
        <div class="form-group col-xs-3">
            Data
            <div class="input-append date">
                <asp:TextBox runat="server" ID="txtData" CssClass="form-control txtData" placeholder="Escolha a Data"></asp:TextBox>
                <span class="add-on"><i class="icon-th"></i></span>
            </div>
            <asp:HiddenField ID="dtTarefa" runat="server" />
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
    </div>
    <div class="col-xs-12" style="margin-top: -15px">
        <div class="col-xs-8" id="msg">
            <asp:Label runat="server" ID="lblMensagem" CssClass="lblMensagem"></asp:Label>
        </div>
        <div class="col-xs-2" style="margin-top: 14px">
            <a href="ListarTarefas.aspx" runat="server"><i aria-hidden="true" class="glyphicon glyphicon-arrow-left">
            </i>Voltar </a>
        </div>        
        <div class="col-xs-2" style="margin-top: 14px">
            <asp:LinkButton ID="btnSalvar" runat="server" CssClass="btn btn-primary btnSalvar" OnClick="Salvar">
                <i aria-hidden="true" class="glyphicon glyphicon-ok"></i> Salvar
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>
