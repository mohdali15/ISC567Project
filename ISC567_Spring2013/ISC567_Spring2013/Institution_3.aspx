<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_3.aspx.vb" Inherits="ISC567_Spring2013.Institution_2" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head id="Head1" runat="server"><title></title><link href="styles/IFramestyles.css" rel ="stylesheet" type="text/css" /></head><body><form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">

        </asp:ScriptManager>
    <div class="CheckboxIFrame">
    <table cellpadding="0" cellspacing="0" style="width:500px; height:100px;">
        <tr align="right" valign="top" >
                <%--<asp:Label ID="lblUser" runat="server" Text="User Name"></asp:Label>--%>
                <td colspan="2">
                    <ccJSIM:DragIFrame ID="DragIFrame1" runat="server" Text="User Name" CanDragIFrame="True" CssClass="label"> </ccJSIM:DragIFrame>
                </td>
            </tr>
           
            
            <tr class="IFrameHeader" >
               <td align="center">
                    &nbsp;<asp:Label ID="lblInstitution" runat="server" Text="University of South Alabama" CssClass="IFrameHeader" Font-Bold="True" Font-Size="Medium"></asp:Label>
               </td>
                
            </tr>
           
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblHeading" runat="server" Text="Check each exam you would like to use" CssClass="IFrameHeader" Font-Size="Small"></asp:Label>
                </td>
            </tr>
           
            <%--<tr valign="top">
                <td colspan="2">
                    <asp:Label ID="LblRole" runat="server" Height="25px" Text="Select A Role: " Font-Bold="true"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="ddlRole" runat="server" Width="200px" Height="25px" AutoPostBack="true">
                        <asp:ListItem Value="1">- Select a Role -</asp:ListItem>
                    </asp:DropDownList>
             </td>
            </tr>--%>
        
         <tr valign="top">
            <td colspan="2">
                <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
            <tr valign="middle">
                <td colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" width="100%"
                                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="350px">
                                <ccJSIM:CheckboxGridView ID="gvAssignUsers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"   IncludeSorting="True" ShowHeaderCheckbox="False" Width="99%" UseAjax="False" 
                                    AutoGenerateColumns="False" CheckedMethodName="wsAssignRole" DataKeyNames="USERID"
                                     GridSortColumn="LastName" StatusPanelId="lblStatus" UnCheckedMethodName="wsUnAssignRole" GridSortDirection="ASC" HorizontalAlign="Left" >

                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="USERID" HeaderText="USERID" SortExpression="USERID" Visible="False" />
                                        <asp:BoundField DataField="Checked" HeaderText="Checked" Visible="False" />
                                        <asp:BoundField DataField="FirstName" HeaderText="Exam Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="EMail" HeaderText="Request Status" SortExpression="EMail" />
                                        
                                        <asp:BoundField DataField="LastName" HeaderText="Exam Description" SortExpression="LastName" />
                                        
                                                          </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />

                                </ccJSIM:CheckboxGridView>
                            </asp:Panel>
                        </ContentTemplate>
                        <%--<Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddlRole" EventName="SelectedIndexChanged" />
                        </Triggers>--%>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr align="left" valign="bottom">
                <td colspan="2">

                    <ccJSIM:CloseIFrameButton ID="btnClose" CssClass="Button" runat="server" Text="Close" IFrameName="ifInstitution_I2" Interval="10" Width="95px" />
       
                </td>
                </tr>

        
    </table>
    </div>
    </form>
</body>
</html>
