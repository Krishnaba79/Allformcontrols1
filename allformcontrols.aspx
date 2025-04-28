<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allformcontrols.aspx.cs" Inherits="Allformcontrols1.allformcontrols" %>

<!DOCTYPE html>
<html>
<head>
    <title>Form Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Information Form</h2>

            <!-- TextBox -->
            <asp:Label ID="lblName" runat="server" Text="Name: " />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required." ForeColor="Red" />

            <br /><br />

            <!-- DropDownList -->
            <asp:Label ID="lblCountry" runat="server" Text="Country: " />
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Value="" Text="Select Country" />
                <asp:ListItem Value="US" Text="United States" />
                <asp:ListItem Value="CA" Text="Canada" />
                <asp:ListItem Value="UK" Text="United Kingdom" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry"
                InitialValue="" ErrorMessage="Country is required." ForeColor="Red" />

            <br /><br />

            <!-- CheckBox -->
            <asp:CheckBox ID="chkSubscribe" runat="server" Text="Subscribe to Newsletter" />

            <br /><br />

            <!-- Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

            <br /><br />

            <!-- Message Label -->
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
        </div>
    </form>
</body>
</html>
