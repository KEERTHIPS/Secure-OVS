<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="voters.aspx.cs" Inherits="Admin_Candidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="777px" CellPadding="4" Height="187px" BackColor="White" BorderColor="#cc0325" BorderStyle="None" BorderWidth="1px">
        <Columns>
              <asp:BoundField DataField="constituency" HeaderText="Constituency" />
            <asp:BoundField DataField="VoterId" HeaderText="VoterId" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="age" HeaderText="Age" />
            <asp:BoundField DataField="address" HeaderText="Address" />  
           
           

            <asp:ImageField DataImageUrlField="voterphoto" HeaderText="photo">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
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



