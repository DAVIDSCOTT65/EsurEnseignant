<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="esu.aspx.cs" Inherits="ESUR_GUI.esu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ESUR RDC</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.ui.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.tabs.setup.js"></script>
</head>
<body>
    <div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>MIN/ESUR RDC</h2>
        <p>Ministère d'enseignement supérieur et universitaire, ce site permet aux enseignant de se mettre en avant en publiant leurs differentes competences afin de faciliter aux institutions et universités de trouver rapidement les enseignants aux différents cours. ce site facilite aussi au ministère d'identifier les NP et NU.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>Login Here</h2>
        <form action="#" method="post" runat="server">
          <fieldset>
            <legend>Teachers Login Form</legend>
              <asp:TextBox ID="teacherName" runat="server" ></asp:TextBox>
              <asp:TextBox ID="teacherPass" runat="server"></asp:TextBox>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" name="teacherremember" id="teacherremember" checked="checked" />
              Remember me</label>
            <p>
              <%--<input type="submit" name="teacherlogin" id="teacherlogin" value="Login"/>--%>
              <asp:Button ID="btnConnect" runat="server" Text="Button" OnClick="btnConnect_Click"/>
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
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
      <h1><a href="index.html">MINESU/RDC</a></h1>
      <p>Ministère de l'enseignement supérieur et universitaire</p>
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
<!-- #############################################MENUS PRINCIPALS########################################################## -->
<div class="wrapper col2">
  <div id="topnav">
    <ul>
      <li class="active"><a href="index.html">Home</a>
        <ul>
          <li><a href="#">A propos</a></li>
          <li><a href="#">Qui sommes-nous ?</a></li>
          <li><a href="#">Historique</a></li>
          <li class="last"><a href="#">MINESU</a></li>
        </ul>
      </li>
      <li><a href="pages/style-demo.html">Vous rechercher un enseignant ?</a>
        <ul>
          <li><a href="#">Professeur</a></li>
          <li><a href="#">Docteur</a></li>
          <li class="last"><a href="#">Assistant</a></li>
        </ul>
      </li>
      <li><a href="pages/identification.aspx">Options</a>
        <ul>
          <li><a href="#">Enseignant NP</a></li>
          <li><a href="#">Enseignant NU</a></li>
          <li class="last"><a href="pages/identification.aspx">Enseignant Identifier</a></li>
        </ul>
      </li>
      <li><a href="#">Nos Services</a></li>
      <li class="last"><a href="#">Long Link Text</a></li>
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
      <ul id="featured_tabs">
        <li><a href="#fc1">Nullamlacus dui ipsum<br />
          <span>Nullamlacus dui ipsum conseqlo borttis.</span></a></li>
        <li><a href="#fc2">Nullamlacus dui ipsum<br />
          <span>Nullamlacus dui ipsum conseqlo borttis.</span></a></li>
        <li><a href="#fc3">Nullamlacus dui ipsum<br />
          <span>Nullamlacus dui ipsum conseqlo borttis.</span></a></li>
        <li class="last"><a href="#fc4">Nullamlacus dui ipsum<br />
          <span>Nullamlacus dui ipsum conseqlo borttis.</span></a></li>
      </ul>
      <div id="featured_content">
        <div class="featured_box" id="fc1"><img src="images/demo/1.gif" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc2"><img src="images/demo/2.gif" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc3"><img src="images/demo/3.gif" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc4"><img src="images/demo/4.gif" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
      <ul>
        <li>
          <h2>Indonectetus facilis leo</h2>
          <div class="imgholder"><a href="#"><img src="images/demo/200x140.gif" alt="" /></a></div>
          <p>This is a W3C standards compliant free website template from <a href="http://www.os-templates.com/">OS Templates</a>. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>. Etmetus conse cte tuer leo nisl justo sed vest vitae nunc massa scelerit</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li>
          <h2>Indonectetus facilis leo</h2>
          <div class="imgholder"><a href="#"><img src="images/demo/200x140.gif" alt="" /></a></div>
          <p>This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li>
          <h2>Indonectetus facilis leo</h2>
          <div class="imgholder"><a href="#"><img src="images/demo/200x140.gif" alt="" /></a></div>
          <p>Seddui vestibulum vest mi liberos estibulum urna at eget amet sed. Etmetus consectetuer leo nisl justo sed vest vitae nunc massa scelerit. Namaucibulum lor ligula nullam risque et ristie sollis sapien nulla neque.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li class="last">
          <h2>Indonectetus facilis leo</h2>
          <div class="imgholder"><a href="#"><img src="images/demo/200x140.gif" alt="" /></a></div>
          <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi pen as dapibulum orna. Urna ultrices quis curabitur phasellentesque congue magnis vestibulum. Orcieleifendimentum risuspenatoque massa nunc.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div id="newsletter">
      <h2>Stay In The Know !</h2>
      <p>Please enter your email to join our mailing list</p>
      <form action="#" method="post">
        <fieldset>
          <legend>News Letter</legend>
          <input type="text" value="Enter Email Here&hellip;"  onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
          <input type="submit" name="news_go" id="news_go" value="GO" />
        </fieldset>
      </form>
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
</body>
</html>
