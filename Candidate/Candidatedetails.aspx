<%@ Page Title="" Language="C#" ClientIDMode="Static"  MasterPageFile="~/Candidate/candMasterPage.master" AutoEventWireup="true" CodeFile="Candidatedetails.aspx.cs" Inherits="Candidate_Candidatedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 522px;
        }
        .auto-style4 {
            width: 516px;
            height: 56px;
        }
        .auto-style5 {
            width: 513px;
            font-size: large;
            height: 56px;
        }
        .auto-style8 {
            width: 340px;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            width: 549px;
            height: 53px;
        }
        .auto-style13 {
            width: 340px;
            height: 53px;
        }
        .auto-style15 {
            width: 524px;
            font-size: large;
            height: 53px;
        }
        .auto-style17 {
            width: 340px;
            height: 56px;
        }
        .auto-style18 {
            width: 511px;
            height: 53px;
        }
        .auto-style19 {
            width: 507px;
            font-size: large;
            height: 53px;
        }
        .auto-style20 {
            width: 511px;
            height: 72px;
        }
        .auto-style21 {
            width: 507px;
            font-size: large;
            height: 72px;
        }
        .auto-style22 {
            width: 340px;
            height: 72px;
        }
        .auto-style23 {
            width: 511px;
            height: 56px;
        }
        .auto-style24 {
            width: 507px;
            font-size: large;
            height: 56px;
        }
        .auto-style25 {
            height: 65px;
        }
        .auto-style26 {
            font-size: large;
            height: 65px;
        }
        .auto-style27 {
            width: 340px;
            height: 65px;
        }
        .auto-style30 {
            width: 340px;
            height: 55px;
        }
        .auto-style33 {
            font-size: large;
            height: 29px;
        }
        .auto-style35 {
            font-size: large;
            height: 57px;
        }
        .auto-style36 {
            width: 340px;
            height: 57px;
        }
        .auto-style39 {
            width: 524px;
            font-size: large;
            height: 63px;
        }
        .auto-style40 {
            font-size: large;
            height: 63px;
        }
        .auto-style41 {
            width: 340px;
            height: 63px;
        }
        .auto-style42 {
            width: 524px;
            font-size: large;
            height: 81px;
        }
        .auto-style43 {
            font-size: large;
            height: 81px;
        }
        .auto-style44 {
            width: 340px;
            height: 81px;
        }
        .auto-style46 {
            width: 524px;
            font-size: large;
            height: 71px;
        }
        .auto-style47 {
            font-size: large;
            height: 71px;
        }
        .auto-style48 {
            width: 340px;
            height: 71px;
        }
        .auto-style49 {
            font-size: large;
            height: 75px;
        }
        .auto-style50 {
            width: 340px;
            height: 75px;
        }
        .auto-style51 {
            height: 53px;
        }
        .auto-style52 {
            text-align: center;
            color: #003399;
        }
        .auto-style53 {
            color: #990033;
        }
    </style>
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
       //alert("hhhhhh: " + template);

       TextBox1.value = fpobject.Base64BMPIMage;
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

            function invalid() {
                swal({
                    title: "please upload photo...!!!",
                    //text: "You clicked the button!",
                    icon: "warning",
                    button: "Ok!",
                });
                
            }

        </script>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style51" colspan="4">
                <h3 class="auto-style52"><strong>Candidate Details</strong></h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style15">VoterId </td>
            <td class="auto-style13">
                <asp:TextBox ID="txt_vid" runat="server" required="" CssClass="auto-style10" AutoPostBack="true" OnTextChanged="txt_vid_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style11"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style53"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">name </td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_name" runat="server" required="" CssClass="auto-style10"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">State</td>
            <td class="auto-style17">
                    <asp:DropDownList ID="dropstate" AutoPostBack="true" runat="server" Width="213px" OnSelectedIndexChanged="dropstate_SelectedIndexChanged">
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
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">constituency</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddl_constituency" runat="server" >
                </asp:DropDownList>
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">party name</td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList1" runat="server" required="">
                    <asp:ListItem>Select Party</asp:ListItem>
                    <asp:ListItem>Congress</asp:ListItem>
                    <asp:ListItem>Bharatiya Janata Party</asp:ListItem>
                    <asp:ListItem>Communist Party</asp:ListItem>
                    <asp:ListItem>Aam Aadmi Party </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">gender</td>
            <td class="auto-style17">
                <asp:RadioButtonList ID="RadioButtonList1" required="" runat="server" RepeatDirection="Horizontal" Width="240px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26">&nbsp;email </td>
            <td class="auto-style27">
                <asp:TextBox ID="txt_email" required="" Type="Email" runat="server" CssClass="auto-style10"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style35">&nbsp;phone</td>
            <td class="auto-style36">
                <asp:TextBox ID="txt_ph" required="" runat="server" CssClass="auto-style10" pattern="^[789]\d{9}$" MaxLength="10"></asp:TextBox>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style40">&nbsp;city </td>
            <td class="auto-style41">
                <asp:TextBox ID="txt_city" required="" runat="server" CssClass="auto-style10"></asp:TextBox>
            </td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style42"></td>
            <td class="auto-style43">address </td>
            <td class="auto-style44">
                <asp:TextBox ID="txt_adrs" required="" runat="server" CssClass="auto-style10"></asp:TextBox>
            </td>
            <td class="auto-style42"></td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style49">finger <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="16px"></asp:TextBox>
            </td>
            <td class="auto-style50">

                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-warning" OnClick="LinkButton1_Click">CaptureFinger</asp:LinkButton>
  
            </td>
            <td class="auto-style50"><p id="img"></p>
</br>
<div id="fullsized_image_holder">


    <asp:Image id="imgElem" runat="server" />
<%-- <img id="imgElem" ></img>--%>

</div>
 </br></td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style47">photo </td>
            <td class="auto-style48">
                <asp:FileUpload ID="fpphoto" runat="server" required="" />
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style10"><span class="auto-style9"></td>
            <td class="auto-style21">symbols</td>
            <td class="auto-style22">
                <asp:FileUpload ID="fpsym" runat="server" required="" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3"> </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn btn-success"  style="font-size: large" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

