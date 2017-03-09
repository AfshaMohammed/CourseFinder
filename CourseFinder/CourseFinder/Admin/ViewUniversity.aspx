<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUniversity.aspx.cs" Inherits="Admin_ViewUniversity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" style="font-size: x-large; font-weight: 700; color: #0000FF" Text="View Universities"></asp:Label>
    <br />
</p>
<p>
    <img src="../Images/images.jpg" /></p>
<p>
    <asp:GridView ID="GridView1" runat="server" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" CausesValidation="false" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="font-size: medium; font-weight: 700; text-align: center" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" EnableModelValidation="False">
        <Columns>
            <asp:TemplateField HeaderText="Univercitycode">
               
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" CausesValidation="false" Text='<%# Bind("UniverSitycode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UniversityName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtuname" runat="server" CausesValidation="false" Text='<%# Bind("UniversityName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("UniversityName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <EditItemTemplate>
                    <asp:TextBox ID="txtcountry" runat="server" CausesValidation="false" Text='<%# Bind("Country") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="txtadd" runat="server" CausesValidation="false" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
      
    </asp:GridView>
</p>
<p>
</p>
        </center>
</asp:Content>

