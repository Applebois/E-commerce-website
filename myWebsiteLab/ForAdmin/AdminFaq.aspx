<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminFaq.aspx.cs" Inherits="myWebsiteLab.ForAdmin.AdminFaq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Admin Faq Page</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Faq] WHERE [FaqId] = @FaqId" InsertCommand="INSERT INTO [Faq] ([FaqQuestion], [FaqAnswer]) VALUES (@FaqQuestion, @FaqAnswer)" SelectCommand="SELECT * FROM [Faq]" UpdateCommand="UPDATE [Faq] SET [FaqQuestion] = @FaqQuestion, [FaqAnswer] = @FaqAnswer WHERE [FaqId] = @FaqId">
        <DeleteParameters>
            <asp:Parameter Name="FaqId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FaqQuestion" Type="String" />
            <asp:Parameter Name="FaqAnswer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FaqQuestion" Type="String" />
            <asp:Parameter Name="FaqAnswer" Type="String" />
            <asp:Parameter Name="FaqId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="278px" Width="1280px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="FaqQuestion" HeaderText="FaqQuestion" SortExpression="FaqQuestion" />
            <asp:BoundField DataField="FaqAnswer" HeaderText="FaqAnswer" SortExpression="FaqAnswer" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:GridView ID="GridViewFaq" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="238px" Width="1282px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="FaqId" HeaderText="FaqId" InsertVisible="False" ReadOnly="True" SortExpression="FaqId" />
            <asp:BoundField DataField="FaqQuestion" HeaderText="FaqQuestion" SortExpression="FaqQuestion" />
            <asp:BoundField DataField="FaqAnswer" HeaderText="FaqAnswer" SortExpression="FaqAnswer" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
</asp:Content>
