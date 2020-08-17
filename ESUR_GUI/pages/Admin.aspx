<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ESUR_GUI.pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Confirmation status de l'enseignant</h1>
                            </div>
                        </header>

            <div class="container mb-3 mt-3" style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Matricule" HeaderText="Code" SortExpression="Matricule" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Postnom" HeaderText="Postnom" SortExpression="Postnom" />
                        <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
                        <asp:BoundField DataField="Sexe" HeaderText="Sexe" SortExpression="Sexe" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="AnneeFinEtude" HeaderText="AnneeFinEtude" SortExpression="AnneeFinEtude" />
                        <asp:BoundField DataField="FiliereEtude" HeaderText="FiliereEtude" SortExpression="FiliereEtude" />
                        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Statut" HeaderText="Statut" SortExpression="Statut" />
                        <asp:ButtonField ButtonType="Button" HeaderText="Confirmation Demande" Text="Confirmer" CausesValidation="True" CommandName="sid">
                        <ControlStyle BackColor="#33CC33" ForeColor="White" />
                        </asp:ButtonField>
                    </Columns>

                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESUR_DATABASAEConnectionString2 %>" SelectCommand="SELECT [Matricule], [Nom], [Postnom], [Prenom], [Sexe], [DOB], [AnneeFinEtude], [FiliereEtude], [Grade], [Type], [Email], [Statut] FROM [Affichage_Enseignant]"></asp:SqlDataSource>
            </div>
        </section>
    </section>
</asp:Content>
