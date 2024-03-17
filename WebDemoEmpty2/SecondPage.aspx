<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondPage.aspx.cs" Inherits="WebDemoEmpty2.SecondPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="Label1" Text="Label">The text passed from first page: </asp:Label>
            
            <asp:Label runat="server" ID="Data_Label" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
