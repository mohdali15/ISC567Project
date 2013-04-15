<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExamProvider_4.aspx.vb" Inherits="ISC567_Spring2013.ExamProvider_4" %>

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
               <td align="right">
                    &nbsp;<asp:Label ID="lblInstitution" runat="server" Text="Logout" CssClass="IFrameHeader" Font-Bold="True" Font-Size="Small"></asp:Label>
               </td>
                
            </tr>
           
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblHeading" runat="server" Text="Staff For University of South Alabama" CssClass="IFrameHeader" Font-Size="Small"></asp:Label>
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
                                <ccJSIM:CheckboxGridView ID="CheckboxGridView1" runat="server" AutoGenerateColumns="False" CheckedIdentifier="" CheckedMethodName="" GridSortColumn="" GridSortDirection="ASC" IncludeSorting="True" ShowHeaderCheckbox="True" StatusPanelId="" UnCheckedMethodName="" UseAjax="False">
                                    <Columns>
                                        <asp:BoundField AccessibleHeaderText="Staff Name" HeaderText="Name" />
                                        <asp:BoundField AccessibleHeaderText="PrSA" HeaderText="PrSA" />
                                        <asp:BoundField HeaderText="ExDeveloper" />
                                        <asp:BoundField HeaderText="PrStaff" />
                                    </Columns>
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

                    <ccJSIM:CloseIFrameButton ID="btnAddStaff" CssClass="Button" runat="server" Text="Add Staff" IFrameName="ifInstitution_I2" Interval="10" Width="162px" /> 
        &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="BtnEditStaff" runat="server" Text="Edit Staff" Width="162px" /> &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="BtnClose" runat="server" Text="Close" Width="80px" />
       
                </td>
                </tr>

        
    </table>
    </div>
    </form>
</body>
</html>
