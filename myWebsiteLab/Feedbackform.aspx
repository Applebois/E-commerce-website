<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedbackform.aspx.cs" Inherits="myWebsiteLab.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>feedback form</h2>
    <table style=" width: 800px;">
        <tr>
            <td style=" text-align:left" colspan="3">We Welcome you bla bla bla bla</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">Name</td>
            <td style=" width: 620px; text-align:left">
                <asp:TextBox ID="TextName" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">&nbsp;</td>
            <td style=" width: 620px; text-align:left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextName" ErrorMessage="Name is require . " ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right; height: 24px;">Email.</td>
            <td style=" width: 620px; text-align:left; height: 24px;">
                <asp:TextBox ID="TextEmail" runat="server" Width="100%" OnTextChanged="TextEmail_TextChanged"></asp:TextBox>
            </td>
            <td style=" width: 30px; text-align:left; height: 24px;"></td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">&nbsp;</td>
            <td style=" width: 620px; text-align:left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is require . " ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Invalid Email Address" ForeColor="Red" style="font-weight: 700" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">Comments</td>
            <td style=" width: 620px; text-align:left">
                <asp:TextBox ID="TextComment" runat="server" Height="120px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [feedback] WHERE [feedbackId] = @feedbackId" InsertCommand="INSERT INTO [feedback] ([Name], [Email], [Comments], [Date], [Status]) VALUES (@Name, @Email, @Comments, GETDATE(), @Status)" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [Name] = @Name, [Email] = @Email, [Comments] = @Comments, [Date] = @Date, [Status] = @Status WHERE [feedbackId] = @feedbackId" OnSelecting="SqlDataSource1_Selecting">
                    <DeleteParameters>
                        <asp:Parameter Name="feedbackId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextName" Name="Name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextEmail" Name="Email" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextComment" DefaultValue="" Name="Comments" PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Comments" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="feedbackId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
            </td>
            <td style=" width: 620px; text-align:left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextComment" ErrorMessage="Comments is require . " ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
        <tr>
            <td style=" width: 150px; text-align:right ">&nbsp;</td>
            <td style=" width: 620px; text-align:center">
              <asp:Button ID="ButtonClear" runat="server" Text="Clear" Width="120px" OnClick="ButtonClear_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Width="120px" OnClick="ButtonSubmit_Click" />
            </td>
            <td style=" width: 30px; text-align:left">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
