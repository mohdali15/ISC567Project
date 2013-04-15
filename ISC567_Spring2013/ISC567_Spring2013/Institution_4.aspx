<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_4.aspx.vb" Inherits="ISC567_Spring2013.Institution_4" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles/IFrameStyles.css" />
       
    <style type="text/css">
        #form1 {
            width: 392px;
        }
    </style>
       
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div class="AddEditIFrame" style="width: 500px; height: 470px;">
            <table cellpadding="0" cellspacing="0" style="height: 470px; width: 500px">
                <tr>
                    <td colspan="5" align="right">
                        <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="Label"></asp:Label>
                    </td>
                    
                </tr>
                <tr class="IFrameHeader">
                    <td colspan="5">
                        <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Schedule an Exam" CssClass="IFrameHeader" CanDragIFrame="True" Width="475px"></ccJSIM:DragIFrame>
                    </td>

                </tr>
                <tr valign="top">
            <td colspan="5">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Width="100%" Height="300px" CssClass="PanelStyle">
                            <ccJSIM:RadioButtonGridView ID="gvExamList" runat="server" AutoGenerateColumns="False" ChangeRowColor="True" GridSortColumn="isSA" GridSortDirection="DESC" HighlighedRowColor="" IncludeSorting="True" ShowSelectorButton="True" DataKeyNames="PersonID" AllowSorting="True" CheckedIdentifier="isSA" UseAjax="False">
                                    <Columns>
                                    <asp:BoundField DataField="PersonID" HeaderText="PersonID" SortExpression="PersonID" Visible="False" />
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="isSA" HeaderText="isSA" SortExpression="isSA" Visible="False" />
                                </Columns>
                            </ccJSIM:RadioButtonGridView>
                           
                                   
                        </asp:Panel>
                    </ContentTemplate>
                    
                </asp:UpdatePanel>
            </td>
        </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblScheduleExam" runat="server" Text="Schedule Exam: "></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel2" runat="server" ScrollBars="Vertical" Width="100%" Height="30px" CssClass="PanelStyle">

                            <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Visible="true">
                                <asp:ListItem>IN Progress</asp:ListItem>
                                <asp:ListItem>ALL Exams</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                    </ContentTemplate>
                    
                </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td >
                        <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" IFrameName="ifInstitutionI4" Interval="10" CssClass="Button" Text="Close" />
                        
                        </td>
                    <td>
                       <%-- <asp:Button ID="btnProctor" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Proctor" />
                     --%>   <ccJSIM:OpenIFrameButton ID="btnProctor" runat="server" CssClass="Button" FrameSrc="InstitutionI5.aspx" IFrameName="ifInstitutionI5" Text="Proctor" HeightPosition="450" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" />
                     </td>
                    <td>
                        <ccJSIM:OpenIFrameButton ID="btnScheduleExam" runat="server" CssClass="Button" FrameSrc="InstitutionI6.aspx" IFrameName="ifInstitutionI6" Text="Schedule a New Exam" HeightPosition="350" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" />
      
                       <%-- <asp:Button ID="btnScheduleNewExam" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Schedule a New Exam" />
                     --%>   
                        </td>
                    <td>
                        <asp:Button ID="btnEditScheduledExam" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Edit Schedule" />
                        
                        </td>
                    <td>
                        <asp:Button ID="btnShowRoster" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Show Roster" />
                                           
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>

