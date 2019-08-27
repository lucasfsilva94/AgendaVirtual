<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Template.Master" AutoEventWireup="true" CodeBehind="DetalhesContato.aspx.cs" Inherits="Site.DetalhesContato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus
        {
            margin-right: 2px;
            line-height: 1.4285;
            border: 1px solid transparent;
            border-radius: 4px 4px 0 0;
            color: white;
            background-color: rgba(51, 122, 183, 1);
            border-color: #eee #eee #ddd;
        }
        .nav-tabs > li > a
        {
            color: #555;
            cursor: default;
            background-color: #fff;
            border: 1px solid #ddd;
            border-bottom-color: transparent;
        }
        .nav-tabs > li > a:hover {
        color: white;
        }

    </style>
    <script src="Content/js/jquery.mask.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script type="text/javascript">
    $(function () {
        $(".btnCadastrar").on('click', function () {

            var Nome = $(".txtNome").val();
            var Email = $(".txtEmail").val();
            var Telefone = $(".txtTelefone").val();
            var Categoria = $(".txtCategoria").val();
            var Logradouro = $(".txtLogradouro").val();
            var Complemento = $(".txtComplemento").val();
            var Cep = $(".txtCep").val();
            var Cidade = $(".txtCidade").val();
            var Estado = $(".txtEstado").val();

            if (Nome == "" || Email == "" || Telefone == "" || Categoria == "Escolha uma Categoria") {
                $(".lblMensagem").html("Preencha os dados do contato");
                $("#msg").addClass("alert alert-danger");
                return false;
            } else if (Logradouro != "" || Cidade != "" || Estado != "") {
                if (Logradouro != "" && (Cidade == "" || Estado == "")) {
                    $(".lblMensagem").html("Informe a Cidade e o Estado");
                    $("#msg").addClass("alert alert-danger");
                    return false;
                }
                if ((Cidade != "" && Estado == "") || (Cidade == "" && Estado != "")) {
                    $(".lblMensagem").html("Informe a Cidade e o Estado");
                    $("#msg").addClass("alert alert-danger");
                    return false;
                }
                else {
                    return true;
                }
            } else {
                return true;
            }
        });
    }); 
        </script>
    <div>        
    <asp:HiddenField id="idEnd" runat="server"/>
        <h4 class="page-header" style="margin: 0px 0px 5px;">Detalhes do Contato</h4>
        <div class="col-xs-12" style="min-height:268px">
            <ul class="nav nav-tabs pull-right">
                <li class="active"><a data-toggle="tab" href="#menu1">Dados Contato</a></li>
                <li><a data-toggle="tab" href="#menu2">Endereço Contato</a></li>
            </ul>
            <div class="tab-content" style="margin-top: 10px">
                <div id="menu1" class="tab-pane fade in active">
                <br />
                <div class="col-xs-12">
                <div ID="Nome" runat="server" class="col-xs-12">
                        <div class="form-group">
                            Nome
                            <asp:TextBox runat="server" ID="txtNome" CssClass="form-control txtNome"></asp:TextBox>
                        </div>
                        </div>
                        <div ID="Email" runat="server" class="col-xs-12">
                        <div class="form-group">
                            Email
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control txtEmail"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div ID="Telefone" runat="server" class="col-xs-5">
                            <div class="form-group">
                                Telefone
                                <asp:TextBox runat="server" ID="txtTelefone" CssClass="form-control txtTelefone"></asp:TextBox>
                            </div>
                        </div>
                        <div ID="Categoria" runat="server" class="col-xs-5 col-xs-offset-1">
                            <div class="form-group">
                                Categoria
                                <asp:DropDownList ID="txtCategoria" runat="server" Width="200px" CssClass="form-control txtCategoria">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                <br />
                <div class=col-xs-12>
                    <div class="form-group">
                        Logradouro
                        <asp:TextBox runat="server" ID="txtLogradouro" CssClass="form-control txtLogradouro"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-xs-6">
                    <div class="form-group">
                        Complemento
                        <asp:TextBox runat="server" ID="txtComplemento" CssClass="form-control txtComplemento"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-xs-6">
                    <div class="form-group">
                        Cep
                        <asp:TextBox runat="server" ID="txtCep" CssClass="form-control txtCep"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-xs-6">
                    <div class="form-group">
                        Cidade
                        <asp:TextBox runat="server" ID="txtCidade" CssClass="form-control txtCidade"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-xs-6">
                    <div class="form-group">
                        Estado
                        <asp:TextBox runat="server" ID="txtEstado" CssClass="form-control txtEstado" style="text-transform: uppercase;"></asp:TextBox>
                    </div>
                    </div>
                </div>
            </div>   
        </div>
        <div class="col-xs-12" style="margin-top:-25px">     
            <div class="col-xs-9" id="msg">            
                <asp:Label runat="server" ID="lblMensagem" CssClass="lblMensagem"></asp:Label>
            </div>
            <div class="col-xs-offset-8" style="margin-top:10px">
                <asp:LinkButton runat="server" class="btn btn-primary btnCadastrar" ID="btnCadastrar" OnClick="Editar">
                    <span class="glyphicon glyphicon-ok"></span> Salvar
                </asp:LinkButton>
                    
            </div> 
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.txtTelefone').mask('(99) 9999-9999');
                $('.txtEstado').mask('AA');
            });
        </script>
</asp:Content>
