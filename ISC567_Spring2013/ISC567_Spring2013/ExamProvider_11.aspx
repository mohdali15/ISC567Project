<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExamProvider_11.aspx.vb" Inherits="ISC567_Spring2013.ExamProvider_11" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Exam Item Details</title>
    <link rel="stylesheet" type="text/css" href="Styles/IFrameStyles.css" />
    <style type="text/css">
        .auto-style1 {
            width: 116px;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            width: 65px;
        }
        .auto-style4 {
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div class ="CheckboxIFrame">
            <table cellpadding="0" cellspacing="0" style="width: 500px; height: 320px;" border="1">
                <tr>
                    <td colspan="6" align="right">
                        <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="Label"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" colspan="5">
                        <asp:Label ID="lblExamProvider" runat="server" Text="Exam Provider" CssClass="Label"></asp:Label>
                    </td>
                    <td colspan="1" class="auto-style2" align="right">
                        <asp:HyperLink ID="hlLogout" runat="server">Logout</asp:HyperLink>
                    </td>
                    
                </tr>
                <tr class="IFrameHeader">
                    <td colspan="1" class="auto-style1">
                        <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Items for" CssClass="IFrameHeader" CanDragIFrame="True" Width="100px"></ccJSIM:DragIFrame>
                    </td>
                    <td colspan="1" class="auto-style3">
                        <asp:Label ID="lblExam" runat="server" Text="Exam"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtExam" runat="server" style="margin-left: 0px" Width="175px"></asp:TextBox>
                    </td>
                    <td colspan="1" class="auto-style4">
                         <asp:Label ID="lblExamStatus" runat="server" Text="Exam Status"></asp:Label>
                    </td>
                    <td colspan="2" class="auto-style2">
                        <asp:TextBox ID="txtExamStatus" runat="server" style="margin-left: 0px" Width="161px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblListStatus" runat="server" ForeColor="Blue"></asp:Label>
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
                                    <asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="Item" />
                                    <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="#" />
                                    <asp:BoundField DataField="Email" SortExpression="Email" HeaderText="K1" />
                                        <asp:BoundField DataField="Email" HeaderText="K2" />
                                        <asp:BoundField DataField="Email" HeaderText="K3" />
                                    <asp:BoundField DataField="isSA" HeaderText="isSA" SortExpression="isSA" Visible="False" />
                                </Columns>
                            </ccJSIM:RadioButtonGridView>
                           
                                   
                        </asp:Panel>
                    </ContentTemplate>
                    
                </asp:UpdatePanel>
            </td>
                 <td colspan="1" valign="top" align="right" class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 0px" TextMode="MultiLine" Height="138px">Quality Objective</asp:TextBox>
                 </td>
        </tr>
                <tr>
                    <td class="auto-style1">
                        <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" IFrameName="" Interval="10" CssClass="Button" Text="Close" Width="119px" />
                        
                        </td>
                    <td class="auto-style3">
                       <%-- <asp:Button ID="btnProctor" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Proctor" />
                     --%>   <ccJSIM:OpenIFrameButton ID="btnAdditem" runat="server" CssClass="Button" FrameSrc="" IFrameName="ifExamProviderE12" Text="Add New Item" HeightPosition="450" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" />
                     </td>
                    <td>
                        <ccJSIM:OpenIFrameButton ID="btnShowItem" runat="server" CssClass="Button" FrameSrc="" IFrameName="ifExamProviderE13" Text="Show Item" HeightPosition="350" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" Width="102px" />
      
                       <%-- <asp:Button ID="btnScheduleNewExam" runat="server" IFrameName="ifAddEditPerson" Interval="10" CssClass="Button" Text="Schedule a New Exam" />
                     --%>   
                        </td>
                    <td>
                        <ccJSIM:OpenIFrameButton ID="btnDeleteItem" runat="server" CssClass="Button" FrameSrc="" IFrameName="" Text="Delete Item" HeightPosition="350" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" />
       
                        </td>
                    <td class="auto-style4">
                        <ccJSIM:OpenIFrameButton ID="btnPrintObjectives" runat="server" CssClass="Button" FrameSrc="" IFrameName="" Text="Print Objectives" HeightPosition="350" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" />
                         
                    </td>
                    <td class="auto-style2">
                        <ccJSIM:OpenIFrameButton ID="btnPrintDetails" runat="server" CssClass="Button" FrameSrc="" IFrameName="" Text="Print Details" HeightPosition="350" LeftPosition="350" TopPosition="150" WidthPosition="600"  ZIndex="200" Width="186px" />
                         
                    </td>
                </tr>


            </table>
    </div>
    </form>
</body>
</html>

