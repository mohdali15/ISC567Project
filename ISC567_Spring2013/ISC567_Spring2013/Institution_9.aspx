<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_9.aspx.vb" Inherits="ISC567_Spring2013.Institution_9" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <%--    <link rel ="stylesheet" type ="text/css" href ="styles/IFrameStyles.css" />--%>
    <link href= "Styles/IFrameStyles.css" rel ="StyleSheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods ="True">

        </asp:ScriptManager>
        

        
        
    <div class="AddEditIFrame" style="width:700px; height:300px;">
        <table style="width:100%;">
            <tr align="right" valign="top" >
                <%--<asp:Label ID="lblUser" runat="server" Text="User Name"></asp:Label>--%>
                <td>
                    <ccJSIM:DragIFrame ID="DragIFrame1" runat="server" Text="User Name" CanDragIFrame="True" CssClass="label"> </ccJSIM:DragIFrame>
                </td>
            </tr>
           
            
            <tr valign="bottom" class="IFrameHeader" >
               <td align="left">
                 <asp:Label ID="lblDatabase" runat="server" Text=" USA  Database Exam   " CssClass="IFrameHeader"></asp:Label>
               </td>
            </tr>
           
            <tr>
                <td align="right" colspan="1">
                    <asp:Label ID="lblInstitution" runat="server" Text="Shelby Hall" CssClass="IFrameHeader" Font-Bold="false"></asp:Label>
                </td>

            </tr>
            <tr>



                    <td align="left" colspan="1">
                    <asp:Label ID="LabelStatus" runat="server" Text="Status" CssClass="IFrameHeader" Font-Bold="false" BackColor="Black"></asp:Label>
                </td>
                  </tr>
              <tr>
                  <td>
                      
                      <asp:Button ID="btnClose" runat="server" Text="Close"/>
                  </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
              </table>
        <ccJSIM:RadioButtonGridView ID="rbCheckInstitution" runat="server" Height="136px"></ccJSIM:RadioButtonGridView>
    </div>
    </form>
</body>
</html>