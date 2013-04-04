<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Roster.aspx.vb" Inherits="ISC567_Spring2013.Roster" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="Stylesheet" type="text/css" href="Styles/IFrameStyles.css"/>
    
    <style type="text/css">
        .style1
        {
            font-size: 14pt;
            font-weight: bold;
            height: 25px;
            color: White;
            background-color: #ba1c1c;
            font-family: Verdana;
            padding: 5px 5px 5px 5px;
            width: 604px;
        }
        .style2
        {
            width: 604px;
        }
        .auto-style1
        {
            width: 274px;
        }
        .auto-style2
        {
            width: 2172px;
        }
    </style>
    
</head>
<body>
      <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <div class="ListIFrame">
       <table cellpadding ="0" cellspacing="0" 
              style="height:30px; width:704px;margin-bottom: 0px;">
           
       <tr valign="top">
         <td align="left" class="auto-style2">

            <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text=" exams in which you are involved" 
                 CssClass="IFrameHeader" CanDragIFrame="True"></ccJSIM:DragIFrame> &nbsp;</td>
       
        
                 <td align= "right" class="style1">
           
           <ccJSIM:CloseIFrameLinkButton ID="CloseIFrameLinkButton1" runat="server" Text="[x] Close" 
                         IFrameName="ifManageUser" ForeColor="White"></ccJSIM:CloseIFrameLinkButton>  
         </td>
               </tr>  
      
          
        
    </table>
         
    
       <table style="width:98%;margin-bottom: 2px;">
       <tr>
        <td valign="top" >
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
             <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" BorderStyle="Solid" BorderColor="Black" BorderWidth="0px" Width="98%" Height="350px">
             
                 <ccJSIM:OpenIFrameGridView ID="gvroster" runat="server" Width="430px" 
                     AutoGenerateColumns="False" CellPadding="4" ChangeRowColor="True" 
                     DataKeyNames="rosterid" ForeColor="#333333" FrameSrc="roster.aspx" GridLines="None" 
                     GridSortColumn="LastName" GridSortDirection="ASC" HeightPosition="300" 
                     HighlighedRowColor="Blue" IFrameName="ifAddEditUser" IncludeSorting="True" 
                     LeftPosition="60" ShowDeleteButton="False" ShowEditButton="False" 
                     ShowSelectorButton="True" TopPosition="60" WidthPosition="300" 
                     ZIndex="150" AllowSorting="True" Interval="" GridDeleteButtonText="" 
                     GridEditButtonText="">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                    <asp:BoundField DataField="rosterid" Visible="False" HeaderText="rosterid" SortExpression="rosterid" />
                        
                       <%-- <asp:BoundField DataField="Questions" HeaderText="#Questions" SortExpression="Questions" />--%>
                         <asp:BoundField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                       <asp:BoundField DataField="ExStatus" HeaderText="ExStatus" SortExpression="ExStatus" />
                         <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                         <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                         <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                         <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </ccJSIM:OpenIFrameGridView>
            </asp:Panel>
            </ContentTemplate>
            </asp:UpdatePanel>

        </td>
        </tr>
    </table>
         <table style="text-align:center; width:98%">
           
             <tr>
                 <td >
                     <asp:Button ID="btnScheduleAnotherExam" runat="server" Text="Schedule another exam"
                         Width="139px" CssClass="Button" /></td>

                 <td>
                     <asp:Button ID="btnTakeExam" runat="server" Text="Take The scheduled exam"
                         Width="180px" CssClass="Button" /></td>
                 <td class="auto-style1">
                     <asp:Button ID="btnCancelExam" runat="server" Text="  cancel the scheduled exam"
                         Width="190px" CssClass="Button" /></td>


             </tr>
       <tr> 
           
                <td><asp:Button ID="Button4"  runat="server" Text=" close the screen" 
                Width="139px"  CssClass="Button"/></td>

        <td><asp:Button ID="Button5"  runat="server" Text="Logout" 
                Width="139px"  CssClass="Button"/></td>
        <td class="auto-style1"><asp:Button ID="Button6"  runat="server" Text="  print results for scheduled exam" 
                Width="190px"  CssClass="Button"/></td>
                   </tr>  
        
    </table>
         
         
    </div>
    </form>
</body>
</html>

