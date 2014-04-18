<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Please Donate</h2>
    <!--**********************************************************************
        create a table for the input form. the validation objects here will only work if you
        change the web config file to turn off Unobtrusive validation mode which uses JQuery
        *************************************************************************-->
    <table>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
            <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" Display="None"></asp:RequiredFieldValidator>
                </td>
           </tr> 
           <tr>
            <td>Street Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Street Address is required" Display="None"></asp:RequiredFieldValidator>
                </td>
        </tr>
                   <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" Display="None"></asp:RequiredFieldValidator>
                </td>
        </tr>
         <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtState" ErrorMessage="State is required" Display="None"></asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td>Zip Code</td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtZIp" ErrorMessage="Invalid Zip Code" ValidationExpression="\d{5}(-\d{4})?" Display="None"></asp:RegularExpressionValidator>
                </td>
                <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtZip" ErrorMessage="Zip Code is required" Display="None"></asp:RequiredFieldValidator> 
                </td>
        </tr>
            <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" Display="None"></asp:RequiredFieldValidator> 
                </td>
                <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="None"></asp:RegularExpressionValidator>
                </td>
        </tr>
            <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                </td>
                <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="None"></asp:RequiredFieldValidator> 
                </td>
        </tr>
            <tr>
            <td>Enter a Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="None"></asp:RequiredFieldValidator> 
                </td>
        </tr>
            <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="No Match" ToolTip="Password must be the same" />
                </td>
        </tr>

            <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" /></td>
            <td>
                <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
            </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
        </tr>
    </table>
</asp:Content>

