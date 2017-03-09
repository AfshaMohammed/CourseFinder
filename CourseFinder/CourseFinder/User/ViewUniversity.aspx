<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ViewUniversity.aspx.cs" Inherits="User_ViewUniversity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       
         <center>
        <strong>
    <br style="font-size: medium" />
        </strong><strong><span style="font-size: medium">&nbsp; </span>
             <span style="font-size: large">You are logged in as</span></strong>
    <asp:Label ID="lblsession" runat="server" style="font-size: x-large; font-weight: 700; color: #0000FF"></asp:Label>
    
        <center>
    <table style="height: 69px">
        <tr>
            <td style="width: 100px">
                <img src="../Images/man-magnifying-glass-left-large.png" style="height: 205px" /></td>
        </tr>
    </table>
    <br />
        <asp:GridView ID="GridViewUniversity" runat="server"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="font-size: medium; font-weight: 700; text-align: center">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <%--<SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />--%>
        </asp:GridView>
            <br />
            </center>
    </div>
</asp:Content>

