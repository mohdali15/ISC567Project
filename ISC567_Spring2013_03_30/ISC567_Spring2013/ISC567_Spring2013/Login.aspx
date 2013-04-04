<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ISC567_Spring2013.Login" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="UserLogin" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99"
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt"
            Height="257px" UserNameLabelText="Login:" Width="328px">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
    </div>
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblRegister" runat="server" Text="If you are not yet registered with the system, please"></asp:Label>
        <ccJSIM:OpenIFrameLinkButton ID="lbtnCreateNewAccount" runat="server" FrameSrc="CreateNewAccount.aspx" HeightPosition="400" 
              IFrameName="ifCreateNewAccount" LeftPosition="250" TopPosition="100" WidthPosition="400"
             ZIndex="150" Visible="true">create a new user account</ccJSIM:OpenIFrameLinkButton>
    </form>
    
</body>
</html>
