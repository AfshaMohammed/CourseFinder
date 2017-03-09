<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="SearchUniversityCourses.aspx.cs" Inherits="User_SearchUniversityCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
            <tr>
                <td style="width: 272px">
                    &nbsp;</td>
                <td style="width: 306px">
                    &nbsp;</td>
                <td style="width: 258px">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 272px">
                    
       
                    <strong style="text-align: right">
                    
       
                    <span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td>
                <td style="width: 306px">
        
                    
                    &nbsp;&nbsp;
                    
       
                    <strong style="text-align: right">
                    
       
                    <span style="font-size: large"> &nbsp;You are logged in as</span></strong>&nbsp;
        
                    
                    <asp:Label ID="lblsession" runat="server" Style="z-index: 102; left: 569px; position:static;
                        top: 131px; font-size: x-large; font-weight: 700; color: #0000FF;"></asp:Label>
                    
                    </td>
                <td style="width: 258px">
                    &nbsp;</td>
            </tr>
            
           
            <tr>
                <td style="width: 272px">
                    
       
                    &nbsp;</td>
                <td style="width: 306px">
        
                    
                    &nbsp;</td>
                <td style="width: 258px">
                    &nbsp;</td>
            </tr>
            
           
            <tr>
                <td style="text-align: right; width: 272px;">
                    <asp:Label ID="Label2" runat="server" Text="University Name" Width="132px" Height="38px" style="font-size: large; font-weight: bold"></asp:Label></td>
                <td style="width: 306px">
                    <asp:DropDownList ID="ddluniversity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluniversity_SelectedIndexChanged" Width="165px" Font-Bold="True" Height="25px">
                    </asp:DropDownList></td>
                <td style="width: 258px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Select University" ControlToValidate="ddluniversity" 
                        InitialValue="Select" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
           
            
            <tr>
                <td style="width: 272px; height: 24px; text-align: right;">
                    <asp:Label ID="lblcource" runat="server" Text="Course Name" style="font-size: large; font-weight: bold"></asp:Label></td>
                <td style="width: 306px; height: 24px;">
                    <asp:DropDownList ID="ddlcoursename" runat="server"  Enabled="False" Width="165px" Font-Bold="True" Height="25px">
                    </asp:DropDownList></td>
                <td style="width: 258px; height: 24px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Select Course" ControlToValidate="ddlcoursename" 
                        InitialValue="Select" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            
            <tr>
                <td style="width: 272px; height: 45px;">
                </td>
                <td style="width: 306px; height: 45px;">
                    <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="Search" style="font-size: large; font-weight: 700" />
                </td>
                <td style="width: 258px; height: 45px;">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            
            
            <tr>
                <td style="width: 272px; height: 45px;">
                    &nbsp;</td>
                <td style="width: 306px; height: 45px;">
                     <asp:Label ID="Label3" runat="server" style="font-weight: 700"></asp:Label>
                </td>
                <td style="width: 258px; height: 45px;">
                    &nbsp;</td>
            </tr>
        <tr align="center">
            <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Style="z-index: 103; left: 450px;
            top: 342px; font-weight: 700; font-size: medium; text-align: center; width: 161px;" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <%--<SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />--%>
        </asp:GridView></td>
            
        </tr>
        <tr>
            <td style="width: 272px">
                    &nbsp;</td>
                <td style="width: 306px">
                    &nbsp;</td>
                <td style="width: 258px">
                    <br />
                    <br />
            </td>
            
        </tr>
            </table>
</asp:Content>

