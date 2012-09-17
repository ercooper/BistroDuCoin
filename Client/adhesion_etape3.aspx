<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCSL.master" AutoEventWireup="true" CodeFile="adhesion_etape3.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="bas">
		
		<div id="contenuBas">
			<h1><asp:label ID="lbl_Adhesion" runat="server" Text="Adhésion" /></h1>
			
			<h2><asp:label ID="lbl_commentFonctionne" runat="server" Text="Étape 2 - paiement des frais d'inscription" /></h2>
            <h3><asp:Label ID="lbl_champsObligatoires" runat="server" Text="Tous les champs sont obligatoires." /></h3>
            <br /><br />
            <div id="boitePourSection">
            
                <div id="boiteGauche">
                <asp:Label ID="ExplicationPaiement" runat="server">Les informations dans la boîte de droite vous permettront d'effectuer le paiement
                    de vos frais d'inscription. L'inscription à CSL coûte 50$ et est valide à vie. Par la suite, ajoutez vos enfants et votre conjoint
                    à votre compte sans frais. En tout temps, si vous avez des questions, n'hésitez-pas à contacter l'un de nos agréables préposés au
                    numéro suivant: </asp:Label> <br /><br />
                    <asp:Label ID="NoTelephonePrepose" runat="server">(450) 888-9090</asp:Label>
                </div>

                <div id="boiteDroite">
                    <div align="center"><asp:Label ID="lbl_InfosClient" runat="server" Font-Bold="true" Text="Ces informations vous serviront à effectuer votre paiement." /></div>
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
            <div class="lienEnBasADroite">
            <asp:LinkButton ID="lbtn_Suivant" runat="server" Text="Étape 3 - Confirmation >" PostBackUrl="#" /></div>
			</div>
    	    	

		</div>

    <asp:EntityDataSource ID="eds_TypesCartes" runat="server" DefaultContainerName="ModeleCSLContainer" ConnectionString="name=ModeleCSLContainer" 
    EntitySetName="CarteJeu" >
    </asp:EntityDataSource>
</asp:Content>

