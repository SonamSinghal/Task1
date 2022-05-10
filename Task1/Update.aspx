<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Task1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div   id="EditModal"  >
                    <table>
                        <tr>
            <td>First Name:</td>
            <td><asp:TextBox ID="FirstName" runat="server"  AutoPostBack="true"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Last Name:</td>
            <td><asp:TextBox ID="LastName" runat="server" AutoPostBack="true"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td><asp:DropDownList ID="Gender" runat="server" >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
        </tr>

        <tr>
            <td>Phone Number:</td>
            <td><asp:TextBox ID="Phone" runat="server" TextMode="Number" AutoPostBack="true"></asp:TextBox></td>
        </tr>

         <tr>
            <td>Date Of Birth:</td>
            <td><asp:TextBox ID="Dob" runat="server" TextMode="Date" AutoPostBack="true"></asp:TextBox></td>
        </tr> 
   </table>
        <asp:Button ID="UpdateButton" runat="server" Text="Update" OnClick="UpdateButton_Click" />
    </div>

</asp:Content>
