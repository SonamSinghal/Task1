<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Task1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3 style="text-align:center; height: 51px;">Login Page</h3>
        <div style="container">
            <p style="text-align:center;"><asp:Label ID="InvalidMsg" ForeColor="Red" runat="server"></asp:Label></p>
            <table class="container">
                <tr>
                    <td>Email ID:</td>
                    <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" 
                            ControlToValidate="Username"
                            ForeColor="Red"
                            Display="Dynamic"
                            ErrorMessage="Field is Required">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                 <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox></td>
                     <td><asp:RequiredFieldValidator runat="server" 
                            ControlToValidate="Password"
                            ForeColor="Red"
                            Display="Dynamic"
                            ErrorMessage="Field is Required">
                       </asp:RequiredFieldValidator></td>
                </tr>
                </table>
                <asp:Button ID="Submit1" OnClick="Login_Click" runat="server" Text="Log In" CssClass="btn btn-info" />
            <asp:Button ID="Register" runat="server" Text="Register"  OnClick="Register_Click" CssClass="btn btn-info" CausesValidation="false"  />

        </div>

</asp:Content>
