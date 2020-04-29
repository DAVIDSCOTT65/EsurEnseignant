<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="identification.aspx.cs" Inherits="ESUR_GUI.identification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    identification
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Teachers Registration</h1>
                            </div>
                        </header>


                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtNom" Enabled="true" runat="server" Placeholder="Nom" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPostnom" Enabled="true" runat="server" CssClass="form-control input-sm" Placeholder="Postnom"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPrenom" Enabled="true" runat="server" CssClass="form-control input-sm" Placeholder="Prénom"></asp:TextBox><br />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:DropDownList ID="cmbSexe" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem>M</asp:ListItem>
                                            <asp:ListItem>F</asp:ListItem>
                                        </asp:DropDownList><br />
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtDate" Enabled="true" TextMode="Date" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtAnnee" Enabled="true" runat="server" CssClass="form-control input-sm" Placeholder="Année fin d'étude"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtFiliere" Enabled="true" runat="server" CssClass="form-control input-sm" Placeholder="Filière"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:DropDownList ID="cmbGrade" Enabled="true" runat="server" AutoPostBack="true" CssClass="form-control input-sm">
                                           <asp:ListItem Selected="True"></asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:DropDownList ID="cmbType" Enabled="true" runat="server" AutoPostBack="true" CssClass="form-control input-sm">
                                           <asp:ListItem Selected="True"></asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="userTxt" Enabled="true" runat="server" CssClass="form-control" Placeholder="Username"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtPass" Enabled="true" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:TextBox ID="txtConf" Enabled="true" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Visible="false" Text="Message" CssClass="form-control"></asp:Label>
                                    </div>
                                </div>
                                 
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:Button ID="btnSave" runat="server" Text="Enregistrer" CssClass="btn btn-success" OnClick="btnSave_Click" ToolTip="Save the datas" Height="32px" style="margin-left: 554px" Width="213px" />
                                    &nbsp;
                                    </div>
                           </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="container mb-3 mt-3" style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="Matricule" HeaderText="Matricule" SortExpression="Matricule" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Postnom" HeaderText="Postnom" SortExpression="Postnom" />
                        <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
                        <asp:BoundField DataField="Sexe" HeaderText="Sexe" SortExpression="Sexe" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="AnneeFinEtude" HeaderText="AnneeFinEtude" SortExpression="AnneeFinEtude" />
                        <asp:BoundField DataField="FiliereEtude" HeaderText="FiliereEtude" SortExpression="FiliereEtude" />
                        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
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
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ESUR_DATABASAEConnectionString2 %>" SelectCommand="SELECT [Matricule], [Nom], [Postnom], [Prenom], [Sexe], [DOB], [AnneeFinEtude], [FiliereEtude], [Grade], [Type] FROM [Affichage_Enseignant]"></asp:SqlDataSource>
            </div>
        </section>
    </section>
</asp:Content>
