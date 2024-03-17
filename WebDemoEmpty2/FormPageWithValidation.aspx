<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormPageWithValidation.aspx.cs" Inherits="WebDemoEmpty2.FormPageWithValidation" %>

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
        }

        .inner-container {
            display: flex;
            width: 50vh;
            flex-direction: column;
            padding: 0px 16px 0px 16px;
            border: dashed;
            border-width: 1px;
            border-radius: 8px;
        }

        .form {
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
        }

        .list-view {
            display: flex;
            flex-direction: column;
            width: 60px;
        }

        /* Styles for the button */
        .custom-button {
            display: inline-block;
            padding: 8px 14px;
            background-color: gray;
            color: white;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            /* Hover effect */
            .custom-button:hover {
                background-color: #45a049; /* Darker green */
            }
    </style>
</head>

<body class="container">
    <div class="inner-container">
        <h2>Registration Page</h2>

        <form id="form1" runat="server">
            <div class="form">

                <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>

                <asp:TextBox ID="textName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameValidator" Display="Dynamic" 
                    runat="server" ForeColor="Red" ErrorMessage="*Name is required!"
                    ControlToValidate="textName" />
                <br />

                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>

                <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    Display="Dynamic" runat="server" ForeColor="Red" 
                    ErrorMessage="*Email is required!"
                    ControlToValidate="textEmail" />
                <asp:RegularExpressionValidator ID="RequiredFieldValidator1"
                    Display="Dynamic" runat="server" ForeColor="Red" 
                    ErrorMessage="*Invalid email address!"
                    ControlToValidate="textEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                <br />

                <asp:Label ID="Label1" runat="server" Text="State:"></asp:Label>

                <asp:TextBox ID="textState" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RequiredFieldValidator3" Display="Dynamic" 
                    runat="server" ForeColor="Red" ErrorMessage="*State must be between (1-7)"
                    ControlToValidate="textState"
                    MinimumValue="1"
                    MaximumValue="7"
                    Type="Integer" />
                <br />

                <asp:Label ID="ageLbl" runat="server" Text="Age:"></asp:Label>

                <asp:TextBox ID="textAge" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="RangeValidator1" Display="Dynamic" 
                    runat="server" ForeColor="Red" ErrorMessage="*Age must be less then 100!"
                    ControlToValidate="textAge"
                    ValueToCompare="100"
                    Operator="LessThan"
                    Type="Integer" />
                <br />

                <asp:Button class="custom-button" ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" CausesValidation="true" />

                <div id="resultDiv" runat="server" >
                    <br />
                    <hr />
                    <br />
                    <asp:Label ID="lblResult" runat="server" Style="display: flex; border: dashed; border-width: 1px; padding: 6px;">
                        <asp:ValidationSummary ID="vaidationSummary" runat="server" 
                            ForeColor="Red" DisplayMode="BulletList"
                            ShowSummary="true" HeaderText="Errors:"/>
                    </asp:Label>
                    <br />
                </div>
            </div>

            <br />

        </form>
    </div>
</body>
</html>

