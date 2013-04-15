<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_2.aspx.vb" Inherits="ISC567_Spring2013.Institution_1" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel ="stylesheet" type ="text/css" href ="styles/IFrameStyles.css" />

    
    <style type="text/css">
        .Button
        {}
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods ="True">

        </asp:ScriptManager>
    <div class="AddEditIFrame" style="width:400px; height:225px;">
        <table style="width:100%;">
            <tr align="right" valign="top" >
                <%--<asp:Label ID="lblUser" runat="server" Text="User Name"></asp:Label>--%>
                <td colspan="2">
                    <ccJSIM:DragIFrame ID="DragIFrame1" runat="server" Text="User Name" CanDragIFrame="True" CssClass="label"> </ccJSIM:DragIFrame>
                </td>
            </tr>
           
            
            <tr valign="bottom" class="IFrameHeader" >
               <td align="center" colspan="2">
                 <asp:Label ID="lblWelcome" runat="server" Text="Welcome to the Exam System " CssClass="IFrameHeader" Font-Size="Medium"></asp:Label>
               </td>
            </tr>
           
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblInstitution" runat="server" Text="University of South Alabama" CssClass="IFrameHeader" Font-Bold="True" Font-Size="Small"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <br/>
                    <asp:HyperLink ID="hlI3" runat="server" NavigateUrl="~/AddEditUser.aspx" Target="_blank">1. Request Permission to use an exam</asp:HyperLink>
                </td>
            </tr>

             <tr>
                <td colspan="2">
                    <asp:HyperLink ID="hlI4" runat="server" NavigateUrl="~/AddEditUser.aspx">2. Schedule/Proctor an exam</asp:HyperLink>
                </td>
            </tr>

             <tr>
                <td colspan="2">
                    <asp:HyperLink ID="hlI8" runat="server" NavigateUrl="~/AddEditUser.aspx">3. Print Exam Details</asp:HyperLink>
                </td>
            </tr>

             <tr>
                <td colspan="2">
                    <asp:HyperLink ID="I10" runat="server" NavigateUrl="~/AddEditUser.aspx">4. Work on Institutional Staff/Permissions</asp:HyperLink>
                </td>
            </tr>

             <tr align="left" valign="bottom">
                <td colspan="2">
                    <br/>
                    <br/>
                   
                   
                    <ccJSIM:CloseIFrameButton ID="btnClose" CssClass="Button" runat="server" Text="Close" IFrameName="ifInstitution_I2" Interval="10" PostBackUrl="~/Main.aspx" Width="104px" />
       
                </td>
                </tr>

       </table>
       

        

                
    </div>
    </form>
</body>
</html>

