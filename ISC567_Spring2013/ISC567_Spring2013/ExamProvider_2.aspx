<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExamProvider_2.aspx.vb" Inherits="ISC567_Spring2013.ExamProvider_2" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel ="stylesheet" type ="text/css" href ="styles/IFrameStyles.css" />

    
    <style type="text/css">
        .auto-style1
        {
            height: 20px;
        }
    </style>

    
</head>
<body>
    <form id="Form" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods ="True">

        </asp:ScriptManager>
    <div class="AddEditIFrame" style="width:400px; height:282px;">
        <table style="width:100%;">
            <tr align="right" valign="top" >
                <%--<asp:Label ID="lblUser" runat="server" Text="User Name"></asp:Label>--%>
                <td colspan="2">
                 <ccJSIM:DragIFrame ID="DragIFrame1" runat="server" Text="User Name" CanDragIFrame="True" CssClass="label"> </ccJSIM:DragIFrame>
                    <br/>
                </td>
            </tr>
           
            
            <tr valign="bottom" class="IFrameHeader" >
               <td align="center" colspan="2">
                   
                 <asp:Label ID="lblWelcome" runat="server" Text="Welcome to the Exam Development System" CssClass="IFrameHeader" Font-Size="Medium"></asp:Label>
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
                    <asp:HyperLink ID="ExamProvider_E2" runat="server" NavigateUrl="~/Institution_I2.aspx">1. Manage Exam Use Permissions</asp:HyperLink>
                </td>
            </tr>

