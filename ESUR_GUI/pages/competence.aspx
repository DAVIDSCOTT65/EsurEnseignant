<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="competence.aspx.cs" Inherits="ESUR_GUI.competence" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Competence
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            border: 3px none black;
            background-color: dimgrey;
            padding-top: 10px;
            padding-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:TextBox ID="txtMatricule" runat="server" Visible="false" > </asp:TextBox>
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Mes compétences</h1>
                            </div>
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button ID="Button1" CssClass="roudedcorner" Font-Size="Larger" runat="server" Text="New" />
                            </div>
                        </header>

                        <asp:Panel ID="Panel1" CssClass="auto-style5" runat="server" Height="246px" Width="393px">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDesign" runat="server" Enabled="true" Font-Size="Larger" Placeholder="Designation compétence" Width="370px"></asp:TextBox>
                                        <br />
                                        <br />
                                       <asp:TextBox ID="txtDomaine" Font-Size="Larger" runat="server" Enabled="true" Placeholder="Domaine de compétence" Width="368px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:DropDownList ID="txtDate" runat="server" Enabled="true" Font-Size="Larger" Placeholder="Niveau de maitreise" Height="34px" Width="373px">
                                            <asp:ListItem>Bon</asp:ListItem>
                                            <asp:ListItem>Moyen</asp:ListItem>
                                            <asp:ListItem>Très bien</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnSave" runat="server" Font-Size="Larger" OnClick="btnSave_Click" Text="Enregistrer" ToolTip="Save the datas" />
&nbsp;
                                    </div>
                               
                        </asp:Panel>

                        <cc1:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="Button1" PopupControlID="Panel1"  BackgroundCssClass="background" runat="server"></cc1:ModalPopupExtender>
                        
                    </section>
                </div>
            </div>
            <div class="container mb-3 mt-3" style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="N°" SortExpression="Id" ReadOnly="True" />
                        <asp:BoundField DataField="cours" HeaderText="Cours" SortExpression="cours" />
                        <asp:BoundField DataField="Domaine" HeaderText="Domaine" SortExpression="Domaine" />
                        <asp:BoundField DataField="NiveauMetrise" HeaderText="Niveau de Metrise" SortExpression="NiveauMetrise" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESUR_DATABASAEConnectionString %>" SelectCommand="SELECT [Id], [cours], [NiveauMetrise], [Domaine] FROM [Affichage_Enseignant_Competence] WHERE ([RefEnseignant] = @RefEnseignant)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtMatricule" Name="RefEnseignant" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </section>
    </section>
    <script runat="server">
       
    </script>
</asp:Content>
