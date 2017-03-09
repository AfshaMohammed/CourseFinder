<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="Admin_AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
            <tr>
                <td style="width: 216px; height: 21px;">
                    &nbsp;</td>
                <td style="width: 187px; height: 21px; color: #0000FF; font-size: x-large; text-align: center;">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="ADD COURSES"></asp:Label>
                </td>
                <td style="width: 232px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td style="width: 216px; height: 21px;">
                    &nbsp;</td>
                <td style="width: 187px; height: 21px; color: #0000FF;">
                    &nbsp;</td>
                <td style="width: 232px; height: 21px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px; text-align: right; font-size: large;">
                    <b>
                    <asp:Label ID="lbluname" runat="server" Text="University Name " Width="143px" style="font-size: large; margin-left: 0px"></asp:Label></b></td>
                <td style="width: 187px">
                    <asp:DropDownList ID="Dbluniversityname" runat="server"  Height="23px" style="font-size: medium" Width="165px">
                    </asp:DropDownList></td>
                <td style="width: 232px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Dbluniversityname" ErrorMessage="Select Univercity" 
                        InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 216px; text-align: right; font-size: large;">
                    <b>
                    <asp:Label ID="lblcname" runat="server" Text="Course Name" style="font-size: large"></asp:Label></b></td>
                <td style="width: 187px">
                    <asp:TextBox ID="txtcname" runat="server" Height="23px" style="font-size: medium" Width="165px"></asp:TextBox></td>
                <td style="width: 232px">
                    <asp:RequiredFieldValidator ID="rfdcname" runat="server" ErrorMessage="Enter Course Name" ControlToValidate="txtcname"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 216px; text-align: right; font-size: large;">
                    <b>
                    <asp:Label ID="lblcduration" runat="server" Text="Course Duration" Width="143px" style="font-size: large"></asp:Label></b></td>
                <td style="width: 187px">
                    <asp:TextBox ID="txtcduration" runat="server" Height="23px" style="font-size: medium" Width="165px"></asp:TextBox></td>
                <td style="width: 232px">
                    <asp:RequiredFieldValidator ID="rfdcduration" runat="server" ErrorMessage="Enter Course Duration" ControlToValidate="txtcduration" Width="177px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 216px; height: 48px; text-align: right; font-size: large;">
                    <b>
                    <asp:Label ID="lblcfee" runat="server" Text="Course Fee" style="font-size: large"></asp:Label></b></td>
                <td style="width: 187px; height: 48px;">
                    <asp:TextBox ID="txtcfee" runat="server" Height="23px" style="font-size: medium" Width="165px"></asp:TextBox></td>
                <td style="width: 232px; height: 48px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtcfee" ErrorMessage="Enter Fee"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 216px; height: 26px; text-align: right; font-size: large;">
                    <b>
                    <asp:Label ID="lblcdescription" runat="server" Text="Course Description" style="font-size: large"></asp:Label></b></td>
                <td style="width: 187px; height: 26px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" style="font-size: medium"></asp:TextBox></td>
                <td style="width: 232px; height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px; text-align: right;">
                    <b>
                    <asp:Label ID="lblcdescription0" runat="server" Text="Qualification" style="font-size: large"></asp:Label></b>
                </td>
                <td style="width: 187px">
                    <asp:TextBox ID="txtqul" runat="server" Height="23px" style="font-size: medium" Width="165px"></asp:TextBox>
                </td>
                <td style="width: 232px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtqul" ErrorMessage="Enter Qualification"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 216px">
                </td>
                <td style="width: 187px; text-align: center;">
                    <asp:Button ID="Btnadd" runat="server" Text="Add" OnClick="Btnadd_Click" style="text-align: center; font-size: large; font-weight: 700" Width="115px" /></td>
                <td style="width: 232px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px">
                    &nbsp;</td>
                <td style="width: 187px; text-align: center;">
                    &nbsp;</td>
                <td style="width: 232px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px">
                    &nbsp;</td>
                <td style="width: 187px; text-align: center;">
                    <asp:Label ID="lblresult" runat="server" style="font-weight: 700; font-size: medium;"></asp:Label>
                    </td>
                <td style="width: 232px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px">
                    &nbsp;</td>
                <td style="width: 187px; text-align: center;">
                    &nbsp;</td>
                <td style="width: 232px">
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td colspan="3">
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="font-size: medium; text-align: center; font-weight: 700">
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
                <td style="width: 216px">
                    &nbsp;</td>
                <td style="width: 187px; text-align: center;">
                    &nbsp;</td>
                <td style="width: 232px">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

