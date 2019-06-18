<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
            width: 347px;
        }
        .auto-style4 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="BANA YUVA OLUR MUSUN?" Width="215px" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button2_Click" Text="BENİ İYİLEŞTİRİR MİSİN?" Width="215px" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button3_Click" Text="BENİ DOYURUR MUSUN?" Width="215px" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button4_Click" Text="BENİ SEVER MİSİN?" Width="215px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button5" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button5_Click" Text="BENİ SAHİPLENDİRİR MİSİN?" Width="196px" />
                        <br />
                        <asp:Button ID="Button6" runat="server" BackColor="#F3D15E" ForeColor="White" Height="40px" OnClick="Button6_Click" Text="BENİ SAHİPLENİR MİSİN?" Width="198px" />
                    </td>
                    <td class="auto-style3" colspan="2"></td>
                    <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style1" colspan="2">
                        <asp:Button ID="Button7" runat="server" BackColor="#F3D15E" ForeColor="White" Height="42px" OnClick="Button7_Click" Text="Giriş Yap" Width="100px" />
                        <asp:Button ID="Button8" runat="server" BackColor="#F3D15E" ForeColor="White" Height="42px" OnClick="Button8_Click" Text="Üye Ol" Width="94px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        <asp:Image ID="Image1" runat="server" Height="309px" ImageUrl="~/resim/1.jpg" Width="866px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
