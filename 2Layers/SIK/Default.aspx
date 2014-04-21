<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SIK.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Fill your data!<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    NAME</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    ADDRESS</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    LOCAL</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtLocal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    REMARKS</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </td>
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <p>
        <a href="ViewData.aspx">view data</a></p>
</body>
</html>
