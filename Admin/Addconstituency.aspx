<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Addconstituency.aspx.cs" Inherits="Admin_Crimetype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../sweetalert.min.js"></script>
    
      <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Successfully Saved Details!",
                    //text: "You clicked the button!",
                    icon: "success",
                    button: "Ok!",
                });
                
            }

        </script>
    <script type="text/javascript" >

            function successalert1() {
                swal({
                    title: "deleted  Details!",
                    //text: "You clicked the button!",
                    icon: "success",
                    button: "Ok!",
                });
                
            }

        </script>


        <script type="text/javascript" >

            function invalid() {
                swal({
                    title: "Already Saved...!!!",
                    //text: "You clicked the button!",
                    icon: "warning",
                    button: "Ok!",
                });
                
            }

        </script>

    <style type="text/css">
        .auto-style1 {
            height: 86px;
        }
        .auto-style2 {
            height: 86px;
            width: 49px;
        }
        .auto-style3 {
            width: 49px;
        }
        .auto-style4 {
            width: 100%;
            height: 58px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <%-- <form id="form2" runat="server">--%>
    <%--  <table align="center" class="style1" style="border: thin solid #008080">--%>

        <table class="auto-style4">
            <tr>
                 <td class="auto-style1">State</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="dropstate" runat="server" Width="213px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    </asp:DropDownList>
                </td>
                 <td class="auto-style2"></td>
                <td class="auto-style1">
                </td>
                <td class="auto-style1">constituency</td>
                <td class="auto-style1">
                <asp:TextBox ID="txt_constituency" runat="server" Width="213px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="124px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <div class="text-center">



                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Width="397px" PageSize="200" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="state" HeaderText="State" />
                        <asp:BoundField DataField="constituency" HeaderText="constituency" />
                        <asp:TemplateField ShowHeader="False" HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("cid") %>' CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
          </div>
          <%--  </form>--%>

   

    </asp:Content>


