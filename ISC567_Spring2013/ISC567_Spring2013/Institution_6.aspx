<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_6.aspx.vb" Inherits="ISC567_Spring2013.Institution_6" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Schedule an Exam</title>
    <link rel="stylesheet" type="text/css" href="Styles/IFrameStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div class="AddEditIFrame" style="width: 450px; height: 300px;">
            <table cellpadding="0" cellspacing="0" style="height: 300px; width: 450px">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="Label"></asp:Label>
                    </td>
                    
                </tr>
                <tr class="IFrameHeader">
                    <td colspan="2">
                        <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Schedule An Exam" CssClass="IFrameHeader" CanDragIFrame="True" Width="450px"></ccJSIM:DragIFrame>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="middle">
                        <asp:Label ID="lblExam" runat="server" Text="" CssClass="Label"></asp:Label>
                    </td>
               </tr>
                <tr valign="top">
            <td colspan="2">
            <asp:Label ID="lblChangeExam" runat="server" Text="Select a Exam:" Font-Bold="true" CssClass="Label"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="ddlExam" runat="server" Width="200px" Height="25px" AutoPostBack="true" CssClass="DropDownList">
                    <asp:ListItem Value="-1">- Select an Exam -</asp:ListItem>
               </asp:DropDownList>
            </td>
        </tr>
                <tr>
            <td colspan="2">
                <asp:Label ID="lblStatus" runat="server" ForeColor="Blue"></asp:Label>
                
            </td>
        </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDate" runat="server" Text="Date: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="200px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTime" runat="server" Text="Time: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTime" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLocation" runat="server" Text="Location: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCreator" runat="server" Text="Created By: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCreator" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblExamStatus" runat="server" Text="Status: " Font-Bold="true" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExamStatus" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr align="left">
                    <td colspan="2">
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

