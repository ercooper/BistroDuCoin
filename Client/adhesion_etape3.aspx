<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCSL.master" AutoEventWireup="true" CodeFile="adhesion_etape3.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="bas">
		
		<div id="contenuBas">
			<h1><asp:label ID="lbl_Adhesion" runat="server" Text="Adhésion" /></h1>
			
			<h2><asp:label ID="lbl_commentFonctionne" runat="server" Text="Étape 1 - informations personnelles" /></h2>
            <h3><asp:Label ID="lbl_champsObligatoires" runat="server" Text="Tous les champs sont obligatoires." /></h3>
            <br /><br />
            <div id="boitePourSection">
            
                <div id="boiteGauche">
                    <div align="center"><asp:Label ID="lbl_InfosConnexion" Font-Bold="true" runat="server" Text="Ces informations serviront à vous connecter sur le site." /></div>
                    <br /><br />
                    <table>
                        <tr>
                            <td><asp:Label ID="lbl_Courriel" runat="server" Text="Courriel : " /></td>
                            <td><asp:TextBox ID="txb_Courriel" runat="server" CssClass="espacementPourTable" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_MotDePasse" runat="server" Text="Mot de passe : " /></td>
                            <td><asp:TextBox ID="txb_MotDePasse" runat="server" TextMode="Password" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>

                <div id="boiteDroite">
                    <div align="center"><asp:Label ID="lbl_InfosClient" runat="server" Font-Bold="true" Text="Ces informations vous serviront à gérer votre compte." /></div>
                    <br /><br />
                    <table>
                        <tr>
                            <td><asp:Label ID="lbl_Prenom" runat="server" Text="Prénom : " /></td>
                            <td><asp:TextBox  ID="txb_Prenom" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_Nom" runat="server" Text="Nom : " /></td>
                            <td><asp:TextBox ID="txb_Nom" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_NoCivique" runat="server" Text="No civique : " /></td>
                            <td><asp:TextBox ID="txb_NoCivique" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_Rue" runat="server" Text="Rue : " /></td>
                            <td><asp:TextBox ID="txb_Rue" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_Ville" runat="server" Text="Ville : " /></td>
                            <td><asp:TextBox ID="txb_Ville" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_CodePostal" runat="server" Text="Code postal : " /></td>
                            <td><asp:TextBox ID="txb_CodePostal" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_NoTelephone" runat="server" Text="No de téléphone : " /></td>
                            <td><asp:TextBox ID="txb_NoTelephone" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="lbl_DateDeNaissance" runat="server" Text="Date de naissance : " /></td>
                            <td><asp:TextBox ID="txb_DateDeNaissance" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
            </div>

			
            <br />
            <br />
            <div class="lienEnBasADroite">
            <asp:LinkButton ID="lbtn_Suivant" runat="server" Text="Étape 2 - Paiement >" PostBackUrl="#" /></div>
			</div>
    	    	

		</div>


</asp:Content>

