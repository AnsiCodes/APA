<%@ Page Title="" Language="C#" MasterPageFile="~/APA/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="APA.APA.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 class="names">APA Registration</h1>
    <p>Please fill in this form before July 1 if you want the regular fee charges. Any forms submitted between July 1 - Aug 2 will be chraged an additional late fee.</p>
    <table>
        <tr>
            <td width="10"><img src="/APA/Images/required.gif" /></td>
            <td width="5">&nbsp;</td>
            <td>APA Number:</td>
            <td width="5">&nbsp;</td>
            <td><asp:TextBox ID="APANum" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><img src="/APA/Images/required.gif" /></td>
            <td width="5">&nbsp;</td>
            <td>First Name:</td>
            <td width="5">&nbsp</td>
            <td><asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>Last Name:</td>
    <td width="5">&nbsp</td>
    <td><asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>E-mail:</td>
    <td width="5"></td>
    <td><asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td>
</tr>
       <tr>
           <td><img src="/APA/Images/required.gif" /></td>
           <td width="5"></td>
           <td>Phone Number:</td>
           <td width="5">&nbsp;</td>
           <td><asp:TextBox ID="TxtNum" runat="server"></asp:TextBox></td>
       </tr>
                        <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td style="font-weight:bold"><span class="names">Address</span></td>
    <td width="5">&nbsp</td>
</tr>
                <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>Street Name:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="Street" runat="server"></asp:TextBox></td>
</tr>
                        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>City:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="City" runat="server"></asp:TextBox></td>
</tr>
                        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>State</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="State" runat="server"></asp:TextBox></td>
</tr>
                        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>Zip Code:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="Zip" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>Registration Fee (by June 30/July 1-Aug 2):</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="Fee1" runat="server" GroupName="Fee" Text="$275/$330" /></td>
</tr>
        <tr>
            <td width="10"></td>
            <td width="5">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="5">&nbsp;</td>
            <td><asp:RadioButton ID="Fee2" runat="server" GroupName="Fee" Text="$70/$80" /></td>
        </tr>
        <tr>
    <td width="10"></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="Fee3" runat="server" GroupName="Fee" Text="$120/$130" /></td>
</tr>
        <tr>
    <td width="10"></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="Fee4" runat="server" GroupName="Fee" Text="$10" /></td>
</tr>
        <tr>
    <td width="10"></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="Fee5" runat="server" GroupName="Fee" Text="$375/$430" /></td>
</tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>CE Sessions Fee (by June 30/July 1-Aug 2):</td>
    <td width="5">&nbsp;</td>
    <td>
        <asp:RadioButton ID="CEFee1" runat="server" GroupName="CEFee" Text="$85/$105"/></td>
</tr>
                <tr>
    <td width="10"></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="CEFee2" runat="server" GroupName="CEFee" Text="$120/$150" /></td>
</tr>
                <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>Institutional code:</td>
    <td width="5">&nbsp;</td>
    <td><asp:TextBox ID="InsCode" runat="server"></asp:TextBox></td>
</tr>
                <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>First APA Convention:</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="FirstConventionYes" runat="server" GroupName="FirstTime" Text="Yes"/>&nbsp;&nbsp;<asp:RadioButton ID="FirstConventionNo" runat="server" GroupName="FirstTime" Text="No"/></td>
                    
</tr>
                <tr>
    <td width="10">&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td>Enter Disability if Any</td>
    <td width="5">&nbsp;</td>
    <td>
        <asp:TextBox ID="Disability" runat="server"></asp:TextBox></td>
</tr>
                <tr>
    <td width="10"><img src="/APA/Images/required.gif" /></td>
    <td width="5">&nbsp;</td>
    <td>Early Career Psycologist:</td>
    <td width="5">&nbsp;</td>
    <td><asp:RadioButton ID="CareerPsy1" runat="server" GroupName="Early" Text="Yes"/>&nbsp;&nbsp;<asp:RadioButton ID="CareerPsy2" runat="server" GroupName="Early" Text="No"/></td>
