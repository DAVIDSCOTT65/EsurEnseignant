<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site.Master" AutoEventWireup="true" CodeBehind="rechercher.aspx.cs" Inherits="ESUR_GUI.pages.rechercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Recherche
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1> Vous recherchez un enseignant</h1>
        <asp:DataList ID="DataList1" runat="server" RepeatColums="3" CellPadding="4" ForeColor="#333333" RepeatDirection="Horizontal">
             <AlternatingItemStyle BackColor="White" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <ItemStyle BackColor="#EFF3FB" />
             <ItemTemplate>
                <table border="0">
                    <tr>
                        <td><%#Eval("Enseignant") %></td>
                    </tr>
                    <tr>
                        <hr />
                        <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("UrlImage") %>' ImageAlign="Bottom" /></td>
                        <td><%#Eval("FiliereEtude") %></td>
                        <td><%#Eval("AnneeFinEtude") %></td>
                    </tr>
                </table>
            </ItemTemplate>
             <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </asp:Content>
