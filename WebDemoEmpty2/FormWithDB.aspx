<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormWithDB.aspx.cs" Inherits="WebDemoEmpty2.FormWithDB" %>

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
            flex-direction: column;
            padding: 0px 16px 0px 16px;
            border: dashed;
            border-width: 1px;
            border-radius: 8px;
            margin: 8px;
            width: 80vh;
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
            background-color: #4CAF50;
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
    <form id="form1" runat="server">

        <div style="display: flex;">
            <div class="inner-container">
                <h2>Insert student information</h2>

                <div class="form">

                    <asp:Label ID="Label5" runat="server" Text="Reg ID:"></asp:Label>

                    <asp:TextBox ID="textRegId" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="First Name:"></asp:Label>

                    <asp:TextBox ID="textFirstName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>

                    <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Button class="custom-button" ID="Button4" runat="server" Text="Create" OnClick="submitButton_Click" />

                    <br />


                    <div id="Div2" runat="server">
                        <br />
                        <hr />
                        <br />
                        <asp:Label ID="lblResult" runat="server" Style="display: flex; border-width: 1px; padding: 6px;" />
                        <br />
                    </div>
                </div>

                <br />

            </div>

            <div class="inner-container">
                <h2>Update student information</h2>

                <div class="form">
                    <asp:Label ID="Label9" runat="server" Text="Student ID:"></asp:Label>

                    <asp:TextBox ID="textStudentId" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblReg" runat="server" Text="Reg ID:"></asp:Label>

                    <asp:TextBox ID="updateTextRegId" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>

                    <asp:TextBox ID="updateTextFirstName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="lblSecondName" runat="server" Text="Last Name:"></asp:Label>

                    <asp:TextBox ID="updateTextLastName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Button class="custom-button" ID="Button1" runat="server" Text="Update" OnClick="updateButton_Click" />

                    <br />


                    <div id="resultDiv" runat="server">
                        <br />
                        <hr />
                        <br />
                        <asp:Label ID="updateLblResult" runat="server" Style="display: flex; border-width: 1px; padding: 6px;" />
                        <br />
                    </div>
                </div>

                <br />

            </div>
        </div>


        <div style="display: flex;">

            <div class="inner-container">
                <h2>Delete Student Information</h2>

                <div class="form">

                    <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>

                    <asp:TextBox ID="deleteStudentId" runat="server"></asp:TextBox>
                    <br />


                    <asp:Button class="custom-button" ID="Button3" runat="server" Text="Delete" OnClick="deleteButton_Click" />

                    <br />


                    <div id="Div1" runat="server">
                        <br />
                        <hr />
                        <br />
                        <asp:Label ID="deleteLblResult" runat="server" Style="display: flex; padding: 6px;" />
                        <br />
                    </div>
                </div>

                <br />

            </div>

            <div style="display: flex;">
                <div class="inner-container">
                    <h2>All student information</h2>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Student Id" ItemStyle-Width="100" />
                            <asp:BoundField DataField="reg_id" HeaderText="Student Reg Id" ItemStyle-Width="150" />
                            <asp:BoundField DataField="first_name" HeaderText="First name" ItemStyle-Width="150" />
                            <asp:BoundField DataField="last_name" HeaderText="Last name" ItemStyle-Width="150" />
                        </Columns>
                    </asp:GridView>

                    <asp:Button class="custom-button" ID="Button2" runat="server" Text="View Data" OnClick="submitButton_Click1"  style="margin:18px 0px 18px 0px;"/>

                </div>
            </div>
        </div>
    </form>

</body>
</html>

