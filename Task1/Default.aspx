<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Task1.WebForm1" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h3 style="text-align:center;">Info</h3>
        <div class="container">
        <table class="table">
            <tr>
                <td><b>First Name:</b></td>
                <td><asp:Label ID="FirstName" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><b>Last Name:</b></td>
                <td><asp:Label ID="LastName" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><b>Gender:</b></td>
                <td> <asp:Label ID="Gender" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><b>Email ID:</b></td>
                <td><asp:Label ID="Email" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><b>Phone Number:</b></td>
                <td><asp:Label ID="Phone" runat="server"></asp:Label></td>
            </tr>

            <tr>
                <td><b>Date of Birth:</b></td>
                <td> <asp:Label ID="Dob" runat="server"></asp:Label></td>
            </tr>

        </table>
            </div>
    </div>

</asp:Content>
