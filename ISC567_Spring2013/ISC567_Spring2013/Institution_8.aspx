<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_8.aspx.vb" Inherits="ISC567_Spring2013.Institution_8" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Institution_8" style="width:400px; height:300px;">
        <table cellpadding="0" cellspacing="0" style="width: 500px; height: 300px;">
            <tr><td colspan="3">
           <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label></td>
            </tr>
        <%-- <br />--%>
            <tr><td colspan="3">
        <asp:ListBox ID="lstScheduledExams" runat="server"></asp:ListBox> </td>
        </tr>
                <%--<br />--%>

<%--<br />--%>
        
            <tr><td colspan="0" draggable="true">
         <asp:Button ID="btnClose" runat="server" Text="Close" Height="20px" Width="40" />   </td> 
         <td colspan="0">
        <asp:Button ID="btnShowRoster" runat="server" Text="Show Roster" Height="30px" Width="85" /> </td>
        <td  colspan="0">
        <asp:Button ID="btnPrintExam" runat="server" Text="Print Exam" Height="20px" Width="70" /> </td>
        </tr>
        </table>
        
    </div>
        
        
        
       
    </form>
    
            
</body>
</html>