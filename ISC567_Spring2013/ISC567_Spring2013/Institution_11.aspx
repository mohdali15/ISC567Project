<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_11.aspx.vb" Inherits="ISC567_Spring2013.Institution_11" %>

<%@ Register assembly="JSIM" namespace="JSIM.Custom_Controls" tagprefix="ccJSIM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .style2
        {
            font-size: x-large;
            color: #FFFFFF;
            background-color: #CC0000;
        }
        .style3
        {
            color: #FFFFFF;
            background-color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <ccJSIM:CloseIFrameLinkButton ID="lbtnLogOut" runat="server" 
                  IFrameName= "ifManageUser" Text="LogOut"></ccJSIM:CloseIFrameLinkButton>
    
    </div>
    &nbsp;&nbsp;&nbsp; <span class="style2">Add Staff for:</span>&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="239px">
    </asp:DropDownList>
    <br />
    <br />
    <span class="style1"><span class="style3">Check to see if person exists in 
    system</span><br />
    <br />
    <span class="style3">Email Address:</span>
    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="266px"></asp:TextBox>
    <br />
    <br />
    <br />
    <ccJSIM:OpenIFrameButton ID="OpenIFrameButton1" runat="server" Text="Submit" />
&nbsp;&nbsp;
    <ccJSIM:CloseIFrameButton ID="CloseIFrameButton1" runat="server" Text="Close" />
    <br />
    <br />
    </span>
    </form>
</body>
</html>


