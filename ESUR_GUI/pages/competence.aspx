<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="competence.aspx.cs" Inherits="ESUR_GUI.competence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Competence
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table>
                
                <tr>
                    
                    <td class="auto-style5">Designation
                        </td>
                    <td>
                        <asp:TextBox ID="txtDesign" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Domaine</td>
                    <td>
                        <asp:TextBox ID="txtDomaine" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Niveau de<br />
                        maitrise</td>
                    <td>
                        <asp:DropDownList ID="txtDate" runat="server" Width="408px" Height="46px">
                            <asp:ListItem>Bon</asp:ListItem>
                            <asp:ListItem>Moyen</asp:ListItem>
                            <asp:ListItem>Très bien</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Enregistrer" CssClass="auto-style6" Height="34px" ToolTip="Save the datas" Width="263px" OnClick="btnSave_Click" />
</asp:Content>
