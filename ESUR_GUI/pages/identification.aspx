<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="identification.aspx.cs" Inherits="ESUR_GUI.identification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    identification
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="wrapper col4">
  <div id="container">
    <div class="topbox">
        <h2>Enregistrez-vous en complétant les champs ci-dessous </h2>
            <table border="0">
                
                <tr>
                    
                    <td class="auto-style5">Nom :</td>
                    <td>
                       <asp:TextBox ID="txtNom" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Postnom :</td>
                    <td>
                        <asp:TextBox ID="txtPostnom" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Prénom :</td>
                    <td>
                        <asp:TextBox ID="txtPrenom" runat="server" Width="408px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Sexe :</td>
                    <td>
                        <asp:DropDownList ID="cmbSexe" runat="server" Height="27px" Width="416px">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">DOB :</td>
                    <td>
                        <asp:TextBox ID="txtDate" TextMode="Date" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Année Fin Etude :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAnnee" runat="server" Width="402px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Filière d'étude :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtFiliere" runat="server" Width="402px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Grade</td>
                    <td>
                        <asp:DropDownList ID="cmbGrade" runat="server" Height="27px" Width="406px"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Type enseignant</td>
                    <td>
                        <asp:DropDownList ID="cmbType" runat="server" Height="27px" Width="406px"></asp:DropDownList>
                    </td>
                </tr>
            </table>
             <h3>Informations de connexion</h3>
            <table>
                
                <tr>
                    
                    <td class="auto-style5">Username :</td>
                    <td>
                        <asp:TextBox ID="userTxt" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password :</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" Width="406px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Confirm Password :</td>
                    <td>
                        <asp:TextBox ID="txtConf" runat="server" Width="408px" Height="27px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSave" runat="server" Text="Enregistrer" CssClass="auto-style6" Height="34px" OnClick="btnSave_Click" ToolTip="Save the datas" Width="263px" />

      </div>
  </div>
&nbsp;
</div>
</asp:Content>
