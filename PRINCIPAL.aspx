<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoFacuS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>&nbsp;</h1>
        <h1>OLÁ ALUNOS </h1>
        <p class="lead">FAÇA A GESTÃO DE SUAS ATIVIDADES </p>
        <p class="lead">&nbsp;</p>
        <p>SEU NOME</p>
        <p>&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="754px" Font-Italic="False" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>R.A</p>
        <p>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Font-Size="Small" Height="27px" PostBackUrl="~/CONSULTA.aspx" Text="CONSULTAR" Width="111px" />
            </h2>
            <p>&nbsp;</p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>

</asp:Content>
