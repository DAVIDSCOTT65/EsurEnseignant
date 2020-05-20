<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site.Master" AutoEventWireup="true" CodeBehind="rechercher.aspx.cs" Inherits="ESUR_GUI.pages.rechercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Recherche
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-family: 'Century Gothic'"> Vous recherchez un enseignant</h2>
        <asp:DataList ID="DataList1" runat="server" RepeatColums="3" CellPadding="1" ForeColor="#333333" RepeatDirection="Horizontal" RepeatLayout="Table" BorderStyle="Solid">
             <AlternatingItemStyle BackColor="White" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <%--<ItemStyle BackColor="#EFF3FB" />--%>
             <ItemTemplate>
                <table border="0">
                    <tr><td style="font-family: 'Century Gothic'; font-weight: bold;"><a href="#"><%#Eval("Enseignant") %></a></td></tr>
                    <tr><td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("UrlImage") %>' ImageAlign="Bottom" /></td></tr>
                    <tr><td style="font-family: 'Century Gothic';"><%#Eval("FiliereEtude") %></td></tr>
                    <tr><td style="font-family: 'Century Gothic';"><%#Eval("AnneeFinEtude") %></td></tr>
                    <tr><td style="font-family: 'Century Gothic';"><%#Eval("Telephone") %></td></tr>
                    <tr><td style="font-family: 'Century Gothic';"><%#Eval("Email") %></td></tr>
                </table>
            </ItemTemplate>
             <%--<SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />--%>
        </asp:DataList>
    </asp:Content>