</tr>
        <tr><td>&nbsp;</td></tr>
<tr>
    <td width="10">&nbsp;</td>
    <td width="5">&nbsp;</td>
    <td style="font-weight:bold" colspan="4"><span class="names">Please list additional family members(upto 4). A 10$ per person nonrefundable processing fee is charged.</span></td>
    <td width="5">&nbsp</td>
</tr>
                <tr>
            <td></td>
            <td width="5">&nbsp;</td>
            <td>1)&nbsp;First Name:</td>
            <td width="5">&nbsp</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;Last Name:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
</tr>
                <tr>
            <td></td>
            <td width="5">&nbsp;</td>
            <td>2)&nbsp;First Name:</td>
            <td width="5">&nbsp</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;Last Name:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
</tr>
                <tr>
            <td></td>
            <td width="5">&nbsp;</td>
            <td>3)&nbsp;First Name:</td>
            <td width="5">&nbsp</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;Last Name:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
</tr>
                <tr>
            <td></td>
            <td width="5">&nbsp;</td>
            <td>4)&nbsp;First Name:</td>
            <td width="5">&nbsp</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
    <td></td>
    <td width="5">&nbsp;</td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;Last Name:</td>
    <td width="5">&nbsp</td>
    <td>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
</tr>
                
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td width="10">&nbsp;</td>
            <td width="5">&nbsp;</td>
            <td style="font-weight:bold"><span class="names">Credit Card Information</span></td>
        </tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5"></td>
    <td>Card Number:</td>
    <td width="5">&nbsp;</td>
    <td><asp:TextBox ID="CardNumber" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5"></td>
    <td>Card Type:</td>
    <td width="5">&nbsp;</td>
    <td><asp:TextBox ID="CardType" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5"></td>
    <td>Name on Card:</td>
    <td width="5">&nbsp;</td>
    <td><asp:TextBox ID="CardName" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5"></td>
    <td>CVV Code:</td>
    <td width="5">&nbsp;</td>
    <td><asp:TextBox ID="CVV" runat="server"></asp:TextBox></td>
</tr>
        <tr>
    <td><img src="/APA/Images/required.gif" /></td>
    <td width="5"></td>
    <td>Expiry Date:</td>
    <td width="5">&nbsp;</td>
    <td>
        <asp:DropDownList ID="Month" runat="server">
            <asp:ListItem Text="Month" Value=""></asp:ListItem>
            <asp:ListItem Text="01" Value="Jan"></asp:ListItem>
            <asp:ListItem Text="02" Value="Feb"></asp:ListItem>
            <asp:ListItem Text="03" Value="Mar"></asp:ListItem>
            <asp:ListItem Text="04" Value="Apr"></asp:ListItem>
            <asp:ListItem Text="05" Value="May"></asp:ListItem>
            <asp:ListItem Text="06" Value="Jun"></asp:ListItem>
            <asp:ListItem Text="07" Value="Jul"></asp:ListItem>
            <asp:ListItem Text="08" Value="Aug"></asp:ListItem>
            <asp:ListItem Text="09" Value="Sep"></asp:ListItem>
            <asp:ListItem Text="10" Value="Oct"></asp:ListItem>
            <asp:ListItem Text="11" Value="Nov"></asp:ListItem>
            <asp:ListItem Text="12" Value="Dec"></asp:ListItem>
        </asp:DropDownList>&nbsp;/&nbsp;<asp:DropDownList ID="Year" runat="server">
            <asp:ListItem Text="Year" Value=""></asp:ListItem>
            <asp:ListItem Text="2030" Value="2030"></asp:ListItem>
                                        </asp:DropDownList></td>
</tr>
            <tr>
<td>&nbsp;</td>
<td width="5"></td>
<td>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />&nbsp;<asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" /></td>
<td width="5">&nbsp;</td>
<td></td>
    </table>


</asp:Content>
