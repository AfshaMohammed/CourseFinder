<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: right;
    }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="left: 334px; position: relative; top: 10px; z-index: 103; height: 453px; width: 550px;">
            
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    <strong>Registration&nbsp; Form</strong></td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblusername" runat="server" Text="First Name" CssClass="auto-style4"></asp:Label></td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtusername" runat="server" Height="23px" Width="165px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfduname" runat="server" ErrorMessage="Enter First name" ControlToValidate="txtusername" Width="144px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblpassword" runat="server" Text="Last Name" CssClass="auto-style4"></asp:Label>
                    <br class="auto-style4" />
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtlname" runat="server" Height="23px" Width="165px"></asp:TextBox>
                    <br />
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfdpassword" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="txtlname" Width="144px"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblphoneno" runat="server" Text="Phone No" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtphone" runat="server" Height="23px" Width="165px"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvphoneno" runat="server" ErrorMessage="Enter your phone no" ControlToValidate="txtphone" Width="129px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblemail" runat="server" Text="Email" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtemail" runat="server" Height="23px" Width="165px"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter Emailid"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="137px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblemail0" runat="server" Text="Password" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtpwd" runat="server" Height="23px" Width="165px" TextMode="Password"></asp:TextBox>
                    </td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblemail1" runat="server" Text="Confirm Password" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtcnfpwd" runat="server" Height="23px" Width="165px" TextMode="Password"></asp:TextBox>
                    </td>
                <td style="width: 100px; height: 21px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcnfpwd" ErrorMessage="Password Does't Match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbladdress" runat="server" Text="Qualification" CssClass="auto-style4"></asp:Label></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtqual" runat="server" Height="23px" Width="165px"></asp:TextBox>
                    </td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtqual" Display="Dynamic" ErrorMessage="Enter Your Qualification"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbldescription0" runat="server" Text="Country" CssClass="auto-style4"></asp:Label></td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlcountry" Display="Dynamic" ErrorMessage="Select Country" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbldescription" runat="server" Text="State" CssClass="auto-style4"></asp:Label></td>
                <td class="auto-style11">
                    <asp:DropDownList ID="ddlstate" runat="server">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlstate" Display="Dynamic" ErrorMessage="Select State" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br class="auto-style4" />
                </td>
                <td class="auto-style12">
                    <br />
                </td>
                <td style="width: 100px">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Btnregister" runat="server" Text="Register" OnClick="btnsubmit_Click" style="font-size: large; font-weight: 700" />
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: medium"></asp:Label>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
             
            
        </table>
</asp:Content>

