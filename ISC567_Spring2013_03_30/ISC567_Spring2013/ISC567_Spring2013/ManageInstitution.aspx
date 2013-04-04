<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManageInstitution.aspx.vb" Inherits="ISC567_Spring2013.ManageInstitution" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="styles/IFrameStyles.css" />

    <style type="text/css">
        .auto-style1
        {
            height: 239px;
            width: 660px;
        }
        .auto-style2
        {
            width: 660px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="ListIFrame">
        <table>
            <tr>
                <td>
                    <ccJSIM:DragIFrame ID="lblHeader" runat="server" Text="Manage Institution" CssClass="IFrameHeader" Width="100%">
                    </ccJSIM:DragIFrame>
                </td>
                <td style="text-align:right">
                    <ccJSIM:CloseIFrameButton ID="lbtnClose" runat="server" IFrameName="ifManageInstitution" Text="[X] Close" />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" Visible="false"> </asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <ccJSIM:OpenIFrameButton ID="btnAddInstitution" CssClass="Button" runat="server" FrameSrc="AddEditInstitution.aspx?mode=add"
                        IFrameName="ifAddEditInstitution" Text="Add Institution" 
                        HeightPosition="400" LeftPosition="700" TopPosition="100" WidthPosition="400" ZIndex="160" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" BorderStyle="Solid" BorderColor="Black"
                                BorderWidth="2px" Width="98%" Height="300px">
                                <ccJSIM:OpenIFrameGridView ID="gvInstitutionList" runat="server" Width="94%" AllowSorting="True"
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="3" ChangeRowColor="True" DataKeyNames="InstitutionID" 
                                    FrameSrc="AddEditInstitution.aspx" GridDeleteButtonText="" GridEditButtonText=""
                                    GridLines="Horizontal" GridSortColumn="LastName" GridSortDirection="ASC" HeightPosition="257"
                                    HighlighedRowColor="ActiveBorder" IFrameName="ifAddEditInstitution" IncludeSorting="True" 
                                    LeftPosition="60" ShowDeleteButton="True" ShowEditButton="True" ShowSelectorButton="True"
                                    TopPosition="60" WidthPosition="357" ZIndex="160" Interval="">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <Columns>
                                        <asp:BoundField DataField="InstitutionID" HeaderText="InstitutionID" SortExpression="InstitutionID" Visible="False" />
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="LineName" HeaderText="Line Name" SortExpression="LineName" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                        <asp:BoundField DataField="isSa" HeaderText="isSa" SortExpression="isSa" />
                                    </Columns>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                </ccJSIM:OpenIFrameGridView>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>

           
        </table>
        
        
        
        
        
        
        
        
        
        
    </div>
    </form>
</body>
</html>