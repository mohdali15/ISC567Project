<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Institution_13.aspx.vb" Inherits="ISC567_Spring2013.Institution_13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblPersonInSystem" runat="server" Text="Person is new to system. Set insitution"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

        <asp:Button ID="btnClose" runat="server" Text="Close" />
        <br />
        <br />
        <asp:Button ID="btnCreateNewRecord" runat="server" Text="Create and Edit Record" />

    </div>
        
    </form>
</body>
</html>
