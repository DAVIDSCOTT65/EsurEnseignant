<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="identification.aspx.cs" Inherits="ESUR_GUI.pages.identification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ESUR RDC | Identification</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
    <script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="../layout/scripts/jquery.slidepanel.setup.js"></script>
    <style type="text/css">
        .auto-style3 {
            width: 761px;
        }
        .auto-style5 {
            width: 79px;
        }
        .auto-style6 {
            margin-left: 310px;
        }
        .auto-style7 {
            margin-left: 0;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>MIN/ESUR RDC</h2>
        <p>MinistÃ¨re d'enseignement supÃ©rieur et universitaire, ce site permet aux enseignant de se mettre en avant en publiant leurs differentes competences afin de faciliter aux institutions et universitÃ©s de trouver rapidement les enseignants aux diffÃ©rents cours. ce site facilite aussi au ministÃ¨re d'identifier les NP et NU.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>Login Here</h2>
          <fieldset>
            <legend>Teachers Login Form</legend>
            <label for="teachername">Username:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" name="teacherremember" id="teacherremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">Log In Here &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Administration</a><a id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="../index.html">MINESU/RDC</a></h1>
      <p>MinistÃ¨re de l'enseignement supÃ©rieur et universitaire</p>
    </div>
    <div class="fl_right">
      <ul>
        <li class="last"><a href="#">Recherche</a></li>
        <li><a href="#">Support en ligne</a></li>
        <li><a href="#">School Board</a></li>
      </ul>
      <p>Tel: +243 971 778 161 | Mail: info@minesu.gov</p>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topnav">
    <ul>
      <li><a href="../index.aspx">Home</a>
        <ul>
          
        </ul>
      </li>
      <li> <a href="style-demo.html">Vous rechercher un enseignant ?</a>
        <ul>
          
        </ul>
      </li>
      <li class="active"><a href="identification.aspx">Identification</a>
        <ul>
          <li><a href="typeEnseignant.aspx">Type enseignants</a></li>
          <li class="auto-style7"><a href="gradeEnseignant.aspx">Grades</a></li>
          <li class="last" style="color: #FFFFFF; background-color: #591434"><a href="identification.aspx">Enregistrement</a></li>
        </ul>
      </li>
      <li><a href="#">Nos Services</a></li>
      <li class="last"><a href="#">Long Link Text</a></li>
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
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
                    <td>
                        <asp:Image ID="img" runat="server" CssClass="auto-style7" Height="119px" Width="124px" />
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
                        <asp:Calendar ID="txtDate" runat="server" Height="180px" Width="408px"></asp:Calendar>
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
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div id="newsletter">
      <h2>Stay In The Know !</h2>
      <p>Please enter your email to join our mailing list</p>
        <fieldset>
          <legend>News Letter</legend>
          <input type="text" value="Enter Email Here&hellip;"  onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
          <input type="submit" name="news_go" id="news_go" value="GO" />
        </fieldset>
      <p>To unsubscribe please <a href="#">click here &raquo;</a></p>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>
    </form>
</body>
</html>
