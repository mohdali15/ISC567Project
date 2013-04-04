<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddEditExamProvider.aspx.vb" Inherits="ISC567_Spring2013.AddEditExamProvider" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="styles/IFrameStyles.css" />

    <style type="text/css">
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="ListIFrame">
        <table>
            <tr>
                <td>
                    <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Add/Edit Exam Provider" CssClass="IFrameHeader" Width="100%">
                    </ccJSIM:DragIFrame>
                </td>
                <td style="text-align:right">
                    <ccJSIM:CloseIFrameButton ID="lbtnClose" runat="server" IFrameName="ifAddEditExamProvider" Text="[X] Close" />
                </td>
                
            </tr>
            <tr>
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
                                BorderWidth="2px" Width="98%" Height="300px">
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