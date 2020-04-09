<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="type.aspx.cs" Inherits="ESUR_GUI.pages.type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Enseignant Type
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h3>Enregistrement type enseignant</h3>
            <table>
                
                <tr>
                    
                    <td class="auto-style5">Designation
                        <br />
                        type</td>
                    <td>
                        <asp:TextBox ID="txtDesign" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Acronyme</td>
                    <td>
                        <asp:TextBox ID="txtAcro" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Date</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="408px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Enregistrer" CssClass="auto-style6" Height="34px" OnClick="btnSave_Click" ToolTip="Save the datas" Width="263px" />
</asp:Content>
