<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Default" %>

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
                <h2 class="page-header">Agenda Virtual</h2>                
                <div class="form-group">
                    Email:
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" 
                        placeholder="exemplo@exemplo.com" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqEmail" ControlToValidate="txtEmail"
                        ErrorMessage="O Campo login é obrigatório" ForeColor="#FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    Senha:
                <asp:TextBox runat="server" ID="txtSenha" type="password" CssClass="form-control" 
                        placeholder="senha" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqSenha" ControlToValidate="txtSenha"
                        ErrorMessage="O Campo senha é obrigatório" ForeColor="#FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="CadastrarUsuario.aspx" 
                    Text="Cadastre-se" runat="server" CssClass="btn btn-link col-xs-offset-4" 
                    TabIndex="4" />
                <asp:Button ID="Button1" runat="server" Text="Entrar" 
                    CssClass="btn btn-primary" OnClick="Logar" TabIndex="3"/>   
                <p>
                    <asp:Label runat="server" ID="lblMensagem"></asp:Label>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
