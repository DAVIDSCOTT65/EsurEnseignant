<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site.Master" AutoEventWireup="true" CodeBehind="rechercher.aspx.cs" Inherits="ESUR_GUI.pages.rechercher" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Recherche
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-family: 'Century Gothic'"> Vous recherchez un enseignant</h2>
        <asp:DataList ID="DataList1" runat="server" RepeatColums="4" CellPadding="1" ForeColor="#333333" RepeatDirection="Horizontal" RepeatLayout="Table" BorderStyle="Solid">
             <ItemTemplate>
                 <asp:Label ID="Label1" runat="server" style="font-family: 'Century Gothic'; font-weight: bold;" Text='<%#Eval("Enseignant") %>'></asp:Label>
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("UrlImage") %>' ImageAlign="Bottom" />
                 <asp:Label ID="Label2" runat="server" style="font-family: 'Century Gothic';" Text='<%#Eval("FiliereEtude") %>'></asp:Label><br />
                 <asp:Label ID="Label3" runat="server" style="font-family: 'Century Gothic';" Text='<%#Eval("AnneeFinEtude") %>'></asp:Label><br />
                 <asp:Label ID="Label4" runat="server" style="font-family: 'Century Gothic';" Text='<%#Eval("Telephone") %>'></asp:Label>
                 <asp:Label ID="Label5" runat="server" style="font-family: 'Century Gothic';" Text='<%#Eval("Email") %>'></asp:Label>
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("Id","~/pages/competence.aspx?ref_ens={0}") %>'>Details</asp:HyperLink>
            </ItemTemplate>
             <%--<SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />--%>
        </asp:DataList>

     <%--<asp:Panel ID="Panel1" CssClass="auto-style5" runat="server" Height="246px" Width="393px">
             <%--<div class="container mb-3 mt-3" style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="N°" SortExpression="Id" ReadOnly="True" />
                        <asp:BoundField DataField="cours" HeaderText="Cours" SortExpression="cours" />
                        <asp:BoundField DataField="Domaine" HeaderText="Domaine" SortExpression="Domaine" />
                        <asp:BoundField DataField="NiveauMetrise" HeaderText="Niveau de Metrise" SortExpression="NiveauMetrise" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESUR_DATABASAEConnectionString %>" SelectCommand="SELECT [cours], [NiveauMetrise], [Domaine] FROM [Affichage_Enseignant_Competence] WHERE ([RefEnseignant] = @RefEnseignant)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="idEnseignant" Name="RefEnseignant" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div> --%>                      
     <%--</asp:Panel>--%>
     <%--<cc1:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="nomEnseignant" PopupControlID="Panel1"  BackgroundCssClass="background" runat="server"></cc1:ModalPopupExtender>--%>

    </asp:Content>
