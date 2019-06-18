<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

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
        .auto-style5 {
            height: 21px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 66%;
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
                    <td class="auto-style1" colspan="2"></td>
                </tr>
                <tr>
                    <td colspan="7">
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style5">Kullanıcı Adı:</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Şifre:</td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" BackColor="#F3D15E" ForeColor="White" Height="32px" OnClick="Button7_Click" Text="Giriş Yap" Width="88px" />
                                    <asp:Button ID="Button8" runat="server" BackColor="#F3D15E" ForeColor="White" Height="31px" OnClick="Button8_Click" Text="Üye Ol" Width="79px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>


