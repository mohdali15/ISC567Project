<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddEditPerson.aspx.vb" Inherits="ISC567_Spring2013.AddEditPerson" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="styles/IFrameStyles.css" />

    <style type="text/css">
        .auto-style1
        {
            height: 580px;
            width: 400px;
        }
        .auto-style2
        {
            width: 400px;
        }
        #form1
        {
            width: 424px;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="ListIFrame">
        <table>
            <tr>
                <td>
                    <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="" CssClass="IFrameHeader" Width="100%">
                    </ccJSIM:DragIFrame>
                </td>
                <td style="text-align:right">
                    <ccJSIM:CloseIFrameButton ID="lbtnClose" runat="server" IFrameName="ifAddEditPerson" Text="[X] Close" />
                </td>
                
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" BorderStyle="Solid" BorderColor="Black"
                                BorderWidth="2px" Width="98%" Height="98%">
                                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtFirstName" runat="server" style="margin-left: 20px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtLastName" runat="server" style="margin-left: 20px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtDateOfBirth" runat="server" style="margin-left: 5px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lblAddress1" runat="server" Text="Address Line 1"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblAddress2" runat="server" Text="Address Line 2"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtCity" runat="server" style="margin-left: 72px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtState" runat="server" Width="28px" style="margin-left: 60px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblZip" runat="server" Text="Zip Code"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtZip" runat="server" style="margin-left: 40px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lblPrimaryPhone" runat="server" Text="Phone Number (Primary)"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtPrimaryPhone" runat="server" style="margin-left: 13px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblPhoneType1" runat="server" Text="Phone Number Type"></asp:Label>
                                &nbsp
                                <asp:DropDownList ID="ddlPhoneType1" runat="server" style="margin-left: 42px">
                                    <asp:ListItem>Please Select One</asp:ListItem>
                                    <asp:ListItem>Cell</asp:ListItem>
                                    <asp:ListItem>Home</asp:ListItem>
                                    <asp:ListItem>Work</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="lblAlternatePhone" runat="server" Text="Phone Number (Alternate)"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtAlternatePhone" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblPhoneType2" runat="server" Text="Phone Number Type"></asp:Label>
                                &nbsp
                                <asp:DropDownList ID="ddlPhoneType2" runat="server" style="margin-left: 42px">
                                    <asp:ListItem>Please Select One</asp:ListItem>
                                    <asp:ListItem>Cell</asp:ListItem>
                                    <asp:ListItem>Home</asp:ListItem>
                                    <asp:ListItem>Work</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 87px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm your email address"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtEmailConfirm" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lblUserName" runat="server" Text="Choose a User Name"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 38px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblUserNameConfirm" runat="server" Text="Confirm your User Name"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtUserNameConfirm" runat="server" style="margin-left: 15px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 110px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm your password"></asp:Label>
                                &nbsp
                                <asp:TextBox ID="txtPasswordConfirm" runat="server" style="margin-left: 22px"></asp:TextBox>
                                &nbsp
                                <br />
                                <br />
                                <ccJSIM:SaveAndCloseIFrameButton ID="SaveAndCloseIFrameButton1" runat="server" IFrameName="ifAddEditPerson" Interval="100" Text="[x] SAVE" Width="125px" />

                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            
        </table>
        
    </div>
    </form>
</body>
</html>