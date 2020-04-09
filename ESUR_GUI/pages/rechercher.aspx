<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site.Master" AutoEventWireup="true" CodeBehind="rechercher.aspx.cs" Inherits="ESUR_GUI.pages.rechercher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Recherche
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1> Vous recherchez un enseignant</h1>

    <asp:DataList ID="DataList1" runat="server" BorderColor="#996633" CellPadding="10" CellSpacing="10" DataKeyField="Id" DataSourceID="SqlDataSource" RepeatDirection="Horizontal">
        <ItemTemplate>
            Matricule:
            <asp:Label ID="MatriculeLabel" runat="server" Text='<%# Eval("Matricule") %>' />
            <br />
            Identité:
            <asp:Label ID="IdentitéLabel" runat="server" Text='<%# Eval("Identité") %>' />
            <br />
            Sexe:
            <asp:Label ID="SexeLabel" runat="server" Text='<%# Eval("Sexe") %>' />
            <br />
            AnneeFinEtude:
            <asp:Label ID="AnneeFinEtudeLabel" runat="server" Text='<%# Eval("AnneeFinEtude") %>' />
            <br />
            FiliereEtude:
            <asp:Label ID="FiliereEtudeLabel" runat="server" Text='<%# Eval("FiliereEtude") %>' />
            <br />
            Domaine:
            <asp:Label ID="DomaineLabel" runat="server" Text='<%# Eval("Domaine") %>' />
            <br />
            cours:
            <asp:Label ID="coursLabel" runat="server" Text='<%# Eval("cours") %>' />
            <br />
            NiveauMetrise:
            <asp:Label ID="NiveauMetriseLabel" runat="server" Text='<%# Eval("NiveauMetrise") %>' />
            <br />
<br />
        </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESUR_DATABASAEConnectionString %>" SelectCommand="SELECT * FROM [Affichage_Enseignant_Competence]"></asp:SqlDataSource>
</asp:Content>
