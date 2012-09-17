<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCSL.master" AutoEventWireup="true" CodeFile="adhesion.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="bas">

<div id="laterale">
			<div id="carre"><a href="#">Nouveautés et cours à découvrir</a></div>
			<div id="carre2"><a href="#">Activités automne 2012</a></div>
			<div id="carre3"><a href="#">Tout savoir sur l'adhésion</a></div>
		</div>
		<div id="nouvelles">
		
			<h1><asp:label ID="lbl_Adhesion" runat="server" Text="Adhésion" /></h1>
			
			<div class="blocNouvelles">
			<h2><asp:label ID="lbl_commentFonctionne" runat="server" Text="Comment fonctionne l'adhésion?" /></h2>
			<br />
			<div class="paraNouvelles">
			<asp:label ID="lbl_texteAdhesion" runat="server" Text="Le principe d'adhésion est simple : 
            en deux étapes faciles, vous créerez votre compte CSL. Celui-ci vous donnera accès au large éventail de services offerts
            par CSL inc. Un abonnement à vie coûte seulement 50$, pour vous et votre famille!" />
			</div>
			</div>
            <br /> <br />
            <div align="center">
             <asp:LinkButton ID="lbtn_Adherer" runat="server" Text="Adhérez maintenant!" PostBackUrl="adhesion_etape2.aspx" CssClass="boutonAdherer"  />
      </div>
            <br />
            <br />
	    	

			</div>
    
		</div>


</asp:Content>

