<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ADO_assignment_user_validation.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 278px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfUderID" runat="server" />
            <table align="center" class="auto-style1">
                <tr>
                    <td>First Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name required" ControlToValidate="textlastName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textlastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name required" ControlToValidate="textlastName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textGender" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the Gender" ControlToValidate="textGender"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Width="34px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the email" ControlToValidate="textEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile No</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textMobileno" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the mobile no" ControlToValidate="textMobileno"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>US</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="textPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the Password" ControlToValidate="textPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="RegisterUser" Text="Register" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lbl1SuccessMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
