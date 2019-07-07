<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candMasterPage.master" AutoEventWireup="true" CodeFile="Electiondate.aspx.cs" Inherits="User_Electiondate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #006666;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style5 {
            width: 77px;
        }
        .auto-style6 {
            height: 22px;
            width: 77px;
        }
        .auto-style8 {
            height: 22px;
            width: 257px;
        }
        .auto-style9 {
            width: 257px;
            font-size: medium;
        }
        .auto-style13 {
            width: 74px;
            color: #3333CC;
        }
        .auto-style14 {
            height: 22px;
            width: 152px;
        }
        .auto-style15 {
            width: 74px;
        }
        .auto-style16 {
            width: 390px;
            font-size: medium;
            color: #0000FF;
        }
        .auto-style17 {
            height: 38px;
            width: 257px;
        }
        .auto-style18 {
            height: 38px;
            width: 152px;
        }
        .auto-style19 {
            height: 38px;
            width: 77px;
        }
        .auto-style20 {
            height: 38px;
        }
        .auto-style21 {
            width: 341px;
            font-size: medium;
            color: #0000FF;
        }
        .auto-style22 {
            width: 341px;
        }
        .auto-style23 {
            width: 107%;
            height: 258px;
        }
        .auto-style24 {
            width: 257px;
            font-size: medium;
            color: #0000FF;
        }
        .auto-style25 {
            width: 257px;
        }
        .auto-style26 {
            width: 152px;
            color: #3333CC;
        }
        .auto-style27 {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="2019 election"></asp:Label>
            <br />
            </strong>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style16" rowspan="9">
                        <asp:Image ID="Image2" runat="server" Height="246px" ImageUrl="~/Maintemp/images/vt.jpg" Width="224px" />
                    </td>
                    <td class="auto-style24"><strong>Election Name&nbsp;&nbsp; :</strong></td>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("electionname") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></td>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("electiondate","{0:dd-MMM-yyyy}") %>' ></asp:Label>
                        </strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>From Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></td>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label3" type="time" runat="server" Text='<%# Eval("fromtime") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style27"></span></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24"><strong>To Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></td>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label4" type="time" runat="server" Text='<%# Eval("totime") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

