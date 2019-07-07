<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Approvecand.aspx.cs" Inherits="Admin_Candidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #990033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style1"></asp:Label>
        </strong>
        <br />
     <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="777px" CellPadding="4" Height="187px" BackColor="White" BorderColor="#CC0325" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview1_RowCommand">
        <Columns>
             <asp:BoundField DataField="constituency" HeaderText="Constituency" />
            <asp:BoundField DataField="VoterId" HeaderText="VoterId" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="partypname" HeaderText="Party Name" />  
            <asp:ImageField DataImageUrlField="symbols" HeaderText="Symbols">
            <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
           

            <asp:ImageField DataImageUrlField="photo" HeaderText="Photo">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
            <asp:TemplateField HeaderText="Approve" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" class="fa fa-check" Style="color:green;font-size:20px;font-style:bold" CommandName="aprv" CommandArgument='<%# Eval("cid") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Font-Bold="True" />
            </asp:TemplateField>
        </Columns>
         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
         <HeaderStyle BackColor="#071eb3" Font-Bold="True" ForeColor="#FFFFCC" />
         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
         <RowStyle BackColor="White" ForeColor="#330099" />
         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
         <SortedAscendingCellStyle BackColor="#FEFCEB" />
         <SortedAscendingHeaderStyle BackColor="#AF0101" />
         <SortedDescendingCellStyle BackColor="#F6F0C0" />
         <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:gridview>
 
    </center>
</asp:Content>



