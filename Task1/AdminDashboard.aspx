<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Task1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Repeater ID="UserList" runat="server" DataSourceID="SqlDataSource1" >
        
        <HeaderTemplate>  
                <table class="table">  
                    <thead>
                        <th>Email</th>  
                        <th> First Name</th>  
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Date Of Birth</th>
                        <th>Phone Number</th>
                        <th></th>
                        <th></th>
                    </thead>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tbody>
                <tr >  
                    <td>
                        <asp:Label ID="Email" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Email")%>'></asp:Label></td>  
                    <td>
                        <asp:Label ID="FirstName" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.FirstName")%>'></asp:Label></td>  
                    <td>
                        <asp:Label ID="LastName" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.LastName")%>'></asp:Label></td>
                    <td><asp:Label ID="Gender" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Gender")%>'></asp:Label></td>
                    <td><asp:Label ID="Dob" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Dob")%>'></asp:Label></td>
                    <td><asp:Label ID="Phone" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.PhoneNumber")%>'></asp:Label></td>

                    <td><asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click" /></td>
                    <td><asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" /></td>
                </tr>  
               </tbody>
            </ItemTemplate>  
    </asp:Repeater>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Dbconnection %>'
        SelectCommand="SELECT [Email], [FirstName], [LastName], [Gender], [Dob], [PhoneNumber] FROM [UserModels] ORDER BY [Email]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Member" Name="Role" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>


    <%--MODAL--%>
    

</asp:Content>

  