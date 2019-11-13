<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CADASTRO.aspx.cs" Inherits="ProjetoFacuS.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="lblTarefa" runat="server" Text="Tarefa: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TxtTarefa" runat="server" OnTextChanged="TxtTarefa_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;<asp:Label ID="lblPrazo" runat="server" Text="Prazo: "></asp:Label>
    &nbsp;&nbsp;&nbsp;<asp:Calendar ID="Calendario" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendario_SelectionChanged" Width="220px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <asp:Label ID="lblAtividade" runat="server" Text="Atividade:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Prova</asp:ListItem>
        <asp:ListItem>PIM</asp:ListItem>
        <asp:ListItem>Atividades Complementares</asp:ListItem>
        <asp:ListItem>Estudos Disciplinares</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="BtnCadastrar" runat="server" Text="CADASTRAR" OnClick="BtnCadastrar_Click" />
    <br />
</asp:Content>
