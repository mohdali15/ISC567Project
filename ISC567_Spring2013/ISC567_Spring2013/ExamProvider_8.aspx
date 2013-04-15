<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExamProvider_8.aspx.vb" Inherits="ISC567_Spring2013.ExamProvider_8" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add An Exam</title>
    <link rel="stylesheet" type="text/css" href="Styles/IFrameStyles.css" />
</head>
<body>
    <form id="form2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div class="AddEditIFrame" style="width: 550px; height: 350px;">
            <table cellpadding="1" cellspacing="1" style="height: 350px; width: 550px">
                <tr>
                    <td colspan="4" align="right">
                        <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="Label"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" colspan="4">
                        <asp:Label ID="lblExamProvider" runat="server" Text="Exam Provider" CssClass="Label"></asp:Label>
                    </td>
                    <td colspan="1">
                        <asp:HyperLink ID="hlLogout" runat="server">Logout</asp:HyperLink>
                    </td>
                    
                </tr>
                <tr class="IFrameHeader">
                    <td colspan="5">
                        <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Add An Exam" CssClass="IFrameHeader" CanDragIFrame="True" Width="550px"></ccJSIM:DragIFrame>
                    </td>
                </tr>
                 <tr>
                    <td colspan="1">
                        <asp:Label ID="lblExamName" runat="server" Text="ExamName: " Font-Bold="true"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="txtExamName" runat="server" style="margin-left: 0px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="middle">
                        <asp:Label ID="lblExamTypeInfo" runat="server" Text="" CssClass="Label"></asp:Label>
                    </td>
               </tr>
                <tr valign="top">
            <td colspan="5">
            <asp:Label ID="lblExamType" runat="server" Text="Exam Type:" Font-Bold="true" CssClass="Label"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlExamType" runat="server" Width="250px" Height="16px" AutoPostBack="true" CssClass="DropDownList">
                    <asp:ListItem Value="-1">- Select an Exam Type -</asp:ListItem>
               </asp:DropDownList>
            </td>
        </tr>
                <tr>
                    <td colspan="1">
                        <asp:Label ID="lblShortName" runat="server" Text="Short Name: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="txtShortName" runat="server" Width="250px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td colspan="1">
                        <asp:Label ID="lblDescription" runat="server" Text="Description: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td colspan="4">
                        <asp:TextBox ID="txtDescription" runat="server" Width="250px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDuration" runat="server" Text="Duration: " Font-Bold="true"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="txtDuration" runat="server" Width="90px"></asp:TextBox>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblMinutes" runat="server" Text="Minutes" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQuestions" runat="server" Width="80px"></asp:TextBox>
                    </td>
                    <td>
                       <asp:Label ID="lblQuestions" runat="server" Text="#Questions" Width="100px"></asp:Label>
                    </td>
                    
                </tr>
                <tr align="left">
                    <td colspan="5">
                        <ccJSIM:SaveAndCloseIFrameButton ID="btnSave" runat="server" Text="Save" CssClass="Button" IFrameName="ifAddEditPerson" MethodName="wsAddEditPerson" ParentFrame="ifManagePerson" ParentPage="ManagePerson.aspx" />
                        &nbsp;
                       <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" IFrameName="ifInstitutionI6" Interval="10" CssClass="Button" Text="Close" />
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>


