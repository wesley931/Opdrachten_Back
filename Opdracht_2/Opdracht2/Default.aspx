<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
 Test
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 0px;
        }
    </style>
</head>
<body style="height: 298px">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Visible="False"> 
    <div>
    
        <h1>Wie ben je?</h1>
        <br />
        <br />
        Vul de onderstaande vragen in:<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>Naam</td>
                <td>
                    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Geslacht</td>
                <td>
                    <asp:RadioButtonList ID="rbGeslacht" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">Man</asp:ListItem>
                        <asp:ListItem Value="V">Vrouw</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Hobby</td>
                <td>
                    <asp:CheckBoxList ID="chkHobby" runat="server">
                        <asp:ListItem Value="1">Gamen</asp:ListItem>
                        <asp:ListItem Value="2">Programmeren</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Opleiding</td>
                <td>
                    <asp:DropDownList ID="cbOpleiding" runat="server">
                        <asp:ListItem Value="1">VMBO</asp:ListItem>
                        <asp:ListItem Value="2">HAVO</asp:ListItem>
                        <asp:ListItem Value="3">VWO</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnMaakKaart" runat="server" OnClick="btnMaakKaart_Click" Text="Maak Persoon Aan" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                   
                    <asp:Label ID="lblNaw" runat="server"></asp:Label>
                   
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        </asp:Panel>
        <asp:RadioButtonList ID="rblForm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="1">Laat formulier zien</asp:ListItem>
            <asp:ListItem Value="2">Verberg formulier</asp:ListItem>
        </asp:RadioButtonList>
    </form>
</body>
</html>
