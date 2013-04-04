﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TakerFunctions.aspx.vb" Inherits="ISC567_Spring2013.TakerFunctions" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="Stylesheet" type="text/css" href="styles/IFrameStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
    <div class="AddEditIFrame" style="width:800px; height:260px;">
    <table style="width:100%;">
        <tr>
            <td style="text-align:center" >
                <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Exam Taker" CanDragIFrame="True" CssClass="IFrameHeader" Width="98%"></ccJSIM:DragIFrame>
            </td>
            </tr>
            <tr align="center">
                <td>
                  <br />
                  <asp:Label ID="lblTakerHeader" runat="server" Text="Welcome to the Exam System" Font-Underline="true" Font-Bold="True" Width ="90%" Height="20px"></asp:Label>
                </td>
            </tr>
         <tr>
                <td>
                     <br />
                    <asp:Label ID="lblMessage" runat="server" Text="You may select any of the following functions: (click a link)" Font-Bold="true" Width ="90%"></asp:Label>

                </td>
            </tr>
        <tr>
                <td>
                     <br />
                    <ccJSIM:OpenIFrameLinkButton ID="btnRoster" runat="server" CssClass="Button" 
                     FrameSrc="Roster.aspx" HeightPosition="500" 
                     IFrameName="ifRoster" LeftPosition="80" Text="Add User" TopPosition="80" 
                     WidthPosition="708" ZIndex="160" > Exam Roster </ccJSIM:OpenIFrameLinkButton>
                </td>
            </tr>
        <tr>
                <td>
                    <ccJSIM:OpenIFrameLinkButton ID="btnAddEditPerson" runat="server" CssClass="Button" 
                     FrameSrc="AddEditPerson.aspx?mode=edit" HeightPosition="219" 
                     IFrameName="ifAddEditUser" LeftPosition="80" Text="Add User" TopPosition="80" 
                     WidthPosition="404" ZIndex="160" > Edit Personal Information </ccJSIM:OpenIFrameLinkButton>
                </td>
            </tr>
        <tr>
                <td>
                    <ccJSIM:OpenIFrameLinkButton ID="ifLogout" runat="server"> Logout of the System </ccJSIM:OpenIFrameLinkButton>
                </td>
              
            </tr>
        <tr align="right">
            <td>
                <br />
                <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" Text="Back To Main Page" CssClass="Button" IFrameName="ifAddEditUser" Interval="10"/>
            </td>
        </tr>
    </table>        
        </div>
    </form>
    </body>
</html>
