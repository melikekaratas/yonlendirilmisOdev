<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iyilestir.aspx.cs" Inherits="iyilestir" %>

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
            height: 23px;
        }
        .auto-style6 {
            width: 296px;
        }
        .auto-style7 {
            height: 23px;
            width: 296px;
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
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style6">İyileştirmek İstediğiniz Hayvan Cinsi</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Yaşı:</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Rahatsızlığı:</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Adres:</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="auto-style5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Sahibinin Telefon Numarası:</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" BackColor="#F3D15E" ForeColor="White" Height="41px" OnClick="Button7_Click" Text="Veterinere Yönlendir" Width="187px" />
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
