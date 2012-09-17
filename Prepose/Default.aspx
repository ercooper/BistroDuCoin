<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCSL.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Prepose_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="bas">
		
		<div id="contenuBas">
			<h1 id="admin"><asp:label ID="lbl_Prepose" runat="server" Text="Portail du préposé" /></h1>
			
			<h2><asp:label ID="lbl_inscriptionManuelleClients" runat="server" Text="Inscription manuelle de clients" /></h2>
            <h3><asp:Label ID="lbl_champsObligatoires" runat="server" Text="Tous les champs sont obligatoires." /></h3>
            <br /><br />
            <div id="boitePourSection">
            
                <div id="boiteGauche">
                    <div align="center"><asp:Label ID="lbl_InfosClient" runat="server" Text="Informations du client" SkinID="lblTitreSectionFormulaire"/></div>
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

                <div id="boiteDroite">
                    <div align="center"><asp:Label ID="lbl_InfosPaiement" runat="server" Text="Informations de paiement" SkinID="lblTitreSectionFormulaire"/></div>
                    <br /><br />
                    <table>
                        <tr>
                            <td><asp:Label ID="lbl_nomTitulaireComplet" runat="server" Text="Nom du détenteur de carte : " /></td>
                            <td><asp:TextBox  ID="txb_nomTitulaireComplet" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_typeDeCarte" runat="server" Text="Type de carte : " /></td>
                            <td><asp:DropDownList ID="ddl_typeDeCarte" runat="server" SkinID="ddl_formulairePaiement" DataSourceID="eds_TypesCartes" AppendDataBoundItems="true" DataTextField="nomCarte" DataValueField="idCarte">
                                <asp:ListItem Selected="True" Value="-1" Text="Faites une sélection" />
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_noCarteCredit" runat="server" Text="Numéro de carte " /></td>
                            <td><asp:TextBox  ID="txb_noCarteCredit" runat="server" SkinID="champFormulaire"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_dateExpirationCarteCredit" runat="server" Text="Date d'expiration" /></td>
                            <td><asp:TextBox ID="txb_dateExpirationCarteCredit" runat="server" SkinID="champFormulaire" /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lbl_noSecuriteCarte" runat="server" Text="Numéro de sécurité"/></td>
                            <td><asp:TextBox ID="txb_noSecuriteCarte" runat="server" SkinID="champFormulaire" /></td>
                        </tr>

                    </table>
                </div>
            </div>

			
            <br />
            <br />
            <div class="boutonEnBasADroite">
                <asp:Button ID="btn_soumettreFormulaireClient" runat="server" Text="Soumettre" SkinID="btnSoumettre" />
                <asp:Button ID="btn_annuler" runat="server" Text="Annuler" SkinID="btnAnnuler" /></div>
			</div>
    	    	

		</div>

    <asp:EntityDataSource ID="eds_TypesCartes" runat="server" DefaultContainerName="ModeleCSLContainer" ConnectionString="name=ModeleCSLContainer" 
    EntitySetName="CarteJeu" >
    </asp:EntityDataSource>
</asp:Content>

