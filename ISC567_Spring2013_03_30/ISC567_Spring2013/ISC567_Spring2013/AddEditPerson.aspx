<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddEditPerson.aspx.vb" Inherits="ISC567_Spring2013.AddEditPerson" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="styles/IFrameStyles.css" />

    <style type="text/css">
           ul li {
                  display: inline;
                  list-style-type: none;
                 
                 }        
        .auto-style1
        {
            height: 239px;
            width: 660px;
        }
        .auto-style2
        {
            width: 660px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
    <div class="AddEditIFrame" style="width:400px; height:215px;">
    <table style="width:100%;">
        <tr style="text-align:center">
            <td colspan ="2">
                <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Add/Edit Information" CanDragIFrame="True" CssClass="IFrameHeader" Visible="True" Width="98%">
                </ccJSIM:DragIFrame>
            </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" Font-Bold="true" Width ="100px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
         <tr>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:" Font-Bold="true" Width ="100px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
       
        <tr>
                <td>
                    <asp:Label ID="lblLogin" runat="server" Text="Login:" Font-Bold="true" Width ="100px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Bold="true" Width ="100px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        <tr align="right">
            <td colspan ="2">
                <br />
                <ccJSIM:SaveAndCloseIFrameButton ID="btnSave" Text="Save" CssClass="Button" runat="server" IFrameName="ifAddEditUser" MethodName="wsAddEditUser" ParentFrame="ifTakerFunctions" ParentPage="TakerFunctions.aspx" />&nbsp;
                <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" Text="Cancel" CssClass="Button" IFrameName="ifAddEditUser" Interval="10"/>
            </td>
        </tr>
    </table>        
        </div>
    </form>
</body>
</html>