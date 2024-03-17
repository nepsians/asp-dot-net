<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebDemoEmpty2.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

    <style>
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Set height to cover the entire viewport */
        }

        .inner-container {
            padding: 0px 16px 0px 16px;
            border: dashed;
            border-width: 1px;
            border-radius: 8px;
        }
    </style>
</head>

<body class="container">
    <div class="inner-container">
        <h3>Conversion to Upper Case </h3>

        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" Text="Label">Enter your text: </asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Style="width: 224px" />

                <br />
                <br />

                <asp:Button ID="Button1" runat="server" Text="Enter..." Style="width: 85px" OnClick="Button_Click" />
                <hr />

                <h3>Results: <span runat="server" id="changed_text" /></h3>
            </div>
        </form>
    </div>
</body>
</html>

    