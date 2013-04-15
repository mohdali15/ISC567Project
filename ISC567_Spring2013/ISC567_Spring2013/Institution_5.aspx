<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_5.aspx.vb" Inherits="ISC567_Spring2013.Institution_5" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Proctor</title>
    <link rel="stylesheet" type="text/css" href="Styles/IFrameStyles.css" />
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
                <tr class="IFrameHeader">
                    <td colspan="6">
                        <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Proctor" CssClass="IFrameHeader" CanDragIFrame="True" Width="475px"></ccJSIM:DragIFrame>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblExam" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblLoc" runat="server" Text=""></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblDatetime" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Button ID="btnShow" runat="server" Text="SHOW" />
                    </td>
                    <td align="center">
                        <asp:TextBox ID="txtPassword" runat="server" MaxLength="3"></asp:TextBox>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblMinsToGo" runat="server" Text="MINS TO GO"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="1000" >
                        </asp:Timer>
                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:Label ID="lblTime" runat="server" Text="Timer not refreshed yet."></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </td>
                    <td align="center">
                        <ccJSIM:CloseIFrameButton ID="btnClose" runat="server" IFrameName="ifInstitutionI5" Interval="10" CssClass="Button" Text="Close" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Label ID="lblListStatus" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Timer ID="Timer2" OnTick="Timer1_Tick" runat="server" Interval="100000">
                        </asp:Timer>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Width="100%" Height="300px" CssClass="PanelStyle">
                                    <ccJSIM:CheckboxGridView ID="gvAssigedUsers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" GridSortColumn="isSA" GridSortDirection="DESC" IncludeSorting="True" ShowHeaderCheckbox="False" StatusPanelId="lblListStatus" Width="99%" AutoGenerateColumns="False" AllowSorting="True" UseAjax="False" CheckedIdentifier="" CheckedMethodName="" UnCheckedMethodName="">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="PersonID" HeaderText="PersonID" SortExpression="PersonID" Visible="False" />
                                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="isSA" HeaderText="isSA" SortExpression="isSA" Visible="False" />
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
                                    </ccJSIM:CheckboxGridView>
                                </asp:Panel>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>

            </table>
    </div>
    </form>
</body>
</html>

