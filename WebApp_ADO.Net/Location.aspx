<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApp_ADO.Net.Location" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblLocationId" runat="server" Text="LocationId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocationId" runat="server" ToolTip="This is location Id"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStreetAdd" runat="server" Text="StreetAddress"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtStreetAdd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPostalCode" runat="server" Text="PostalCode"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStateProv" runat="server" Text="State Province"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtStateProv" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCountry" runat="server" Text="Countries"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCountries" runat="server" DataTextField="country_name" DataValueField="country_id">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnInsert" runat="server" Text="Add Location" OnClick="btn_InsertLocation_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnLocations" runat="server" Text="GetLocations" OnClick="btn_GetLocations_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:GridView ID="gridLocations" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
