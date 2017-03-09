<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddUniversity.aspx.cs" Inherits="Admin_AddUniversity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
            <tr>
                <td style="height: 40px;" colspan="3">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbladduniversity" runat="server" Text="ADD UNIVERSITY" Width="212px" style="font-size: x-large; color: #0000FF"></asp:Label></strong></td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">
                    <strong>
                    <asp:Label ID="lblucode" runat="server" Text="University Code" Width="165px" style="font-size: large"></asp:Label></strong></td>
                <td style="width: 100px">
                    <strong>
                    <asp:TextBox ID="txtucode" runat="server" Height="23px" style="font-size: large" Width="165px"></asp:TextBox></strong></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtucode" ErrorMessage="Enter University Code"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">
                    <strong>
                    <asp:Label ID="lbluname" runat="server" Text="University Name" Width="155px" style="font-size: large"></asp:Label></strong></td>
                <td style="width: 100px">
                    <strong>
                    <asp:TextBox ID="txtuname" runat="server" Height="23px" style="font-size: large" Width="165px"></asp:TextBox></strong></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="Rfvuname" runat="server" ErrorMessage="Enter University Name" ControlToValidate="txtuname" ValidateRequestMode="Inherit" Width="221px" style="font-size: large"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px; text-align: right;">
                    <strong>
                    <asp:Label ID="lbllocation" runat="server" Text="Location" style="font-size: large"></asp:Label></strong></td>
                <td style="width: 100px; height: 26px">
                    <strong>
                    <asp:TextBox ID="txtlocation" runat="server" Height="23px" style="font-size: large" Width="165px"></asp:TextBox></strong></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="rfvlocation" runat="server" ErrorMessage="Enter Location" ControlToValidate="txtlocation" Width="181px" style="font-size: large"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px; text-align: right;">
                    <strong>
                    <asp:Label ID="lblcountry" runat="server" Text="Country" style="font-size: large"></asp:Label></strong></td>
                <td style="width: 100px; height: 21px">
                    <strong>
                    <asp:TextBox ID="txtcountry" runat="server" Height="23px" style="font-size: large" Width="165px"></asp:TextBox></strong></td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ErrorMessage="Enter Country name" ControlToValidate="txtcountry" Width="205px" style="font-size: large"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px" align="right">
                    <strong>
                    <asp:Label ID="lblcountry0" runat="server" Text="Contact Number" style="font-size: large"></asp:Label></strong>
                </td>
                <td style="width: 100px">
                    <strong>
                    <asp:TextBox ID="txtno" runat="server" Height="23px" style="font-size: large" Width="165px"></asp:TextBox></strong>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvcountry0" runat="server" ErrorMessage="Enter Contact Number" ControlToValidate="txtcountry" Width="205px" style="font-size: large"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <span style="font-size: large"><strong>&nbsp;
                    </strong></span><strong>
                    <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" style="font-size: large; font-weight: 700" Width="89px" /></strong></td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    <asp:Label ID="lblresult" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td colspan="3">
    <asp:GridView ID="GridView1" runat="server" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="font-size: medium; font-weight: 700; text-align: center">
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
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

