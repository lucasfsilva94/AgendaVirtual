<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="Site.CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../Content/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../Content/js/jquery-2.1.4.js" type="text/javascript"></script>
    <script src="../Content/js/bootstrap.js" type="text/javascript"></script>
    <title></title>
    <style type="text/css">
    .centered
    {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 20%;
    }
    .content
    {
        background-color: #fff;
        padding: 20px;
        margin: 0 -20px;
        -webkit-border-radius: 10px 10px 10px 10px;
        -moz-border-radius: 10px 10px 10px 10px;
        border-radius: 10px 10px 10px 10px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
        -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
        box-shadow: 0 1px 2px rgba(0,0,0,.15);
    }
    </style>
</head>
<body class="fundo" style="background-image:url('Content/img/Fundo1.jpg')">
    <form id="form1" runat="server">
        <div class="centered">
            <div class="content">
                <h2 class="page-header">Cadastre-se</h2>                
                <div class="form-group">
                    Digite seu Nome:
                <asp:TextBox runat="server" ID="txtNome" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqNome" ControlToValidate="txtNome"
                        ErrorMessage="O Campo login é obrigatório" ForeColor="#FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    Digite seu Email:
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqEmail" ControlToValidate="txtEmail"
                        ErrorMessage="O Campo Email é obrigatório" ForeColor="#FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    Digite sua Senha:
                <asp:TextBox runat="server" ID="txtSenha" type="password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqSenha" ControlToValidate="txtSenha"
                        ErrorMessage="O Campo senha é obrigatório" ForeColor="#FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="Default.aspx" Text="Voltar" runat="server" CssClass="btn btn-link col-xs-offset-5"/>
                <asp:Button ID="Button1" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="Cadastrar"/>                
                <p>
                    <asp:Label runat="server" ID="lblMensagem"></asp:Label>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
