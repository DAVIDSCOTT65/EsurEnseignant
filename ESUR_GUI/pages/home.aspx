<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ESUR_GUI.pages.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
      <ul id="featured_tabs">
        <li><a href="#fc1">Non payés<br />
          <span></span></a></li>
        <li><a href="#fc2">Nouvelle unité<br />
          <span></span></a></li>
        <li><a href="#fc3">Non Imatriculés<br />
          <span></span></a></li>
        <li class="last"><a href="#fc4">All<br />
          <span></span></a></li>
      </ul>
      <div id="featured_content">
        <div class="featured_box" id="fc1" style="background-color:aqua;">
          <h1 style="text-align:center; padding-top:131px; padding-bottom:131px; font-family: 'Century Gothic'; font-size: 30px; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; background-color: #FFFFFF;"><asp:Label ID="lblNP" runat="server" Text="Label"  ForeColor="Black" Font-Size="XX-Large" Font-Bold="True" Height="23px" Width="23px" Font-Italic="True"></asp:Label></h1> 
            <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc2">
          <h1 style="text-align:center; padding-top:131px; padding-bottom:131px; font-family: 'Century Gothic'; font-size: 30px; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; background-color: #FFFFFF;"><asp:Label ID="lblNU" runat="server" Text="Label" ForeColor="Black" Font-Size="XX-Large" Font-Bold="True" Height="23" Width="23"></asp:Label></h1> 
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc3">
          <h1 style="text-align:center; padding-top:131px; padding-bottom:131px; font-family: 'Century Gothic'; font-size: 30px; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; background-color: #FFFFFF;"><asp:Label ID="lblNI" runat="server" Text="Label" ForeColor="Black" Font-Size="XX-Large" Font-Bold="True" Height="23" Width="23"></asp:Label></h1> 
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc4">
            <h1 style="text-align:center; padding-top:131px; padding-bottom:131px; font-family: 'Century Gothic'; font-size: 30px; font-weight: bold; font-style: normal; font-variant: normal; color: #000000; background-color: #FFFFFF;"><asp:Label ID="lblAll" runat="server" Text="Label" ForeColor="Black" Font-Size="XX-Large" Font-Bold="True" Height="23" Width="23"></asp:Label></h1> 
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
          <h2>Professeur</h2>
          <div class="imgholder"><a href="#"><img src="../images/demo/teach.gif" alt="" /></a></div>
          <p>Souvent noté Pr ou Prof., est un terme utiliser comme un titre academique lié à l'histoire des universités. Il trouve ses origines dans les titulaires d'une chaire universitaire, ainsi amené à leur savoir à la manière des arche...</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li>
          <h2>Chef de travaux (CT)</h2>
          <div class="imgholder"><a href="#"><img src="../images/demo/teach2.gif" alt="" /></a></div>
          <p>Le chef de travaux est à la fois un spécialiste d'une discipline et le détenteur de compétences élargies qui en font un véritable &quot;généraliste&quot; de l'enseignement technique. Il exerce sa fonction à l'intérieur et à l'extérieur de l'...</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li>
          <h2>Master</h2>
          <div class="imgholder"><a href="#"><img src="../images/demo/teach3.gif" alt="" /></a></div>
          <p>Dans le système éducatif congolais le master est à la fois un diplome national de l'enseignement supérieur et un grade universitaire, validant un troisième cycle de l'enseignement superieur.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li class="last">
          <h2>Assistants</h2>
          <div class="imgholder"><a href="#"><img src="../images/demo/teach1.gif" alt="" /></a></div>
          <p>En France,le corps des assistants d'education (AE ou AED) a été créé par la loi Ferry du 30 avril 2003, dans le but de remplacer progressivement les maitres d'internat(MI) et surveillants d'externat(SE).</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
</asp:Content>
