<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/Candidate/candMasterPage.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="Admin_Candidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src='https://www.google.com/recaptcha/api.js?hl=es'></script>
    <script src="https://www.google.com/recaptcha/api.js?render=reCAPTCHA_site_key"></script>


        <script type="text/javascript">

var template;
var fd;
function CallFingerAPI()
{
  var url = "http://localhost:8080/CallMorphoAPI";
  var xmlhttp;
  if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari

     xmlhttp=new XMLHttpRequest();
  
  }
  else
  {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

  }
     xmlhttp.onreadystatechange=function()
  {
     if (xmlhttp.readyState==4 && xmlhttp.status==200)
     {
	   fpobject = JSON.parse(xmlhttp.responseText);
  	   alert("Device Status: "+fpobject.ReturnCode);
	//   alert("Base64ISOTemplate: "+fpobject.Base64ISOTemplate);
	//   alert("Base64RAWIMage: "+fpobject.Base64RAWIMage);
	   console.log(fpobject.Base64ISOTemplate);
	//   alert("Base64BMPIMage: "+fpobject.Base64BMPIMage);
	     document.getElementById('img').innerHTML="ok";  //fpobject.Base64BMPIMage;
	 imgElem.setAttribute('src', "data:image/png;base64," + fpobject.Base64BMPIMage);
	   //  imgElem.setAttribute('src', "data:image/png;base64," );


		 fd = fpobject.Base64BMPIMage;

		 
		 //$('textarea[id="TextArea1"]').value(fd);
         
       template = fpobject.Base64ISOTemplate; 	 
       alert("hhhhhh: " + template);

       TextBox2.value = fpobject.Base64BMPIMage;
     }
  }
  
  var timeout = 5;
  xmlhttp.open("POST",url+"?"+timeout,true);
  xmlhttp.send();

}


function CompareTemplates()
{
  var url = "http://localhost:8080/CompareTemplates";
  var xmlhttp;
  if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari

     xmlhttp=new XMLHttpRequest();
  
  }
  else
  {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

  }
     xmlhttp.onreadystatechange=function()
  {
     if (xmlhttp.readyState==4 && xmlhttp.status==200)
     {
		fpobject = JSON.parse(xmlhttp.responseText);
	    alert("CompareTemplate return code: "+fpobject.ReturnCode);
		alert("Matching Result: "+fpobject.MatchingResult);
     }
  }
  
  var templatesArray = [1];
  templatesArray[0] = template;  
  alert("templatearray1: "+ templatesArray[0]);
  var numberOfTemplates = 1;
  xmlhttp.open("POST",url+"?"+templatesArray+"$"+template+"$"+numberOfTemplates,true);
  xmlhttp.send();
  
}


function getDeviceDetails()
{
  var url = "http://localhost:8080/getDeviceDetails";
  var xmlhttp;
  if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari

     xmlhttp=new XMLHttpRequest();
  
  }
  else
  {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

  }
     xmlhttp.onreadystatechange=function()
  {
     if (xmlhttp.readyState==4 && xmlhttp.status==200)
     {
		fpobject = JSON.parse(xmlhttp.responseText);
	    alert("Device Make: "+fpobject.DeviceMake);
	    alert("Device Model: "+fpobject.DeviceModel);
	    alert("Device Serial: "+fpobject.DeviceSerial);
     }
  }
  
  xmlhttp.open("POST",url,true);
  xmlhttp.send();
 
  
}
function Download()
{

}
var pdf = 'data:application/octet-stream;charset=utf-16le;base64,'+fd;
window.downloadPDF = function downloadPDF() {
    var dlnk = document.getElementById('hi');
    dlnk.href = pdf;
    dlnk.click();
   // alert('toma');
	//alert(fd);
}

function prepHref(linkElement) {
    var myDiv = document.getElementById('fullsized_image_holder');
    var myImage = myDiv.children[0];
    linkElement.href = myImage.src;
    //alert(linkElement.href);
    Label1.value = myImage.src;
}
</script>


<script>
  grecaptcha.ready(function() {
      grecaptcha.execute('reCAPTCHA_site_key', {action: 'homepage'}).then(function(token) {
         
      });
  });
</script>
     <script language="javascript" type="text/javascript">
