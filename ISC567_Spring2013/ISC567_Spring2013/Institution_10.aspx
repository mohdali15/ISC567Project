<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_10.aspx.vb" Inherits="ISC567_Spring2013.Institution_10" %>

<%@ Register assembly="JSIM" namespace="JSIM.Custom_Controls" tagprefix="ccJSIM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">


.IFrameHeader
{
    font-size: 14pt;
    font-weight: bold;
    height: 25px;
    color: White;
    background-color: #ba1c1c;
    font-family: Verdana;
    padding: 5px 5px 5px 5px;
}

        .style1
        {
            font-size: x-large;
        }

    </style>
</head>
<body style="height: 360px">
    <form id="form1" runat="server">
    <p>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <ccJSIM:CloseIFrameLinkButton ID="lbtnLogOut" runat="server" 
                  IFrameName= "ifManageUser" Text="LogOut"></ccJSIM:CloseIFrameLinkButton>
               &nbsp;</p>
    <p>
               <ccJSIM:DragIFrame ID="lblHeader0" runat="server" 
               Text="Staff for:" CssClass="IFrameHeader" 
               CanDragIFrame="True"></ccJSIM:DragIFrame>
               &nbsp;
               <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="239px">
                   <asp:ListItem>Name of Universities</asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <ccJSIM:RadioButtonGridView ID="RadioButtonGridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" ChangeRowColor="True" 
        ForeColor="#333333" GridLines="None" GridSortDirection="ASC" 
        HighlighedRowColor="" IncludeSorting="True" ShowSelectorButton="True" 
        Width="374px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="NAME">
            <ItemStyle BorderStyle="Solid" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Admin">
            <ItemStyle BorderStyle="Solid" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Proctor">
            <ItemStyle BorderStyle="Solid" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Reviewer">
            <ItemStyle BorderStyle="Solid" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </ccJSIM:RadioButtonGridView>
    <br />
    <br />
    <ccJSIM:OpenIFrameButton ID="OpenIFrameButton1" runat="server" 
        Text="Add Staff" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <ccJSIM:OpenIFrameButton ID="OpenIFrameButton2" runat="server" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <ccJSIM:SaveAndCloseIFrameButton ID="SaveAndCloseIFrameButton1" runat="server" 
        Text="Close" />
    </form>
</body>
</html>


