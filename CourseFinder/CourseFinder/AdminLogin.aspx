<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table >
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large; color: #0000FF" Text="Admin Login"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:label id="lblusername" runat="server" text="Username" CssClass="auto-style1"></asp:label>
                    </td>
                    <td class="auto-style5">
                        <asp:textbox id="txtusername" runat="server" Height="23px" Width="165px"></asp:textbox>
                    </td>
                    <td class="auto-style3">
                        <asp:requiredfieldvalidator id="requsername" runat="server" controltovalidate="txtusername"
                            errormessage="Enter user name" height="23px" width="107px"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:label id="lblpassword" runat="server" text="Password" CssClass="auto-style1"></asp:label>
                    </td>
                    <td class="auto-style5">
                        <asp:textbox id="txtpasswod" runat="server" textmode="Password" width="166px" Height="23px"></asp:textbox>
                    </td>
                    <td class="auto-style3">
                        <asp:requiredfieldvalidator id="reqpassword" runat="server" controltovalidate="txtpasswod"
                            errormessage="Enter Password"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 33px; text-align: center;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:button id="btnsubmit" runat="server" onclick="btnsubmit_Click" text="Login" style="font-size: large; font-weight: 700" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;
                        </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 33px; text-align: center;">
                        <asp:label id="lblmessage" runat="server" forecolor="Silver" visible="False" width="88px" style="color: #000000; font-weight: 700"></asp:label>
                    </td>
                </tr>
            </table>
        </center>
</asp:Content>

