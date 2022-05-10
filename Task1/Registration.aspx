<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Task1._Default" %>

<asp:Content ID="Head" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="text-align:center;">Registration Form</h2>
    <h3  style="text-align:center;"><asp:Label ID="ValidMsg" runat="server" ForeColor="Green"></asp:Label></h3>
    <h3  style="text-align:center;"><asp:Label ID="InvalidMsg" runat="server" ForeColor="Red"></asp:Label></h3>
    
    <table>
        <tr>
            <td>First Name:</td>
            <td><asp:TextBox ID="FirstName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="FirstNameValidator" 
                runat="server" ForeColor="Red" Font="30px"
                ControlToValidate="FirstName"
                ErrorMessage="First Name is Required!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Last Name:</td>
            <td><asp:TextBox ID="LastName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="LastNameValidator" 
                runat="server" ForeColor="Red" Font="30px"
                ControlToValidate="LastName"
                ErrorMessage="Last Name is Required!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td><asp:DropDownList ID="Gender" runat="server" >
                <asp:ListItem Enabled="false" >Choose Your Gender...</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            <td><asp:RequiredFieldValidator ID="GenderValidator" 
                    runat="server" ForeColor="Red"
                    ControlToValidate="Gender"
                    ErrorMessage="Field can't be left empty!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Email ID:</td>
            <td><asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="EmailValidator" 
                runat="server" ForeColor="Red" Font="30px"
                ControlToValidate="Email"
                ErrorMessage="Email is Required!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Password:</td>
            <td><asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="PasswordValidator" 
                runat="server" ForeColor="Red"
                ControlToValidate="Password"
                ErrorMessage="Password is Required!"></asp:RequiredFieldValidator></td>
        </tr>

        

        <tr>
            <td>Phone Number:</td>
            <td><asp:TextBox ID="Phone" runat="server" TextMode="Number"></asp:TextBox></td>
        </tr>

         <tr>
            <td>Date Of Birth:</td>
            <td><asp:TextBox ID="Dob" runat="server" TextMode="Date"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Security Question:</td>
            <td><asp:TextBox ID="SecurityQuestion" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Security Answer:</td>
            <td><asp:TextBox ID="SecurityAnswer" runat="server"></asp:TextBox></td>
        </tr>
    </table>

    <div>
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    </div>
</asp:Content>