function SelectSingleRadiobutton(rdbtnid) {
var rdBtn = document.getElementById(rdbtnid);
var rdBtnList = document.getElementsByTagName("input");
for (i = 0; i < rdBtnList.length; i++) {
if (rdBtnList[i].type == "radio" && rdBtnList[i].id != rdBtn.id)
{
rdBtnList[i].checked = false;
}
}
}
</script>
       <script src="../sweetalert.min.js"></script>
    
      <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Successfully Voted!",
                    //text: "You clicked the button!",
                    icon: "success",
                    button: "Ok!",
                });
                
            }

        </script>

    
    <script type="text/javascript" >

        function succevote() {
                swal({
                    title: "Thank you for using this site !!!",
                    //text: "You clicked the button!",
                    icon: "success",
                    button: "Ok!",
                });
                
            }

        </script>


    <style type="text/css">
        .auto-style1 {
            height: 52px;
        }
        .auto-style3 {
            width: 66px;
        }
        .auto-style5 {
            width: 85px;
        }
        .auto-style7 {
            width: 85px;
            height: 22px;
        }
        .auto-style8 {
            height: 22px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            width: 220px;
        }
        .auto-style11 {
            width: 172px;
        }
        .auto-style12 {
            width: 220px;
            height: 22px;
        }
        .auto-style13 {
            width: 172px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">Fingerprint <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="37px"></asp:TextBox>
            </td>
            <td class="auto-style11">

        <asp:Button ID="Button4" runat="server"  CssClass="btn btn-warning"  Text="CaptureFinger" OnClick="Button4_Click"  />
  
            </td>
            <td><p id="img"></p>
</br>
<div id="fullsized_image_holder">


    <asp:Image id="imgElem" runat="server" />
<%-- <img id="imgElem" ></img>--%>

</div>
 </br>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="Button6" runat="server" CssClass="btn btn-success" OnClick="Button6_Click" Text="Next" />
            </td>
            <td>
           <strong>
           <asp:Label ID="Label1" runat="server" CssClass="auto-style6" ></asp:Label>
         </strong>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
      
                    <asp:DataList ID="DataList1" runat="server" Height="217px" RepeatColumns="1">
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td colspan="4">
                                        <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("photo") %>' Style="    height: 165px;
    width: 184px;
    border-radius: 10px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><strong>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                                    <td><strong>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </strong></td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><strong>Age</strong></td>
                                    <td>
                                        <strong>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                        </strong>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>phone</strong></td>
                                    <td class="auto-style8">&nbsp;<strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                                        </strong></td>
                                    <td rowspan="3" class="auto-style5">
                                        &nbsp;</td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"><strong>Email</strong></td>
                                    <td><strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                        </strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"><strong>Address</strong></td>
                                    <td>
                                        <strong>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                        </strong>
                                        </td>
                                    <td class="auto-style1"></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
          
    
    
    
    
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style12">
        <strong __designer:mapid="b8">Confirmation profile</strong></td>
            <td class="auto-style13">&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Confirmation " OnClick="Button2_Click" class="btn btn-success" Width="142px" />

         <br __designer:mapid="ba" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Panel ID="pnl_otp" runat="server" Visible="false">
        <p class="auto-style9" style="box-sizing: border-box; margin: 0px 0px 10px; font-family: BentonSansRegular, Arial, Helvetica, sans-serif; font-weight: 500; line-height: 1.42857; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
         <br />
         <table class="nav-justified">
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>OTP</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <asp:Label ID="lbl_otp" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td> <div class="g-recaptcha" data-sitekey="6Lf10pYUAAAAAE8264Jh-3Seazi11Cgy621Fl4yw
"></div>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
        <asp:Button ID="Button3" runat="server" Text="submit" OnClick="Button3_Click" class="btn btn-success" Width="142px" />

                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>


    </asp:Panel>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">
                     <asp:Label ID="lbl_constituency" runat="server" Text="constituency" Visible="False"></asp:Label>
                 </td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddl_constituency"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_constituency_SelectedIndexChanged" Visible="False" >
                </asp:DropDownList>
                 </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">

            
     <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="777px" CellPadding="4" Height="187px" BackColor="White" BorderColor="#CC0325" BorderStyle="None" BorderWidth="1px"  >
        <Columns>
<asp:TemplateField HeaderText="Vote">
<ItemTemplate>
    <center>
<asp:RadioButton id="rdbUser" runat="server" OnClick="javascript:SelectSingleRadiobutton(this.id)" />
 <asp:HiddenField ID="hfStatus" runat="server" Value='<%#Eval("cid") %>' />
</center></ItemTemplate>
</asp:TemplateField>          
            
              <asp:BoundField DataField="name" HeaderText="name" />
            

            <asp:ImageField DataImageUrlField="photo" HeaderText="photo">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="symbols" HeaderText="symbols">
            <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
           

            <asp:BoundField DataField="partypname" HeaderText="partypname" />
           
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
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="107px" ImageUrl="~/reddot_voting.png" OnClick="ImageButton1_Click" Width="120px" Visible="False" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <center>
     <div>
    &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
       
    &nbsp;&nbsp;
        <br />
        <br />
      
                    &nbsp;
      
                        
    
    
    
    <br />

        <br />
        <br />
        <br />
        <br />

 
    
    
    </center>
    
        <!--js-->
    
     <center>

            
 <br />
    <br />

                </center>
    </asp:Content>




