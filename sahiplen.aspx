<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sahiplen.aspx.cs" Inherits="sahiplen" %>

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
            text-align: center;
        }
        .auto-style6 {
            width: 255px;
        }
        .auto-style7 {
            text-align: center;
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
                                <td class="auto-style5" colspan="2">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="hayvan" DataValueField="hayvan" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="123px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="cins" DataValueField="cins" Height="19px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="123px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cins] FROM [sahiplendir]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hayvan] FROM [sahiplendir]"></asp:SqlDataSource>
                                </td>
                                <td class="auto-style5" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Sahiplendirmek İstediğin Hayvan</td>
                                <td>Cinsi</td>
                                <td>Yaşı</td>
                                <td>Cinsiyet</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style7" colspan="2">
                                    <asp:Button ID="Button7" runat="server" BackColor="#F3D15E" ForeColor="White" Height="45px" OnClick="Button7_Click" Text="Sahiplen" Width="95px" />
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

