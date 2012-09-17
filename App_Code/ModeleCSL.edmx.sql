
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 09/13/2012 10:41:47
-- Generated from EDMX file: C:\CSLWebLoisirs\App_Code\ModeleCSL.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CSL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UtilisateurProvince]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UtilisateurJeu] DROP CONSTRAINT [FK_UtilisateurProvince];
GO
IF OBJECT_ID(N'[dbo].[FK_UtilisateurmembreFamille]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MembreFamilleJeu1] DROP CONSTRAINT [FK_UtilisateurmembreFamille];
GO
IF OBJECT_ID(N'[dbo].[FK_UtilisateurNouvelle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NouvelleJeu] DROP CONSTRAINT [FK_UtilisateurNouvelle];
GO
IF OBJECT_ID(N'[dbo].[FK_UtilisateurCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommandeJeu] DROP CONSTRAINT [FK_UtilisateurCommande];
GO
IF OBJECT_ID(N'[dbo].[FK_CommandeCarte]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommandeJeu] DROP CONSTRAINT [FK_CommandeCarte];
GO
IF OBJECT_ID(N'[dbo].[FK_CommandeElementsCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElementsCommandeJeu] DROP CONSTRAINT [FK_CommandeElementsCommande];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupeElementsCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElementsCommandeJeu] DROP CONSTRAINT [FK_GroupeElementsCommande];
GO
IF OBJECT_ID(N'[dbo].[FK_ActiviteTypeActivite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActiviteJeu] DROP CONSTRAINT [FK_ActiviteTypeActivite];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupeActivite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupeJeu] DROP CONSTRAINT [FK_GroupeActivite];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupeReservation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReservationJeu] DROP CONSTRAINT [FK_GroupeReservation];
GO
IF OBJECT_ID(N'[dbo].[FK_ReservationLocal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReservationJeu] DROP CONSTRAINT [FK_ReservationLocal];
GO
IF OBJECT_ID(N'[dbo].[FK_ReservationJour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReservationJeu] DROP CONSTRAINT [FK_ReservationJour];
GO
IF OBJECT_ID(N'[dbo].[FK_ReservationSession]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReservationJeu] DROP CONSTRAINT [FK_ReservationSession];
GO
IF OBJECT_ID(N'[dbo].[FK_UtilisateurTypeUtilisateur]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UtilisateurJeu] DROP CONSTRAINT [FK_UtilisateurTypeUtilisateur];
GO
IF OBJECT_ID(N'[dbo].[FK_Employe_inherits_Utilisateur]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UtilisateurJeu_Employe] DROP CONSTRAINT [FK_Employe_inherits_Utilisateur];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UtilisateurJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UtilisateurJeu];
GO
IF OBJECT_ID(N'[dbo].[ProvinceJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProvinceJeu];
GO
IF OBJECT_ID(N'[dbo].[MembreFamilleJeu1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MembreFamilleJeu1];
GO
IF OBJECT_ID(N'[dbo].[NouvelleJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NouvelleJeu];
GO
IF OBJECT_ID(N'[dbo].[CommandeJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommandeJeu];
GO
IF OBJECT_ID(N'[dbo].[CarteJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarteJeu];
GO
IF OBJECT_ID(N'[dbo].[ElementsCommandeJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElementsCommandeJeu];
GO
IF OBJECT_ID(N'[dbo].[GroupeJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupeJeu];
GO
IF OBJECT_ID(N'[dbo].[ActiviteJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActiviteJeu];
GO
IF OBJECT_ID(N'[dbo].[TypeActiviteJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeActiviteJeu];
GO
IF OBJECT_ID(N'[dbo].[ReservationJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReservationJeu];
GO
IF OBJECT_ID(N'[dbo].[LocalJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocalJeu];
GO
IF OBJECT_ID(N'[dbo].[JourJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JourJeu];
GO
IF OBJECT_ID(N'[dbo].[SessionJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SessionJeu];
GO
IF OBJECT_ID(N'[dbo].[TypeUtilisateurJeu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeUtilisateurJeu];
GO
IF OBJECT_ID(N'[dbo].[UtilisateurJeu_Employe]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UtilisateurJeu_Employe];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UtilisateurJeu'
CREATE TABLE [dbo].[UtilisateurJeu] (
    [idUtilisateur] int IDENTITY(1,1) NOT NULL,
    [identifiant] nvarchar(max)  NOT NULL,
    [prenom] nvarchar(50)  NOT NULL,
    [nom] nvarchar(75)  NOT NULL,
    [noCivique] nvarchar(20)  NOT NULL,
    [rue] nvarchar(50)  NOT NULL,
    [ville] nvarchar(75)  NOT NULL,
    [codePostal] nvarchar(6)  NOT NULL,
    [noTelephone] nvarchar(10)  NOT NULL,
    [dateNaissance] datetime  NOT NULL,
    [dateAdhesion] datetime  NOT NULL,
    [motPasse] nvarchar(max)  NOT NULL,
    [Province_idProvince] int  NOT NULL,
    [TypeUtilisateur_idType] int  NOT NULL
);
GO

-- Creating table 'ProvinceJeu'
CREATE TABLE [dbo].[ProvinceJeu] (
    [idProvince] int IDENTITY(1,1) NOT NULL,
    [nomProvince] nvarchar(25)  NOT NULL
);
GO

-- Creating table 'MembreFamilleJeu1'
CREATE TABLE [dbo].[MembreFamilleJeu1] (
    [nomMembreFamille] nvarchar(max)  NOT NULL,
    [prenomMembreFamille] nvarchar(max)  NOT NULL,
    [dateNaissanceMembreFamille] datetime  NOT NULL,
    [dateAdhesionMembreFamille] datetime  NOT NULL,
    [estConjoint] bit  NOT NULL,
    [idMembreFamille] int  NOT NULL,
    [Utilisateur_idUtilisateur] int  NOT NULL
);
GO

-- Creating table 'NouvelleJeu'
CREATE TABLE [dbo].[NouvelleJeu] (
    [idNouvelle] int IDENTITY(1,1) NOT NULL,
    [titreFr] nvarchar(max)  NOT NULL,
    [date] datetime  NOT NULL,
    [texteFr] nvarchar(max)  NOT NULL,
    [titreEn] nvarchar(max)  NOT NULL,
    [texteEn] nvarchar(max)  NOT NULL,
    [Utilisateur_idUtilisateur] int  NOT NULL
);
GO

-- Creating table 'CommandeJeu'
CREATE TABLE [dbo].[CommandeJeu] (
    [noCommande] int IDENTITY(1,1) NOT NULL,
    [dateCommande] datetime  NOT NULL,
    [noCarte] int  NOT NULL,
    [moisExpiration] int  NOT NULL,
    [anneeExpiration] int  NOT NULL,
    [Utilisateur_idUtilisateur] int  NOT NULL,
    [Carte_idCarte] int  NOT NULL
);
GO

-- Creating table 'CarteJeu'
CREATE TABLE [dbo].[CarteJeu] (
    [idCarte] int IDENTITY(1,1) NOT NULL,
    [nomCarte] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ElementsCommandeJeu'
CREATE TABLE [dbo].[ElementsCommandeJeu] (
    [dateAjout] datetime  NOT NULL,
    [prixPaye] decimal(18,0)  NOT NULL,
    [idElementCommande] int  NOT NULL,
    [Commande_noCommande] int  NOT NULL,
    [Groupe_idGroupe] int  NOT NULL
);
GO

-- Creating table 'GroupeJeu'
CREATE TABLE [dbo].[GroupeJeu] (
    [idGroupe] int IDENTITY(1,1) NOT NULL,
    [capaciteGroupe] int  NOT NULL,
    [commentaire] nvarchar(max)  NULL,
    [Activite_idActivite] int  NOT NULL
);
GO

-- Creating table 'ActiviteJeu'
CREATE TABLE [dbo].[ActiviteJeu] (
    [idActivite] int IDENTITY(1,1) NOT NULL,
    [nomActiviteFr] nvarchar(max)  NOT NULL,
    [nomActiviteEn] nvarchar(max)  NOT NULL,
    [descriptionActiviteFr] nvarchar(max)  NOT NULL,
    [descriptionActiviteEn] nvarchar(max)  NOT NULL,
    [ageMinimum] int  NOT NULL,
    [ageMaximum] int  NOT NULL,
    [sessionHiver] bit  NOT NULL,
    [sessionPrintemps] bit  NOT NULL,
    [sessionEte] bit  NOT NULL,
    [sessionAutomne] bit  NOT NULL,
    [prix] decimal(18,0)  NOT NULL,
    [dateDebut] datetime  NOT NULL,
    [dateFin] datetime  NOT NULL,
    [TypeActivite_idType] int  NOT NULL
);
GO

-- Creating table 'TypeActiviteJeu'
CREATE TABLE [dbo].[TypeActiviteJeu] (
    [idType] int IDENTITY(1,1) NOT NULL,
    [nomType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ReservationJeu'
CREATE TABLE [dbo].[ReservationJeu] (
    [idReservation] int IDENTITY(1,1) NOT NULL,
    [heureDebut] time  NOT NULL,
    [heureFin] time  NOT NULL,
    [dateReservation] datetime  NULL,
    [Groupe_idGroupe] int  NOT NULL,
    [Local_idLocal] int  NOT NULL,
    [Jour_idJour] int  NOT NULL,
    [Session_idSession] int  NOT NULL
);
GO

-- Creating table 'LocalJeu'
CREATE TABLE [dbo].[LocalJeu] (
    [idLocal] int IDENTITY(1,1) NOT NULL,
    [descriptionLocal] nvarchar(max)  NULL,
    [reservableClient] bit  NOT NULL,
    [nomLocal] nvarchar(max)  NOT NULL,
    [capaciteMax] int  NOT NULL
);
GO

-- Creating table 'JourJeu'
CREATE TABLE [dbo].[JourJeu] (
    [idJour] int IDENTITY(1,1) NOT NULL,
    [nomJourFr] nvarchar(max)  NOT NULL,
    [nomJourEn] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SessionJeu'
CREATE TABLE [dbo].[SessionJeu] (
    [idSession] int IDENTITY(1,1) NOT NULL,
    [dateDebut] datetime  NOT NULL,
    [dateFin] datetime  NOT NULL,
    [nomSession] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TypeUtilisateurJeu'
CREATE TABLE [dbo].[TypeUtilisateurJeu] (
    [idType] int IDENTITY(1,1) NOT NULL,
    [nomType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UtilisateurJeu_Employe'
CREATE TABLE [dbo].[UtilisateurJeu_Employe] (
    [noEmploye] int IDENTITY(1,1) NOT NULL,
    [dateEmbauche] datetime  NOT NULL,
    [idUtilisateur] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idUtilisateur] in table 'UtilisateurJeu'
ALTER TABLE [dbo].[UtilisateurJeu]
ADD CONSTRAINT [PK_UtilisateurJeu]
    PRIMARY KEY CLUSTERED ([idUtilisateur] ASC);
GO

-- Creating primary key on [idProvince] in table 'ProvinceJeu'
ALTER TABLE [dbo].[ProvinceJeu]
ADD CONSTRAINT [PK_ProvinceJeu]
    PRIMARY KEY CLUSTERED ([idProvince] ASC);
GO

-- Creating primary key on [idMembreFamille] in table 'MembreFamilleJeu1'
ALTER TABLE [dbo].[MembreFamilleJeu1]
ADD CONSTRAINT [PK_MembreFamilleJeu1]
    PRIMARY KEY CLUSTERED ([idMembreFamille] ASC);
GO

-- Creating primary key on [idNouvelle] in table 'NouvelleJeu'
ALTER TABLE [dbo].[NouvelleJeu]
ADD CONSTRAINT [PK_NouvelleJeu]
    PRIMARY KEY CLUSTERED ([idNouvelle] ASC);
GO

-- Creating primary key on [noCommande] in table 'CommandeJeu'
ALTER TABLE [dbo].[CommandeJeu]
ADD CONSTRAINT [PK_CommandeJeu]
    PRIMARY KEY CLUSTERED ([noCommande] ASC);
GO

-- Creating primary key on [idCarte] in table 'CarteJeu'
ALTER TABLE [dbo].[CarteJeu]
ADD CONSTRAINT [PK_CarteJeu]
    PRIMARY KEY CLUSTERED ([idCarte] ASC);
GO

-- Creating primary key on [idElementCommande] in table 'ElementsCommandeJeu'
ALTER TABLE [dbo].[ElementsCommandeJeu]
ADD CONSTRAINT [PK_ElementsCommandeJeu]
    PRIMARY KEY CLUSTERED ([idElementCommande] ASC);
GO

-- Creating primary key on [idGroupe] in table 'GroupeJeu'
ALTER TABLE [dbo].[GroupeJeu]
ADD CONSTRAINT [PK_GroupeJeu]
    PRIMARY KEY CLUSTERED ([idGroupe] ASC);
GO

-- Creating primary key on [idActivite] in table 'ActiviteJeu'
ALTER TABLE [dbo].[ActiviteJeu]
ADD CONSTRAINT [PK_ActiviteJeu]
    PRIMARY KEY CLUSTERED ([idActivite] ASC);
GO

-- Creating primary key on [idType] in table 'TypeActiviteJeu'
ALTER TABLE [dbo].[TypeActiviteJeu]
ADD CONSTRAINT [PK_TypeActiviteJeu]
    PRIMARY KEY CLUSTERED ([idType] ASC);
GO

-- Creating primary key on [idReservation] in table 'ReservationJeu'
ALTER TABLE [dbo].[ReservationJeu]
ADD CONSTRAINT [PK_ReservationJeu]
    PRIMARY KEY CLUSTERED ([idReservation] ASC);
GO

-- Creating primary key on [idLocal] in table 'LocalJeu'
ALTER TABLE [dbo].[LocalJeu]
ADD CONSTRAINT [PK_LocalJeu]
    PRIMARY KEY CLUSTERED ([idLocal] ASC);
GO

-- Creating primary key on [idJour] in table 'JourJeu'
ALTER TABLE [dbo].[JourJeu]
ADD CONSTRAINT [PK_JourJeu]
    PRIMARY KEY CLUSTERED ([idJour] ASC);
GO

-- Creating primary key on [idSession] in table 'SessionJeu'
ALTER TABLE [dbo].[SessionJeu]
ADD CONSTRAINT [PK_SessionJeu]
    PRIMARY KEY CLUSTERED ([idSession] ASC);
GO

-- Creating primary key on [idType] in table 'TypeUtilisateurJeu'
ALTER TABLE [dbo].[TypeUtilisateurJeu]
ADD CONSTRAINT [PK_TypeUtilisateurJeu]
    PRIMARY KEY CLUSTERED ([idType] ASC);
GO

-- Creating primary key on [idUtilisateur] in table 'UtilisateurJeu_Employe'
ALTER TABLE [dbo].[UtilisateurJeu_Employe]
ADD CONSTRAINT [PK_UtilisateurJeu_Employe]
    PRIMARY KEY CLUSTERED ([idUtilisateur] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Province_idProvince] in table 'UtilisateurJeu'
ALTER TABLE [dbo].[UtilisateurJeu]
ADD CONSTRAINT [FK_UtilisateurProvince]
    FOREIGN KEY ([Province_idProvince])
    REFERENCES [dbo].[ProvinceJeu]
        ([idProvince])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UtilisateurProvince'
CREATE INDEX [IX_FK_UtilisateurProvince]
ON [dbo].[UtilisateurJeu]
    ([Province_idProvince]);
GO

-- Creating foreign key on [Utilisateur_idUtilisateur] in table 'MembreFamilleJeu1'
ALTER TABLE [dbo].[MembreFamilleJeu1]
ADD CONSTRAINT [FK_UtilisateurmembreFamille]
    FOREIGN KEY ([Utilisateur_idUtilisateur])
    REFERENCES [dbo].[UtilisateurJeu]
        ([idUtilisateur])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UtilisateurmembreFamille'
CREATE INDEX [IX_FK_UtilisateurmembreFamille]
ON [dbo].[MembreFamilleJeu1]
    ([Utilisateur_idUtilisateur]);
GO

-- Creating foreign key on [Utilisateur_idUtilisateur] in table 'NouvelleJeu'
ALTER TABLE [dbo].[NouvelleJeu]
ADD CONSTRAINT [FK_UtilisateurNouvelle]
    FOREIGN KEY ([Utilisateur_idUtilisateur])
    REFERENCES [dbo].[UtilisateurJeu]
        ([idUtilisateur])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UtilisateurNouvelle'
CREATE INDEX [IX_FK_UtilisateurNouvelle]
ON [dbo].[NouvelleJeu]
    ([Utilisateur_idUtilisateur]);
GO

-- Creating foreign key on [Utilisateur_idUtilisateur] in table 'CommandeJeu'
ALTER TABLE [dbo].[CommandeJeu]
ADD CONSTRAINT [FK_UtilisateurCommande]
    FOREIGN KEY ([Utilisateur_idUtilisateur])
    REFERENCES [dbo].[UtilisateurJeu]
        ([idUtilisateur])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UtilisateurCommande'
CREATE INDEX [IX_FK_UtilisateurCommande]
ON [dbo].[CommandeJeu]
    ([Utilisateur_idUtilisateur]);
GO

-- Creating foreign key on [Carte_idCarte] in table 'CommandeJeu'
ALTER TABLE [dbo].[CommandeJeu]
ADD CONSTRAINT [FK_CommandeCarte]
    FOREIGN KEY ([Carte_idCarte])
    REFERENCES [dbo].[CarteJeu]
        ([idCarte])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CommandeCarte'
CREATE INDEX [IX_FK_CommandeCarte]
ON [dbo].[CommandeJeu]
    ([Carte_idCarte]);
GO

-- Creating foreign key on [Commande_noCommande] in table 'ElementsCommandeJeu'
ALTER TABLE [dbo].[ElementsCommandeJeu]
ADD CONSTRAINT [FK_CommandeElementsCommande]
    FOREIGN KEY ([Commande_noCommande])
    REFERENCES [dbo].[CommandeJeu]
        ([noCommande])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CommandeElementsCommande'
CREATE INDEX [IX_FK_CommandeElementsCommande]
ON [dbo].[ElementsCommandeJeu]
    ([Commande_noCommande]);
GO

-- Creating foreign key on [Groupe_idGroupe] in table 'ElementsCommandeJeu'
ALTER TABLE [dbo].[ElementsCommandeJeu]
ADD CONSTRAINT [FK_GroupeElementsCommande]
    FOREIGN KEY ([Groupe_idGroupe])
    REFERENCES [dbo].[GroupeJeu]
        ([idGroupe])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupeElementsCommande'
CREATE INDEX [IX_FK_GroupeElementsCommande]
ON [dbo].[ElementsCommandeJeu]
    ([Groupe_idGroupe]);
GO

-- Creating foreign key on [TypeActivite_idType] in table 'ActiviteJeu'
ALTER TABLE [dbo].[ActiviteJeu]
ADD CONSTRAINT [FK_ActiviteTypeActivite]
    FOREIGN KEY ([TypeActivite_idType])
    REFERENCES [dbo].[TypeActiviteJeu]
        ([idType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ActiviteTypeActivite'
CREATE INDEX [IX_FK_ActiviteTypeActivite]
ON [dbo].[ActiviteJeu]
    ([TypeActivite_idType]);
GO

-- Creating foreign key on [Activite_idActivite] in table 'GroupeJeu'
ALTER TABLE [dbo].[GroupeJeu]
ADD CONSTRAINT [FK_GroupeActivite]
    FOREIGN KEY ([Activite_idActivite])
    REFERENCES [dbo].[ActiviteJeu]
        ([idActivite])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupeActivite'
CREATE INDEX [IX_FK_GroupeActivite]
ON [dbo].[GroupeJeu]
    ([Activite_idActivite]);
GO

-- Creating foreign key on [Groupe_idGroupe] in table 'ReservationJeu'
ALTER TABLE [dbo].[ReservationJeu]
ADD CONSTRAINT [FK_GroupeReservation]
    FOREIGN KEY ([Groupe_idGroupe])
    REFERENCES [dbo].[GroupeJeu]
        ([idGroupe])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupeReservation'
CREATE INDEX [IX_FK_GroupeReservation]
ON [dbo].[ReservationJeu]
    ([Groupe_idGroupe]);
GO

-- Creating foreign key on [Local_idLocal] in table 'ReservationJeu'
ALTER TABLE [dbo].[ReservationJeu]
ADD CONSTRAINT [FK_ReservationLocal]
    FOREIGN KEY ([Local_idLocal])
    REFERENCES [dbo].[LocalJeu]
        ([idLocal])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReservationLocal'
CREATE INDEX [IX_FK_ReservationLocal]
ON [dbo].[ReservationJeu]
    ([Local_idLocal]);
GO

-- Creating foreign key on [Jour_idJour] in table 'ReservationJeu'
ALTER TABLE [dbo].[ReservationJeu]
ADD CONSTRAINT [FK_ReservationJour]
    FOREIGN KEY ([Jour_idJour])
    REFERENCES [dbo].[JourJeu]
        ([idJour])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReservationJour'
CREATE INDEX [IX_FK_ReservationJour]
ON [dbo].[ReservationJeu]
    ([Jour_idJour]);
GO

-- Creating foreign key on [Session_idSession] in table 'ReservationJeu'
ALTER TABLE [dbo].[ReservationJeu]
ADD CONSTRAINT [FK_ReservationSession]
    FOREIGN KEY ([Session_idSession])
    REFERENCES [dbo].[SessionJeu]
        ([idSession])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReservationSession'
CREATE INDEX [IX_FK_ReservationSession]
ON [dbo].[ReservationJeu]
    ([Session_idSession]);
GO

-- Creating foreign key on [TypeUtilisateur_idType] in table 'UtilisateurJeu'
ALTER TABLE [dbo].[UtilisateurJeu]
ADD CONSTRAINT [FK_UtilisateurTypeUtilisateur]
    FOREIGN KEY ([TypeUtilisateur_idType])
    REFERENCES [dbo].[TypeUtilisateurJeu]
        ([idType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UtilisateurTypeUtilisateur'
CREATE INDEX [IX_FK_UtilisateurTypeUtilisateur]
ON [dbo].[UtilisateurJeu]
    ([TypeUtilisateur_idType]);
GO

-- Creating foreign key on [idUtilisateur] in table 'UtilisateurJeu_Employe'
ALTER TABLE [dbo].[UtilisateurJeu_Employe]
ADD CONSTRAINT [FK_Employe_inherits_Utilisateur]
    FOREIGN KEY ([idUtilisateur])
    REFERENCES [dbo].[UtilisateurJeu]
        ([idUtilisateur])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------