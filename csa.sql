-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 03:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csa`
--

-- --------------------------------------------------------

--
-- Table structure for table `avenant`
--

CREATE TABLE `avenant` (
  `NO_AVENANT` int(11) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `ETAT_AVENANT` varchar(255) NOT NULL,
  `NUM_ARTICLE` int(11) NOT NULL,
  `DATE_SIGNATURE_AVE` datetime DEFAULT NULL,
  `MODIF_APPORTEE` varchar(255) NOT NULL,
  `COMMENTAIRE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avenant`
--

INSERT INTO `avenant` (`NO_AVENANT`, `ANNEE_PRO`, `NO_ETUDIANT_NAT`, `ETAT_AVENANT`, `NUM_ARTICLE`, `DATE_SIGNATURE_AVE`, `MODIF_APPORTEE`, `COMMENTAIRE`) VALUES
(1, '2005-2006', '7', 'ELA', 1, NULL, 'Modification de la date de fin de stage au 30-08-2006', NULL),
(2, '2005-2006', '7', 'ELA', 1, NULL, 'Modification de la date de fin de stage au 30-09-2006', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidat`
--

CREATE TABLE `candidat` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `SEXE` char(1) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `DATE_NAISSANCE` datetime NOT NULL,
  `LIEU_NAISSANCE` varchar(255) NOT NULL,
  `SITUATION` varchar(3) NOT NULL,
  `NATIONALITE` varchar(50) NOT NULL,
  `TEL_FIXE` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone fixe du candidat',
  `TEL_PORT` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone du portable du candidat',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email du candidat',
  `ACTU_ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue du candidat pendant l''annee scolaire',
  `ACTU_CP` varchar(10) DEFAULT NULL COMMENT 'Code Postel du candidat pendant l''annee scolaire',
  `ACTU_VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville du candidat pendant l''annee scolaire',
  `ACTU_PAYS` varchar(255) DEFAULT NULL COMMENT 'Pays du candidat pendant l''annee scolaire',
  `PERM_ADRESSE` varchar(255) NOT NULL,
  `PERM_CP` varchar(10) NOT NULL,
  `PERM_VILLE` varchar(255) NOT NULL,
  `PERM_PAYS` varchar(255) NOT NULL,
  `DERNIER_DIPLOME` varchar(255) NOT NULL,
  `UNIVERSITE` varchar(255) NOT NULL,
  `SELECTION_ORIGINE` varchar(2) NOT NULL,
  `SELECTION_COURANTE` varchar(2) NOT NULL,
  `REPONSE_ILI` char(1) NOT NULL,
  `DATE_REPONSE_ILI` datetime DEFAULT NULL COMMENT 'Date א laquelle la rיponse (acceptי, attente, refus א la formation) a יtי envoyי au candidat',
  `REPONSE_CAN` varchar(3) DEFAULT 'NRE' COMMENT 'Reprיsente la rיponse d''un candidat au sujet de sa candidature',
  `DATE_REPONSE_CAN` datetime DEFAULT NULL COMMENT 'Date א laquelle le candidat a rיpondu (confirmי ou annulי sa participation א la formation)',
  `NO_ORDRE` double DEFAULT NULL COMMENT 'Classement du candidat sur la liste d''attente'
) ;

--
-- Dumping data for table `candidat`
--

INSERT INTO `candidat` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`, `SEXE`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `LIEU_NAISSANCE`, `SITUATION`, `NATIONALITE`, `TEL_FIXE`, `TEL_PORT`, `EMAIL`, `ACTU_ADRESSE`, `ACTU_CP`, `ACTU_VILLE`, `ACTU_PAYS`, `PERM_ADRESSE`, `PERM_CP`, `PERM_VILLE`, `PERM_PAYS`, `DERNIER_DIPLOME`, `UNIVERSITE`, `SELECTION_ORIGINE`, `SELECTION_COURANTE`, `REPONSE_ILI`, `DATE_REPONSE_ILI`, `REPONSE_CAN`, `DATE_REPONSE_CAN`, `NO_ORDRE`) VALUES
('0156523', '2004-2005', 'H', 'Carriere', 'Guillaume', '1982-06-17 00:00:00', 'Brest', 'CEL', 'Franחaise', '02.98.92.77.34', '06.76.94.89.85', 'gc@srbrest.com', '16 rue Albert de Mun', '29200', 'Brest', 'France', '6 rue Albert de Mun', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-06 00:00:00', NULL),
('142398A23C2', '2004-2005', 'H', 'Mavic', 'Olivier', '1980-03-07 00:00:00', 'Quimper', 'CEL', 'Franחaise', '02.98.56.12.45', '06.78.12.13.15', 'mavico@wanadoo.fr', '17 rue de Kerjogu', '29200', 'Brest', 'France', '17 rue de Kerjogu', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LA', 'LP', 'O', '2004-07-07 00:00:00', 'CON', '2004-08-13 00:00:00', 1),
('164598', '2004-2005', 'H', 'Beriard', 'Franחois-Xavier', '1981-07-18 00:00:00', 'Charleville-mיziטres', 'CEL', 'Franחaise', '02.98.01.93.40', '06.12.90.35.66', 'fx.beriard@apinc.org', '142 rue Robespierre', '29200', 'Brest', 'France', '142 rue Robespierre', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-06 00:00:00', NULL),
('16894563', '2004-2005', 'H', 'Frin', 'Ronan', '1981-03-06 00:00:00', 'Rennes', 'CEL', 'Franחaise', '02.99.64.04.78', '06.63.92.05.30', 'frin_ronan@hotmail.com', '1 rue A. Dodds', '29200', 'Brest', 'France', '16 rue Duguesclin', '35590', 'L\'hermitage', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-06 00:00:00', NULL),
('18986523', '2004-2005', 'F', 'Le Vaillant', 'Sandrine', '1981-08-03 00:00:00', 'Brest', 'CEL', 'Franחaise', '02.98.05.09.64', '06.85.01.54.07', 'sandrine_le_vaillant@yahoo.fr', '1 rue Van-Gogh', '29280', 'Plouzanי', 'France', '1 rue Van-Gogh', '29280', 'Plouzanי', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-20 00:00:00', NULL),
('20103526', '2004-2005', 'F', 'Kerjean', 'Virginie', '1981-03-28 00:00:00', 'Brest', 'CEL', 'Franחaise', NULL, '06.62.35.78.79', 'virginie_kerjean@yahoo.fr', '199 rue du Commandant Drogou', '29200', 'Brest', 'France', '199 rue du Commandant Drogou', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-13 00:00:00', NULL),
('20103546', '2004-2005', 'F', 'Lemesle', 'Patricia', '1981-06-03 00:00:00', 'Morlaix', 'CEL', 'Franחaise', '02.98.72.00.61', '06.13.66.36.01', 'pat.lemesle@wanadoo.fr', '16 impasse de mouettes', '29600', 'Morlaix', 'France', '16 impasse de Mouettes', '29600', 'Morlaix', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-07 00:00:00', NULL),
('20168938', '2004-2005', 'H', 'Lucas', 'Stיphane', '1980-03-10 00:00:00', 'Lannion', 'CEL', 'Franחaise', '02.96.37.74.92', '06.23.39.47.52', 'stephane-joel.lucas@laposte.net', '3 rue Lavoisier', '22300', 'Lannion', 'France', '3 rue Lavoisier', '22300', 'Lannion', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-13 00:00:00', NULL),
('321231', '2004-2005', 'H', 'Baste', 'Pierre', '1981-06-06 00:00:00', 'Cesson-Sיvignי', 'MAR', 'Franחaise', '02.99.32.78.12', '06.23.45.98.74', 'Baste.P@voila.fr', '6 rue Saint-Martin', '35510', 'Cesson,-Sיvignי', 'France', '6 rue Saint-Martin', '35510', 'Cesson-Sיvignי', 'France', 'Master1 Informatique', 'UBO Rennes', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'ANN', '2004-08-20 00:00:00', NULL),
('361245', '2004-2005', 'H', 'Troncal', 'Yannick', '1979-06-04 00:00:00', 'Angouleme', 'CEL', 'Franחaise', NULL, '06.82.20.99.71', 'ytroncal@yahoo.fr', '17 rue Kerabecam', '29200', 'Brest', 'France', '17 rue Kerabecam', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LA', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-15 00:00:00', 2),
('48A765', '2004-2005', 'H', 'Kerneuzet', 'Frיdיric', '1980-08-12 00:00:00', 'Brest', 'CEL', 'Franחaise', NULL, NULL, 'frederic.kerneuzet@gicm.fr', '10 rue Paul Eluard', '29200', 'Brest', 'France', '10 rue Paul Eluard', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'ANN', '2004-08-12 00:00:00', NULL),
('6589RS236F', '2004-2005', 'F', 'Arnaldi', 'Solenn', '1980-03-19 00:00:00', 'Guingamp', 'CEL', 'Franחaise', NULL, '06.88.55.78.97', 'solenn.arnaldi@wanadoo.fr', '17 rue Laכnnec', '29200', 'Brest', 'France', '17 rue Laכnnec', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'LP', 'LP', 'O', '2004-07-01 00:00:00', 'CON', '2004-07-08 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cg_ref_codes`
--

CREATE TABLE `cg_ref_codes` (
  `RV_DOMAIN` varchar(100) NOT NULL,
  `RV_LOW_VALUE` varchar(240) NOT NULL,
  `RV_HIGH_VALUE` varchar(240) DEFAULT NULL,
  `RV_ABBREVIATION` varchar(240) DEFAULT NULL,
  `RV_MEANING` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cg_ref_codes`
--

INSERT INTO `cg_ref_codes` (`RV_DOMAIN`, `RV_LOW_VALUE`, `RV_HIGH_VALUE`, `RV_ABBREVIATION`, `RV_MEANING`) VALUES
('TYPE_EMPLOI', 'CDI', NULL, 'CDI', 'Contrat א durיe indיterminיe'),
('TYPE_EMPLOI', 'CDD', NULL, 'CDD', 'Contrat א durיe dיterminיe'),
('TYPE_EMPLOI', 'SE', NULL, 'SE', 'Sans emploi'),
('TYPE_EMPLOI', 'CNE', NULL, 'CNE', 'Contrat Nouvelle Embauche'),
('MOYEN_OBTENTION_EMPLOI', 'STA', NULL, 'STA', 'Suite au stage'),
('MOYEN_OBTENTION_EMPLOI', 'SPO', NULL, 'SPO', 'Candidature Spontanיe'),
('SEMESTRE', 'S1', NULL, 'S1', 'Semestre 1'),
('SEMESTRE', 'S2', NULL, 'S2', 'Semestre 2'),
('SEMESTRE', 'S3', NULL, 'S3', 'Semestre 3'),
('SEMESTRE', 'S4', NULL, 'S4', 'Semestre 4'),
('SEMESTRE', 'S5', NULL, 'S5', 'Semestre 5'),
('SEMESTRE', 'S6', NULL, 'S6', 'Semestre 6'),
('SEMESTRE', 'S7', NULL, 'S7', 'Semestre 7'),
('SEMESTRE', 'S8', NULL, 'S8', 'Semestre 8'),
('SEMESTRE', 'S9', NULL, 'S9', 'Semestre 9'),
('SEMESTRE', 'S10', NULL, 'S10', 'Semestre 10'),
('PROCESSUS_STAGE', 'RECH', NULL, 'RECH', 'Recherche en cours'),
('PROCESSUS_STAGE', 'EC', NULL, 'EC', 'Stage en cours'),
('PROCESSUS_STAGE', 'TUT', NULL, 'TUT', 'Tuteurs attribuיs'),
('PROCESSUS_STAGE', 'SOUT', NULL, 'SOUT', 'Sessions de soutenance dיfinies'),
('PROCESSUS_STAGE', 'EVAL', NULL, 'EVAL', 'Stage evaluי'),
('ETAT-EVALUATION', 'DIS', NULL, 'DIS', 'Mise א disposition'),
('ETAT-EVALUATION', 'CLO', NULL, 'CLO', 'Clפturי'),
('SERVICE', 'EP', NULL, 'EP', 'Equipe Projet'),
('SERVICE', 'RetD', NULL, 'RetD', 'Recherche et Dיveloppement'),
('SERVICE', 'QUA', NULL, 'QUA', 'Qualitי'),
('DOMAINE_ACTIVITE', 'BANQ', NULL, 'BANQ', 'Domaine bancaire'),
('DOMAINE_ACTIVITE', 'SSII', NULL, 'SSII', 'Sociיtי de services en ingיnierie informatique'),
('DOMAINE_ACTIVITE', 'TEL', NULL, 'TEL', 'Domaine de la tיlיphonie'),
('FONCTION', 'GER', NULL, 'GER', 'Gיrant'),
('FONCTION', 'DACH', NULL, 'DACH', 'Directeur des Achats'),
('FONCTION', 'IE', NULL, 'IE', 'Ingיnieur d\'Etudes'),
('FONCTION', 'ING', NULL, 'ING', 'Ingיnieur'),
('FONCTION', 'DIR', NULL, 'DIR', 'Directeur'),
('FONCTION', 'DT', NULL, 'DT', 'Directeur Technique'),
('FONCTION', 'RREC', NULL, 'RREC', 'Responsable Recrutement'),
('FONCTION', 'RAG', NULL, 'RAG', 'Responsable d\'Agence'),
('FONCTION', 'CDP', NULL, 'CDP', 'Chef de Projet'),
('FONCTION', 'RQ', NULL, 'RQ', 'Responsable Qualitי'),
('FONCTION', 'DRH', NULL, 'DRH', 'Directeur des Ressources Humaines'),
('FONCTION', 'COMM', NULL, 'COMM', 'Commercial'),
('DIPLOME', 'L', NULL, 'L', 'Licence'),
('DIPLOME', 'M', NULL, 'M', 'Master'),
('DIPLOME', 'D', NULL, 'D', 'Doctorat'),
('ETAT_EVALUATION_ENTREPRISE', 'VAL', NULL, 'VAL', 'Validיe'),
('ETAT_EVALUATION_ENTREPRISE', 'EC', NULL, 'EC', 'En cours de notation'),
('ETAT_OFFRE', 'OUV', NULL, 'OUV', 'Ouverte'),
('ETAT_OFFRE', 'POU', NULL, 'POUR', 'Pourvue'),
('ETAT_OFFRE', 'ANN', NULL, 'ANN', 'Annulיe'),
('SALLE', 'LC117A', NULL, 'LC117A', 'Salle de rיunion N°1'),
('SALLE', 'LC117B', NULL, 'LC117B', 'Salle de rיunion N°2'),
('SALLE', 'Amphi P', NULL, 'Amphi P', 'Amphi Pיdagogique'),
('CODE_NOTE', 'A+', NULL, 'A+', 'Excellent'),
('CODE_NOTE', 'A', NULL, 'A', 'Trטs bien'),
('CODE_NOTE', 'A-', NULL, 'A-', 'Trטs bien -'),
('CODE_NOTE', 'B-', NULL, 'B-', 'Bien -'),
('CODE_NOTE', 'B+', NULL, 'B+', 'Bien +'),
('CODE_NOTE', 'B', NULL, 'B', 'Bien'),
('CODE_NOTE', 'C+', NULL, 'C+', 'Assez Bien +'),
('CODE_NOTE', 'C', NULL, 'C', 'Assez Bien'),
('CODE_NOTE', 'C-', NULL, 'C-', 'Assez Bien -'),
('CODE_NOTE', 'D+', NULL, 'D+', 'Passable +'),
('CODE_NOTE', 'D', NULL, 'D', 'Passable'),
('CODE_NOTE', 'D-', NULL, 'D-', 'Passable -'),
('CODE_NOTE', 'E+', NULL, 'E+', 'Insuffisant+'),
('CODE_NOTE', 'E', NULL, 'E', 'Insuffisant'),
('CODE_NOTE', 'E-', NULL, 'E -', 'Insuffisant -'),
('CODE_NOTE', 'F', NULL, 'F', 'Mauvais'),
('INTERLOCUTEUR', 'ETU', NULL, 'ETU', 'Etudiant'),
('INTERLOCUTEUR', 'ENT', NULL, 'ENT', 'Entreprise'),
('NIVEAU_REQUIS', 'BAC+1', NULL, 'BAC+1', 'Bac+1'),
('NIVEAU_REQUIS', 'BAC+2', NULL, 'BAC+2', 'Bac+2'),
('NIVEAU_REQUIS', 'BAC+3', NULL, 'BAC+3', 'Licence'),
('NIVEAU_REQUIS', 'BAC+4', NULL, 'BAC+4', 'Master 1טre annיe'),
('NIVEAU_REQUIS', 'BAC+5', NULL, 'BAC+5', 'Master 2טme annיe'),
('ETAT_CONVENTION', 'ELA', NULL, 'ELA', 'Elaboration en cours'),
('ETAT_CONVENTION', 'ENT', NULL, 'ENT', 'Signature entreprise en cours'),
('ETAT_CONVENTION', 'UBO', NULL, 'UBO', 'Signature UBO en cours'),
('ETAT_CONVENTION', 'VAL', NULL, 'VAL', 'Validיe par l\'UBO'),
('ETAT_STRUCTURE_EVAL', 'ELA', NULL, 'ELA', 'En cours d\'יlaboration'),
('ETAT_STRUCTURE_EVAL', 'APP', NULL, 'APP', 'Applicable'),
('ETAT_STRUCTURE_EVAL', 'ARC', NULL, 'ARC', 'Archivיe'),
('TYPE_CONTACT', 'VISIT', NULL, 'VST', 'Visite en entreprise'),
('TYPE_CONTACT', 'TEL', NULL, 'TEL', 'Tיlיphone'),
('TYPE_CONTACT', 'VISIO', NULL, 'VISIO', 'Visioconfיrence'),
('TYPE_CONTACT', 'MAIL', NULL, 'MAIL', 'Email'),
('ETAT_STAGE', 'ELA', NULL, 'ELA', 'Elaboration'),
('ETAT_STAGE', 'EC', NULL, 'EC', 'En cours'),
('ETAT_STAGE', 'EVA', NULL, 'EVA', 'Evaluי'),
('ETAT_STAGE', 'ANN', NULL, 'ANN', 'Annulי'),
('OUI_NON', 'O', NULL, 'O', 'Oui'),
('OUI_NON', 'N', NULL, 'N', 'Non'),
('ETAT-EVALUATION', 'ELA', NULL, 'ELA', 'En cours d\'יlaboration'),
('', 'A+', NULL, 'A+', 'Excellent'),
('', 'A', NULL, 'A', 'Trטs bien'),
('', 'A-', NULL, 'A-', 'Trטs bien -'),
('', 'B-', NULL, 'B-', 'Bien -'),
('', 'B+', NULL, 'B+', 'Bien +'),
('', 'B', NULL, 'B', 'Bien'),
('', 'C+', NULL, 'C+', 'Assez Bien +'),
('', 'C', NULL, 'C', 'Assez Bien'),
('', 'C-', NULL, 'C-', 'Assez Bien -'),
('', 'D+', NULL, 'D+', 'Passable +'),
('', 'D', NULL, 'D', 'Passable'),
('', 'D-', NULL, 'D-', 'Passable -'),
('', 'E+', NULL, 'E+', 'Insuffisant+'),
('', 'E', NULL, 'E', 'Insuffisant'),
('', 'E-', NULL, 'E -', 'Insuffisant -'),
('', 'F', NULL, 'F', 'Mauvais'),
('', 'L', NULL, 'L', 'Licence'),
('', 'M', NULL, 'M', 'Master'),
('', 'D', NULL, 'D', 'Doctorat'),
('', 'BANQ', NULL, 'BANQ', 'Domaine bancaire'),
('', 'SSII', NULL, 'SSII', 'Sociיtי de services en ingיnierie informatique'),
('', 'TEL', NULL, 'TEL', 'Domaine de la tיlיphonie'),
('', 'ELA', NULL, 'ELA', 'Elaboration en cours'),
('', 'ENT', NULL, 'ENT', 'Signature entreprise en cours'),
('', 'UBO', NULL, 'UBO', 'Signature UBO en cours'),
('', 'VAL', NULL, 'VAL', 'Validיe par l\'UBO'),
('', 'VAL', NULL, 'VAL', 'Validיe'),
('', 'EC', NULL, 'EC', 'En cours de notation'),
('', 'OUV', NULL, 'OUV', 'Ouverte'),
('', 'POU', NULL, 'POUR', 'Pourvue'),
('', 'ANN', NULL, 'ANN', 'Annulיe'),
('', 'ELA', NULL, 'ELA', 'Elaboration'),
('', 'EC', NULL, 'EC', 'En cours'),
('', 'EVA', NULL, 'EVA', 'Evaluי'),
('', 'ANN', NULL, 'ANN', 'Annulי'),
('', 'ELA', NULL, 'ELA', 'En cours d\'יlaboration'),
('', 'APP', NULL, 'APP', 'Applicable'),
('', 'ARC', NULL, 'ARC', 'Archivיe'),
('', 'GER', NULL, 'GER', 'Gיrant'),
('', 'DACH', NULL, 'DACH', 'Directeur des Achats'),
('', 'IE', NULL, 'IE', 'Ingיnieur d\'Etudes'),
('', 'ING', NULL, 'ING', 'Ingיnieur'),
('', 'DIR', NULL, 'DIR', 'Directeur'),
('', 'DT', NULL, 'DT', 'Directeur Technique'),
('', 'RREC', NULL, 'RREC', 'Responsable Recrutement'),
('', 'RAG', NULL, 'RAG', 'Responsable d\'Agence'),
('', 'CDP', NULL, 'CDP', 'Chef de Projet'),
('', 'RQ', NULL, 'RQ', 'Responsable Qualitי'),
('', 'DRH', NULL, 'DRH', 'Directeur des Ressources Humaines'),
('', 'COMM', NULL, 'COMM', 'Commercial'),
('', 'ETU', NULL, 'ETU', 'Etudiant'),
('', 'ENT', NULL, 'ENT', 'Entreprise'),
('', 'STA', NULL, 'STA', 'Suite au stage'),
('', 'SPO', NULL, 'SPO', 'Candidature Spontanיe'),
('', 'BAC+1', NULL, 'BAC+1', 'Bac+1'),
('', 'BAC+2', NULL, 'BAC+2', 'Bac+2'),
('', 'BAC+3', NULL, 'BAC+3', 'Licence'),
('', 'BAC+4', NULL, 'BAC+4', 'Master 1טre annיe'),
('', 'BAC+5', NULL, 'BAC+5', 'Master 2טme annיe'),
('', 'O', NULL, 'O', 'Oui'),
('', 'N', NULL, 'N', 'Non'),
('', 'RECH', NULL, 'RECH', 'Recherche en cours'),
('', 'EC', NULL, 'EC', 'Stage en cours'),
('', 'TUT', NULL, 'TUT', 'Tuteurs attribuיs'),
('', 'SOUT', NULL, 'SOUT', 'Sessions de soutenance dיfinies'),
('', 'EVAL', NULL, 'EVAL', 'Stage evaluי'),
('', 'LC117A', NULL, 'LC117A', 'Salle de rיunion N°1'),
('', 'LC117B', NULL, 'LC117B', 'Salle de rיunion N°2'),
('', 'Amphi P', NULL, 'Amphi P', 'Amphi Pיdagogique'),
('', 'S1', NULL, 'S1', 'Semestre 1'),
('', 'S2', NULL, 'S2', 'Semestre 2'),
('', 'S3', NULL, 'S3', 'Semestre 3'),
('', 'S4', NULL, 'S4', 'Semestre 4'),
('', 'S5', NULL, 'S5', 'Semestre 5'),
('', 'S6', NULL, 'S6', 'Semestre 6'),
('', 'S7', NULL, 'S7', 'Semestre 7'),
('', 'S8', NULL, 'S8', 'Semestre 8'),
('', 'S9', NULL, 'S9', 'Semestre 9'),
('', 'S10', NULL, 'S10', 'Semestre 10'),
('', 'EP', NULL, 'EP', 'Equipe Projet'),
('', 'RetD', NULL, 'RetD', 'Recherche et Dיveloppement'),
('', 'QUA', NULL, 'QUA', 'Qualitי'),
('', 'VISIT', NULL, 'VST', 'Visite en entreprise'),
('', 'TEL', NULL, 'TEL', 'Tיlיphone'),
('', 'VISIO', NULL, 'VISIO', 'Visioconfיrence'),
('', 'MAIL', NULL, 'MAIL', 'Email'),
('', 'CDI', NULL, 'CDI', 'Contrat א durיe indיterminיe'),
('', 'CDD', NULL, 'CDD', 'Contrat א durיe dיterminיe'),
('', 'SE', NULL, 'SE', 'Sans emploi'),
('', 'CNE', NULL, 'CNE', 'Contrat Nouvelle Embauche');

-- --------------------------------------------------------

--
-- Table structure for table `code_notation`
--

CREATE TABLE `code_notation` (
  `CODN_ID` double NOT NULL,
  `NO_BAREME` double NOT NULL,
  `CODE_NOTE` varchar(3) NOT NULL,
  `DESIGNATION` varchar(50) NOT NULL,
  `VALEUR_NOTE` double NOT NULL,
  `DESCRIPTIF` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `code_notation`
--

INSERT INTO `code_notation` (`CODN_ID`, `NO_BAREME`, `CODE_NOTE`, `DESIGNATION`, `VALEUR_NOTE`, `DESCRIPTIF`) VALUES
(1, 3, '-', 'Rien', 0, NULL),
(2, 3, 'A+', 'Excellent', 20, 'Rיsultat remarquable'),
(3, 3, 'A', 'Trטs bien', 17, 'Trטs bon travail'),
(4, 3, 'B', 'Bien', 15, 'Bon Travail'),
(5, 3, 'C', 'Passable', 10, 'Travail satisfaisant aux critטres minimaux');

-- --------------------------------------------------------

--
-- Table structure for table `contact_stage`
--

CREATE TABLE `contact_stage` (
  `DATE_CONTACT` datetime NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `TYPE_CONTACT` varchar(3) NOT NULL,
  `INTERLOCUTEUR` varchar(3) DEFAULT NULL COMMENT 'Type d''interlocuteur',
  `OBJET` varchar(255) NOT NULL,
  `DUREE` varchar(20) DEFAULT NULL COMMENT 'Durיe du contact',
  `RESUME` longtext DEFAULT NULL,
  `NO_CONTACT_ILI` double DEFAULT NULL,
  `HEURE_CONTACT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_stage`
--

INSERT INTO `contact_stage` (`DATE_CONTACT`, `ANNEE_PRO`, `NO_ETUDIANT_NAT`, `TYPE_CONTACT`, `INTERLOCUTEUR`, `OBJET`, `DUREE`, `RESUME`, `NO_CONTACT_ILI`, `HEURE_CONTACT`) VALUES
('2006-08-07 00:00:00', '2005-2006', '1496024035', 'TEL', 'ENT', 'Prise de contact et יtat d\'avancement', '10 min', 'Etat d\'avancement et integration ok.', 1, NULL),
('2006-08-30 00:00:00', '2005-2006', '1496024035', 'TEL', 'ENT', 'Invitation א la soutenance', '10 min', 'Invitation du tuteur pour la soutenance de stage', 1, NULL),
('2005-08-07 00:00:00', '2004-2005', '16894563', 'ENT', 'ENT', 'Prise de RDV pour la visite officiel', '10 min', NULL, 9, NULL),
('2005-08-07 00:00:00', '2004-2005', '18986523', 'ENT', 'ENT', 'Prise de RDV pour la visite officiel', '10 min', NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `critere_entreprise`
--

CREATE TABLE `critere_entreprise` (
  `CRITE_ID` double NOT NULL,
  `NO_EVALUATION` double NOT NULL,
  `ORDRE` double NOT NULL,
  `DESIGNATION` varchar(200) NOT NULL,
  `POIDS` double NOT NULL,
  `DESCRIPTIF` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `critere_entreprise`
--

INSERT INTO `critere_entreprise` (`CRITE_ID`, `NO_EVALUATION`, `ORDRE`, `DESIGNATION`, `POIDS`, `DESCRIPTIF`) VALUES
(1, 1, 6, 'Apprיciation globale', 16, NULL),
(2, 1, 5, 'Application au travail', 16, NULL),
(3, 1, 4, 'Qualitי de l\'insertion dans l\'entreprise et rapports humains', 16, NULL),
(4, 1, 3, 'Esprit d\'initiative', 16, NULL),
(5, 1, 2, 'Capacitי d\'adaption', 20, NULL),
(6, 1, 1, 'Compיtence technique', 16, NULL),
(7, 2, 6, 'Apprיciation globale', 16, NULL),
(8, 2, 5, 'Application au travail', 16, NULL),
(9, 2, 4, 'Qualitי de l\'insertion dans l\'entreprise et rapports humains', 16, NULL),
(10, 2, 3, 'Esprit d\'initiative', 16, NULL),
(11, 2, 2, 'Capacitי d\'adaption', 19, NULL),
(12, 2, 1, 'Compיtence technique', 17, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diplome`
--

CREATE TABLE `diplome` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `AUTORISATION_ANNUAIRE` char(1) NOT NULL,
  `TYPE_EMPLOI` varchar(3) DEFAULT NULL COMMENT 'Situation actuelle du diplפmי',
  `MAIL_PRO` varchar(100) DEFAULT NULL,
  `TEL_PRO` varchar(20) DEFAULT NULL,
  `ADRESSE` varchar(100) DEFAULT NULL COMMENT 'Adresse du diplפmי',
  `CP` varchar(10) DEFAULT NULL COMMENT 'Code postal',
  `VILLE` varchar(50) DEFAULT NULL COMMENT 'Ville de rיsidence du diplפmי',
  `EMAIL_PERSO` varchar(100) DEFAULT NULL COMMENT 'Second adresse mail du diplפmי.',
  `TEL_PERSO` varchar(20) DEFAULT NULL,
  `PORTABLE` varchar(20) DEFAULT NULL
) ;

--
-- Dumping data for table `diplome`
--

INSERT INTO `diplome` (`NO_ETUDIANT_NAT`, `NOM`, `PRENOM`, `AUTORISATION_ANNUAIRE`, `TYPE_EMPLOI`, `MAIL_PRO`, `TEL_PRO`, `ADRESSE`, `CP`, `VILLE`, `EMAIL_PERSO`, `TEL_PERSO`, `PORTABLE`) VALUES
('142398', 'Mavic', 'Olivier', 'N', 'CNE', NULL, NULL, NULL, '29200', 'Brest', 'mavico@wanadoo.fr', '02.98.56.12.45', '06.78.12.13.15'),
('1492057895', 'Le Nir', 'David', 'N', 'SE', NULL, NULL, NULL, '29120', 'Trיmיoc', 'david.lenir@gmail.com', NULL, '06.61.14.92.01'),
('1492092540', 'Humbert', 'Erwan', 'N', 'SE', NULL, NULL, NULL, '29000', 'Quimper', 'erwan.humbert@gmail.com', NULL, '06.81.37.85.18'),
('1493003704', 'Allain', 'Tangi', 'N', 'SE', NULL, NULL, NULL, '29100', 'Douarnenez', 'allain_tangi@yahoo.fr', NULL, '06.13.92.55.31'),
('1493010305', 'Quיffיlec', 'Rיgis', 'N', 'SE', NULL, NULL, NULL, '29590', 'Loperec', 'queffelec.regis@wanadoo.fr', NULL, '06.71.85.85.19'),
('1496024035', 'Raoul', 'Aurיlie', 'N', 'SE', NULL, NULL, NULL, '22540', 'Pיdernec', 'aurao08@yahoo.fr', NULL, '06.64.91.49.04'),
('1499067588', 'Gaonach', 'Julien', 'N', 'SE', NULL, NULL, NULL, '29470', 'Plougastel-Daoulas', 'julien_gaonach@yahoo.fr', NULL, '06.76.99.41.48'),
('1499110659', 'Lorand', 'Mickaכl', 'N', 'SE', NULL, NULL, NULL, '35600', 'Redon', 'dralak@gmail.com', NULL, '06.70.83.75.01'),
('156523', 'Carriere', 'Guillaume', 'O', 'SE', NULL, NULL, NULL, '29200', 'Brest', 'gc@srbrest.com', '02.98.92.77.34', '06.76.94.89.85'),
('164598', 'Beriard', 'Franחois-Xavier', 'O', 'CDD', NULL, NULL, NULL, '29200', 'Brest', 'fx.beriard@apinc.org', '02.98.01.93.40', '06.12.90.35.66'),
('16894563', 'Frin', 'Ronan', 'N', 'SE', NULL, NULL, NULL, '35590', 'L\'hermitage', 'frin_ronan@hotmail.com', '02.99.64.04.78', '06.63.92.05.30'),
('1893029650', 'Naretto', 'Pierre-Emmanuel', 'N', 'SE', NULL, NULL, NULL, '29200', 'Brest', 'pierre_naretto@yahoo.fr', NULL, '06.63.79.97.01'),
('18986523', 'Le Vaillant', 'Sandrine', 'N', 'SE', NULL, NULL, NULL, '29280', 'Plouzanי', 'sandrine_le_vaillant@yahoo.fr', '02.98.05.09.64', '06.85.01.54.07'),
('20103526', 'Kerjean', 'Virginie', 'O', 'CDI', NULL, NULL, NULL, '29200', 'Brest', 'virginie_kerjean@yahoo.fr', NULL, '06.62.35.78.79'),
('20103546', 'Lemesle', 'Patricia', 'N', 'SE', NULL, NULL, NULL, '29600', 'Morlaix', 'pat.lemesle@wanadoo.fr', '02.98.72.00.61', '06.13.66.36.01'),
('20168938', 'Lucas', 'Stיphane', 'O', 'CDI', NULL, NULL, NULL, '22300', 'Lannion', 'stephane-joel.lucas@laposte.net', '02.96.37.74.92', '06.23.39.47.52'),
('361245', 'Troncal', 'Yannick', 'N', 'CNE', NULL, NULL, NULL, '29200', 'Brest', 'ytroncal@yahoo.fr', NULL, '06.82.20.99.71'),
('6589', 'Arnaldi', 'Solenn', 'O', 'CDI', NULL, NULL, NULL, '29200', 'Brest', 'solenn.arnaldi@wanadoo.fr', NULL, '06.88.55.78.97'),
('6816', 'Decourchelle', 'Antonin', 'N', 'SE', NULL, NULL, NULL, '29280', 'Plouzanי', 'antonin.decourchelle@gmail.com', NULL, '06.63.90.96.36'),
('7', 'Barzic', 'Ronan', 'N', 'SE', NULL, NULL, NULL, '29900', 'Concarneau', 'rbarzic@hotmail.com', NULL, '06.71.18.27.02');

-- --------------------------------------------------------

--
-- Table structure for table `droit`
--

CREATE TABLE `droit` (
  `ID_EVALUATION` bigint(20) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `CONSULTATION` char(1) NOT NULL,
  `DUPLICATION` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `droit`
--

INSERT INTO `droit` (`ID_EVALUATION`, `NO_ENSEIGNANT`, `CONSULTATION`, `DUPLICATION`) VALUES
(1, 1, 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `element_constitutif`
--

CREATE TABLE `element_constitutif` (
  `CODE_FORMATION` varchar(8) NOT NULL,
  `CODE_UE` varchar(8) NOT NULL,
  `CODE_EC` varchar(8) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `DESIGNATION` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(240) NOT NULL,
  `NBH_CM` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de CM prיvues dans l''EC',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de TD prיvues dans l''EC',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de TP prיvues dans l''EC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Element Constitutif';

--
-- Dumping data for table `element_constitutif`
--

INSERT INTO `element_constitutif` (`CODE_FORMATION`, `CODE_UE`, `CODE_EC`, `NO_ENSEIGNANT`, `DESIGNATION`, `DESCRIPTION`, `NBH_CM`, `NBH_TD`, `NBH_TP`) VALUES
('M2DOSI', 'PSI', 'SA', 2, 'Serveur d\'Applications', 'Programmation Java/JSP  localisי sur un  Serveur d\'Application J2EE', NULL, NULL, 30),
('M2DOSI', 'PSI', 'SD', 1, 'Serveur de Donnיes', 'Programmation BDD localisי sur un  Serveur de base de Donnיes', NULL, NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `NO_CONTACT_ILI` double NOT NULL,
  `NO_ENTREPRISE` double NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) DEFAULT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `MAIL_PRO` varchar(100) DEFAULT NULL,
  `TEL_PRO` varchar(20) DEFAULT NULL,
  `FONCTION` varchar(5) DEFAULT NULL COMMENT 'Reprיsente le poste occupי au sein d''une entreprise'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`NO_CONTACT_ILI`, `NO_ENTREPRISE`, `NO_ETUDIANT_NAT`, `NOM`, `PRENOM`, `MAIL_PRO`, `TEL_PRO`, `FONCTION`) VALUES
(0, 0, NULL, 'Non dיfinie', 'Non dיfinie', NULL, NULL, 'CDP'),
(1, 3, NULL, 'RAVENEAU', 'Olivier', 'olivier.raveneau@teamlog.com', '02.96.48.55.09', 'CDP'),
(2, 3, NULL, 'Lucas', 'Stיphane', NULL, NULL, 'IE'),
(3, 7, NULL, 'Le Vaillant', 'Sandrine', NULL, NULL, 'IE'),
(4, 1, NULL, 'Kerjean', 'Virginie', NULL, NULL, 'IE'),
(5, 2, NULL, 'Barzic', 'Ronan', NULL, NULL, 'COMM'),
(6, 2, NULL, 'SIELLER', 'Nicolas', 'nsieller@synapsy.fr', NULL, 'GER'),
(7, 7, NULL, 'ROGER', 'Franחois', NULL, NULL, 'RAG'),
(8, 8, NULL, 'Claverie', 'Michטle', 'michele.claverie@atosorigin.com', NULL, 'DCOMM'),
(9, 8, NULL, 'CHAMARY', 'Joan', 'joan.chamary@atosorigin.com', NULL, 'DRH'),
(10, 8, NULL, 'CHARRIERE', 'Stיphane', 'stephane.charriere@atosorigin.com', NULL, 'DACH'),
(21, 0, NULL, 'Arnaldi', 'Solenn', NULL, NULL, 'DCOMM');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `SEXE` varchar(1) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `ADRESSE` varchar(255) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `VILLE` varchar(255) NOT NULL,
  `PAYS` varchar(255) NOT NULL,
  `TEL_PORT` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone de l''enseignant',
  `ENC_PERSO_TEL` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone personnel de l''enseignant chercheur',
  `ENC_UBO_TEL` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone de l''UBO de l''enseignant chercheur',
  `ENC_PERSO_EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email personnel de l''enseignant chercheur',
  `ENC_UBO_EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email de l''UBO de l''enseignant chercheur',
  `INT_NO_INSEE` varchar(50) DEFAULT NULL COMMENT 'Numיro INSEE de la sociיtי de l''intervenant extיrieur',
  `INT_SOC_NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de la sociיtי de  l''intervenant extיrieur',
  `INT_SOC_ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de la sociיtי de  l''intervenant extיrieur',
  `INT_SOC_CP` varchar(10) DEFAULT NULL COMMENT 'Code postal de la sociיtי de  l''intervenant extיrieur',
  `INT_SOC_VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de la sociיtי de  l''intervenant extיrieur',
  `INT_SOC_PAYS` varchar(255) DEFAULT NULL COMMENT 'Pays de la sociיtי de  l''intervenant extיrieur',
  `INT_FONCTION` varchar(50) DEFAULT NULL COMMENT 'Fonction d el ''intervenant extיrieur dans la sociיtי',
  `INT_PROF_EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse Email professionnel de l''intervenant extיrieur',
  `INT_PROF_TEL` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone professionnel de l''intervenat extיrieur'
) ;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`NO_ENSEIGNANT`, `TYPE`, `SEXE`, `NOM`, `PRENOM`, `ADRESSE`, `CP`, `VILLE`, `PAYS`, `TEL_PORT`, `ENC_PERSO_TEL`, `ENC_UBO_TEL`, `ENC_PERSO_EMAIL`, `ENC_UBO_EMAIL`, `INT_NO_INSEE`, `INT_SOC_NOM`, `INT_SOC_ADRESSE`, `INT_SOC_CP`, `INT_SOC_VILLE`, `INT_SOC_PAYS`, `INT_FONCTION`, `INT_PROF_EMAIL`, `INT_PROF_TEL`) VALUES
(1, 'ENC', 'H', 'Saliou', 'Philippe', '6, rue de l\'Argoat', '29860', 'Le Drennec', 'France', NULL, '02.98.40.82.95', '02.98.01.69.74', NULL, 'Philippe.Saliou@univ-brest.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ENC', 'H', 'Ribaud', 'Vincent', '20, avenur le Gorgeu', '29200', 'Brest', 'France', NULL, NULL, '02.98.01.69.71', NULL, 'Vincent.Ribaud@univ-brest.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'INT', 'F', 'Le Guen', 'Claudie', '15, boulevard mouchotte', '29200', 'Brest', 'France', '06.74.63.12.21', '02.98.65.32.12', NULL, NULL, NULL, '20136598BCF32', 'Cap Gemini', '10 quai du commandant Malbert', '29200', 'Brest', 'France', 'Ingיnieur Qualitי', 'claudie.leguen@capgeminio.fr', '02.98.68.45.73'),
(30, 'ENC', 'L', 'Clochette', 'Fיe', 'ciel יtoilי', '29200', 'neverland', 'pays imaginaire', '00', '00', '00', '00', '00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entreprise`
--

CREATE TABLE `entreprise` (
  `NO_ENTREPRISE` double NOT NULL,
  `REFERENCEE` char(1) DEFAULT 'N',
  `DATE_REFERENCEMENT` datetime DEFAULT NULL COMMENT 'Date de référencement de l''entreprise',
  `LOGIN_CREA` varchar(8) DEFAULT NULL COMMENT 'NE PAS UTILISER = RESIDU SIGILI',
  `DATE_CREA` datetime NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `SIEGE_SOCIAL` varchar(100) NOT NULL,
  `DOMAINE_ACTIVITE` varchar(5) NOT NULL,
  `ADRESSE` varchar(255) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `VILLE` varchar(100) NOT NULL,
  `PAYS` varchar(100) NOT NULL,
  `TEL` varchar(20) NOT NULL,
  `SITE_INTERNET` varchar(150) DEFAULT NULL COMMENT 'Adresse web sur site de l''entreprise',
  `NOM_REPRESENTANT` varchar(50) DEFAULT NULL COMMENT 'Nom du représentant',
  `PRENOM_REPRESENTANT` varchar(50) DEFAULT NULL COMMENT 'Prénom du représentant',
  `LOGIN_MAJ` varchar(8) DEFAULT NULL COMMENT 'NE PAS UTILISER = RESIDU SIGILI',
  `DATE_MAJ` datetime DEFAULT current_timestamp COMMENT 'Date de mise à jour des données',
  `OFFRE_STAGE` char(1) DEFAULT 'N' COMMENT 'Représente une valeur booléenne Oui ou Non'
);


--
-- Dumping data for table `entreprise`
--

INSERT INTO `entreprise` (`NO_ENTREPRISE`, `REFERENCEE`, `DATE_REFERENCEMENT`, `LOGIN_CREA`, `DATE_CREA`, `NOM`, `SIEGE_SOCIAL`, `DOMAINE_ACTIVITE`, `ADRESSE`, `CP`, `VILLE`, `PAYS`, `TEL`, `SITE_INTERNET`, `NOM_REPRESENTANT`, `PRENOM_REPRESENTANT`, `LOGIN_MAJ`, `DATE_MAJ`, `OFFRE_STAGE`) VALUES
(0, 'N', NULL, NULL, '2006-10-03 00:00:00', 'Non dיfinie', 'Non dיfinie', 'SSII', 'Non dיfinie', 'Non dיf', 'Non dיfinie', 'France', 'Non dיfinie', NULL, NULL, NULL, NULL, '2006-10-03 00:00:00', 'N'),
(1, 'O', '2006-10-03 00:00:00', 'saliouph', '2006-10-03 00:00:00', 'THALES', 'Malakoff', 'SSII', '34 Quai de la Douane', '29200', 'BREST', 'France', '02 98 43 44 66', 'www.thales-is.com', NULL, NULL, NULL, NULL, 'O'),
(2, 'N', NULL, NULL, '2006-10-03 00:00:00', 'synapsy', 'CONCARNEAU', 'SSII', 'rue fulgence bienvenue', '29900', 'CONCARNEAU', 'France', '02 98 60 41 44', 'www.synapsy.fr', 'BARZIC', 'Ronan', NULL, NULL, 'N'),
(3, 'O', '2006-10-03 00:00:00', 'saliouph', '2006-10-03 00:00:00', 'TEAMLOG', 'LANNION', 'SSII', '11 r Blaise Pascal', '22300', 'LANNION', 'France', '02 96 48 21 22', 'Moulטne', 'Bernard', NULL, NULL, NULL, 'O'),
(4, 'O', '2006-10-03 00:00:00', NULL, '2006-10-03 00:00:00', 'ASTEN', 'Brest', 'SSII', '21 Rue Robert Schumann', '29480', 'Le Relecq Kerhuon', 'France', '02 98 28 66 60', 'www.groupe-asten.fr', 'CAGNARD', 'Jean-Christophe', NULL, NULL, 'N'),
(5, 'N', NULL, NULL, '2006-10-03 00:00:00', 'Abase', 'Brest', 'SSII', 'zi Kerscao', '29480', 'LE RELECQ KERHUON', 'France', '02 98 30 43 60', NULL, NULL, NULL, NULL, NULL, 'N'),
(6, 'N', NULL, NULL, '2006-10-03 00:00:00', 'Atlantide', 'Brest', 'SSII', '300 r Pierre Rivoalon', '29200', 'Brest', 'France', ' 02 98 05 43 21', NULL, NULL, NULL, NULL, NULL, 'N'),
(7, 'N', NULL, NULL, '2006-10-03 00:00:00', 'Capgemini', 'Brest', 'SSII', '10 quai Commdt Malbert', '29200', 'Brest', 'France', '02 98 33 60 77', NULL, NULL, NULL, NULL, NULL, 'N'),
(8, 'O', '2006-10-03 00:00:00', NULL, '2006-10-03 00:00:00', 'Atos Origin', 'Brest', 'SSII', '20 quai Commdt Malbert', '29200', 'Brest', 'France', '33 (0)2 98 80 97 30', 'www.si.fr.atosorigin.com', NULL, NULL, NULL, NULL, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `entreprise_jn`
--

CREATE TABLE `entreprise_jn` (
  `JN_OPERATION` char(3) NOT NULL,
  `JN_ORACLE_USER` varchar(30) NOT NULL,
  `JN_DATETIME` datetime NOT NULL,
  `JN_NOTES` varchar(240) DEFAULT NULL,
  `JN_APPLN` varchar(35) DEFAULT NULL,
  `JN_SESSION` decimal(38,0) DEFAULT NULL,
  `NO_ENTREPRISE` double NOT NULL,
  `REFERENCEE` char(1) DEFAULT NULL,
  `DATE_REFERENCEMENT` datetime DEFAULT NULL,
  `LOGIN_CREA` varchar(8) DEFAULT NULL,
  `DATE_CREA` datetime DEFAULT NULL,
  `NOM` varchar(100) DEFAULT NULL,
  `SIEGE_SOCIAL` varchar(100) DEFAULT NULL,
  `DOMAINE_ACTIVITE` varchar(5) DEFAULT NULL,
  `ADRESSE` varchar(255) DEFAULT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `PAYS` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `SITE_INTERNET` varchar(150) DEFAULT NULL,
  `NOM_REPRESENTANT` varchar(50) DEFAULT NULL,
  `PRENOM_REPRESENTANT` varchar(50) DEFAULT NULL,
  `LOGIN_MAJ` varchar(8) DEFAULT NULL,
  `DATE_MAJ` datetime DEFAULT NULL,
  `OFFRE_STAGE` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Created by Oracle Designer Server Generator';

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `CODE_COM` varchar(10) DEFAULT NULL COMMENT 'NE PAS UTILISER = RESIDU SIGILI',
  `NO_ETUDIANT_UBO` varchar(20) DEFAULT NULL COMMENT 'Numיro UBO de l''יtudiant',
  `SEXE` varchar(1) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `DATE_NAISSANCE` datetime NOT NULL,
  `LIEU_NAISSANCE` varchar(255) NOT NULL,
  `SITUATION` varchar(3) NOT NULL,
  `NATIONALITE` varchar(50) NOT NULL DEFAULT 'Française',
  `TEL_PORT` varchar(20) DEFAULT NULL COMMENT 'Numיro de portable de l''יtudiant',
  `TEL_FIXE` varchar(20) DEFAULT NULL COMMENT 'Numיro de tיlיphone fixe de l''יtudiant',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email de l''יtudiant',
  `ACTU_ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de l''יtudiant pendant l''anne scolaire',
  `ACTU_CP` varchar(10) DEFAULT NULL COMMENT 'Code postal de l''יtudiant pendant l''annיe scolaire',
  `ACTU_VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de l''יtudiant pendant l''annיe scolaire',
  `ACTU_PAYS` varchar(255) DEFAULT NULL COMMENT 'Pays de l''יtudiant pendant l''annיe scolaire',
  `PERM_ADRESSE` varchar(255) NOT NULL,
  `PERM_CP` varchar(10) NOT NULL,
  `PERM_VILLE` varchar(255) NOT NULL,
  `PERM_PAYS` varchar(255) NOT NULL,
  `DERNIER_DIPLOME` varchar(255) NOT NULL,
  `UNIVERSITE` varchar(255) NOT NULL,
  `SIGLE_ETU` varchar(3) NOT NULL,
  `COMPTE_CRI` varchar(10) NOT NULL,
  `UBO_EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email UBO de l''יtudiant',
  `GRPE_ANGLAIS` tinyint(4) DEFAULT NULL COMMENT 'Groupe d''anglais de l''יtudiant',
  `ABANDON_MOTIF` varchar(255) DEFAULT NULL COMMENT 'Motif de l''abandon de l''יtudiant',
  `ABANDON_DATE` datetime DEFAULT NULL COMMENT 'Date א laquelle l''יtudiant a abandonnי la formation',
  `EST_DIPLOME` char(1) DEFAULT 'N' COMMENT 'Reprיsenet une valeur boolיen Oui ou Non'
) ;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`, `CODE_COM`, `NO_ETUDIANT_UBO`, `SEXE`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `LIEU_NAISSANCE`, `SITUATION`, `NATIONALITE`, `TEL_PORT`, `TEL_FIXE`, `EMAIL`, `ACTU_ADRESSE`, `ACTU_CP`, `ACTU_VILLE`, `ACTU_PAYS`, `PERM_ADRESSE`, `PERM_CP`, `PERM_VILLE`, `PERM_PAYS`, `DERNIER_DIPLOME`, `UNIVERSITE`, `SIGLE_ETU`, `COMPTE_CRI`, `UBO_EMAIL`, `GRPE_ANGLAIS`, `ABANDON_MOTIF`, `ABANDON_DATE`, `EST_DIPLOME`) VALUES
('142398', '2004-2005', 'CILI3.2', '200056323', 'H', 'Mavic', 'Olivier', '1980-03-07 00:00:00', 'Quimper', 'CEL', 'Franחaise', '06.78.12.13.15', '02.98.56.12.45', 'mavico@wanadoo.fr', '17 rue de Kerjogu', '29200', 'Brest', 'France', '17 rue de Kerjogu', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'OLM', 'mavicoli', NULL, NULL, NULL, NULL, 'O'),
('1492057895', '2005-2006', 'CILI4.2', '20303736', 'H', 'Le Nir', 'David', '1981-11-21 00:00:00', 'Pont L\'Abbי', 'CEL', 'Franחaise', '06.61.14.92.01', NULL, 'david.lenir@gmail.com', 'Kerbenfous', '29120', 'Trיmיoc', 'France', 'Kerbenfous', '29120', 'Trיmיoc', 'France', 'Master1 Informatique', 'UBO Brest', 'DAL', 'le_nirda', NULL, NULL, NULL, NULL, 'O'),
('1492092540', '2005-2006', 'CILI4.1', '20105004', 'H', 'Humbert', 'Erwan', '1982-02-01 00:00:00', 'Paris 11טme', 'CEL', 'Franחaise', '06.81.37.85.18', NULL, 'erwan.humbert@gmail.com', '23 rue Saint Marc', '29200', 'Brest', 'France', '10 rue Henri Dunant', '29000', 'Quimper', 'France', 'Master1 Informatique', 'UBO Brest', 'ERH', 'humberer', NULL, NULL, NULL, NULL, 'O'),
('1493003704', '2005-2006', 'CILI4.2', '20203100', 'H', 'Allain', 'Tangi', '1982-10-03 00:00:00', 'Douarnenez', 'CEL', 'Franחaise', '06.13.92.55.31', NULL, 'allain_tangi@yahoo.fr', 'App. 222 - 6 rue des Archives', '29200', 'Brest', 'France', '11 rue des moineaux', '29100', 'Douarnenez', 'France', 'Master1 Informatique', 'UBO Brest', 'ALT', 'allainta', NULL, NULL, NULL, NULL, 'O'),
('1493010305', '2005-2006', 'CILI4.1', '20304099', 'H', 'Quיffיlec', 'Rיgis', '1982-01-28 00:00:00', 'Quimper', 'CEL', 'Franחaise', '06.71.85.85.19', NULL, 'queffelec.regis@wanadoo.fr', '31 rue Mirabeau', '29200', 'Brest', 'France', 'route de kervinic', '29590', 'Loperec', 'France', 'Master1 Informatique', 'UBO Brest', 'REQ', 'queffere', NULL, NULL, NULL, NULL, 'O'),
('1496024035', '2005-2006', 'CILI4.1', '20203300', 'F', 'Raoul', 'Aurיlie', '1981-04-08 00:00:00', 'Guingamp', 'CEL', 'Franחaise', '06.64.91.49.04', NULL, 'aurao08@yahoo.fr', 'App. 311, 6 rue des archives', '29200', 'Brest', 'France', '2 Kerbrי', '22540', 'Pיdernec', 'France', 'Master1 Informatique', 'UBO Brest', 'AUR', 'raoulaur', NULL, NULL, NULL, NULL, 'O'),
('1499067588', '2005-2006', 'CILI4.1', '20203186', 'H', 'Gaonach', 'Julien', '1981-09-23 00:00:00', 'Landernau', 'CEL', 'Franחaise', '06.76.99.41.48', NULL, 'julien_gaonach@yahoo.fr', '19 kerbrad', '29470', 'Plougastel-Daoulas', 'France', '19 kerbrad', '29470', 'Plougastel-Daoulas', 'France', 'Master1 Informatique', 'UBO Brest', 'JUG', 'gaonacju', NULL, NULL, NULL, NULL, 'O'),
('1499110659', '2005-2006', 'CILI4.2', '20504399', 'H', 'Lorand', 'Mickaכl', '1982-03-26 00:00:00', 'Ploכrmel (56)', 'CEL', 'Franחaise', '06.70.83.75.01', NULL, 'dralak@gmail.com', '2 et 4 rue des Archives', '29200', 'Brest', 'France', '16 rue de l\'Ouest', '35600', 'Redon', 'France', 'Master1 Informatique', 'Universitי de Rennes 1', 'MIL', 'lorandmi', NULL, NULL, NULL, NULL, 'O'),
('156523', '2004-2005', 'CILI3.1', '200056314', 'H', 'Carriere', 'Guillaume', '1982-06-17 00:00:00', 'Brest', 'CEL', 'Franחaise', '06.76.94.89.85', '02.98.92.77.34', 'gc@srbrest.com', '16 rue Albert de Mun', '29200', 'Brest', 'France', '6 rue Albert de Mun', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'GUC', 'carriegu', NULL, NULL, NULL, NULL, 'O'),
('164598', '2004-2005', 'CILI3.1', '200056313', 'H', 'Beriard', 'Franחois-Xavier', '1981-07-18 00:00:00', 'Charleville-mיziטres', 'CEL', 'Franחaise', '06.12.90.35.66', '02.98.01.93.40', 'fx.beriard@apinc.org', '142 rue Robespierre', '29200', 'Brest', 'France', '142 rue Robespierre', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'FXB', 'beriarfr', NULL, NULL, NULL, NULL, 'O'),
('16894563', '2004-2005', 'CILI3.1', '200056317', 'H', 'Frin', 'Ronan', '1981-03-06 00:00:00', 'Rennes', 'CEL', 'Franחaise', '06.63.92.05.30', '02.99.64.04.78', 'frin_ronan@hotmail.com', '1 rue A. Dodds', '29200', 'Brest', 'France', '16 rue Duguesclin', '35590', 'L\'hermitage', 'France', 'Master1 Informatique', 'UBO Brest', 'ROF', 'frinrona', NULL, NULL, NULL, NULL, 'O'),
('1893029650', '2005-2006', 'CILI4.2', '20203203', 'H', 'Naretto', 'Pierre-Emmanuel', '1980-04-26 00:00:00', 'Chateauroux (36)', 'CEL', 'Franחaise', '06.63.79.97.01', NULL, 'pierre_naretto@yahoo.fr', '48 Pen Ar Menez', '29200', 'Brest', 'France', '48 Pen Ar Menez', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'PIN', 'narettpi', NULL, NULL, NULL, NULL, 'O'),
('18986523', '2004-2005', 'CILI3.1', '200056320', 'F', 'Le Vaillant', 'Sandrine', '1981-08-03 00:00:00', 'Brest', 'CEL', 'Franחaise', '06.85.01.54.07', '02.98.05.09.64', 'sandrine_le_vaillant@yahoo.fr', '1 rue Van-Gogh', '29280', 'Plouzanי', 'France', '1 rue Van-Gogh', '29280', 'Plouzanי', 'France', 'Master1 Informatique', 'UBO Brest', 'SLV', 'levailla', NULL, NULL, NULL, NULL, 'O'),
('20103526', '2004-2005', 'CILI3.1', '200056318', 'F', 'Kerjean', 'Virginie', '1981-03-28 00:00:00', 'Brest', 'CEL', 'Franחaise', '06.62.35.78.79', NULL, 'virginie_kerjean@yahoo.fr', '199 rue du Commandant Drogou', '29200', 'Brest', 'France', '199 rue du Commandant Drogou', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'VIK', 'kerjeavi', NULL, NULL, NULL, NULL, 'O'),
('20103546', '2004-2005', 'CILI3.2', '200056321', 'F', 'Lemesle', 'Patricia', '1981-06-03 00:00:00', 'Morlaix', 'CEL', 'Franחaise', '06.13.66.36.01', '02.98.72.00.61', 'pat.lemesle@wanadoo.fr', '16 impasse de mouettes', '29600', 'Morlaix', 'France', '16 impasse de Mouettes', '29600', 'Morlaix', 'France', 'Master1 Informatique', 'UBO Brest', 'PAL', 'lemespa', NULL, NULL, NULL, NULL, 'O'),
('20168938', '2004-2005', 'CILI3.2', '200056322', 'H', 'Lucas', 'Stיphane', '1980-03-10 00:00:00', 'Lannion', 'CEL', 'Franחaise', '06.23.39.47.52', '02.96.37.74.92', 'stephane-joel.lucas@laposte.net', '3 rue Lavoisier', '22300', 'Lannion', 'France', '3 rue Lavoisier', '22300', 'Lannion', 'France', 'Master1 Informatique', 'UBO Brest', 'SLU', 'lucasste', NULL, NULL, NULL, NULL, 'O'),
('361245', '2004-2005', 'CILI3.2', '200056312', 'H', 'Troncal', 'Yannick', '1979-06-04 00:00:00', 'Angouleme', 'CEL', 'Franחaise', '06.82.20.99.71', NULL, 'ytroncal@yahoo.fr', '17 rue Kerabecam', '29200', 'Brest', 'France', '17 rue Kerabecam', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'YAT', 'troncaya', NULL, NULL, NULL, NULL, 'O'),
('6589', '2004-2005', 'CILI3.2', '200056312', 'F', 'Arnaldi', 'Solenn', '1980-03-19 00:00:00', 'Guingamp', 'CEL', 'Franחaise', '06.88.55.78.97', NULL, 'solenn.arnaldi@wanadoo.fr', '17 rue Laכnnec', '29200', 'Brest', 'France', '17 rue Laכnnec', '29200', 'Brest', 'France', 'Master1 Informatique', 'UBO Brest', 'SOA', 'arnaldso', NULL, NULL, NULL, NULL, 'O'),
('6816', '2005-2006', 'CILI4.2', '9308691R', 'H', 'Decourchelle', 'Antonin', '1974-04-13 00:00:00', 'Blois (41)', 'CEL', 'Franחaise', '06.63.90.96.36', NULL, 'antonin.decourchelle@gmail.com', 'Keriars', '29280', 'Plouzanי', 'France', 'Keriars', '29280', 'Plouzanי', 'France', 'Master1 Informatique', 'UBO Brest', 'AND', 'decouran', NULL, NULL, NULL, NULL, 'O'),
('7', '2005-2006', 'CILI4.1', '20304099', 'H', 'Barzic', 'Ronan', '1982-08-28 00:00:00', 'Pont-L\'Abbe', 'CEL', 'Franחaise', '06.71.18.27.02', NULL, 'rbarzic@hotmail.com', '35 rue Turenne', '29200', 'Brest', 'France', '5 rue de Coat bihan', '29900', 'Concarneau', 'France', 'Master1 Informatique', 'UBO Brest', 'ROB', 'barzicro', NULL, NULL, NULL, NULL, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `ID_EVALUATION` bigint(20) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `CODE_FORMATION` varchar(8) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `CODE_UE` varchar(8) NOT NULL,
  `CODE_EC` varchar(8) DEFAULT NULL COMMENT 'Code de l''Elיment Constitutif (Ex. : SD pour Serveur de Donnיes dans l''UE PSI',
  `NO_EVALUATION` tinyint(4) NOT NULL,
  `ETAT` char(3) NOT NULL DEFAULT 'ELA',
  `PERIODE` varchar(64) DEFAULT NULL,
  `DEBUT_REPONSE` datetime NOT NULL,
  `FIN_REPONSE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`ID_EVALUATION`, `NO_ENSEIGNANT`, `CODE_FORMATION`, `ANNEE_PRO`, `CODE_UE`, `CODE_EC`, `NO_EVALUATION`, `ETAT`, `PERIODE`, `DEBUT_REPONSE`, `FIN_REPONSE`) VALUES
(1, 1, 'M2DOSI', '2006-2007', 'PSI', 'SD', 1, 'ELA', 'printemps', '2007-01-06 00:00:00', '2007-06-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_entreprise`
--

CREATE TABLE `evaluation_entreprise` (
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `DATE_MAJ` datetime NOT NULL DEFAULT sysdate(),
  `ETAT` varchar(3) NOT NULL DEFAULT 'EC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation_entreprise`
--

INSERT INTO `evaluation_entreprise` (`ANNEE_PRO`, `NO_ETUDIANT_NAT`, `DATE_MAJ`, `ETAT`) VALUES
('2005-2006', '1492057895', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1492092540', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1493003704', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1493010305', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1496024035', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1499067588', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1499110659', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '1893029650', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '6816', '2006-10-03 00:00:00', 'EC'),
('2005-2006', '7', '2006-10-03 00:00:00', 'EC');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `CODE_FORMATION` varchar(8) NOT NULL,
  `DIPLOME` varchar(3) NOT NULL,
  `N0_ANNEE` tinyint(4) NOT NULL DEFAULT 1,
  `NOM_FORMATION` varchar(64) NOT NULL,
  `DOUBLE_DIPLOME` char(1) NOT NULL,
  `DEBUT_HABILITATION` datetime DEFAULT NULL COMMENT 'Date de dיbut de l''habilitation courante',
  `FIN_HABILITATION` datetime DEFAULT NULL COMMENT 'Date de fin de l''habilitation courante'
) ;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`CODE_FORMATION`, `DIPLOME`, `N0_ANNEE`, `NOM_FORMATION`, `DOUBLE_DIPLOME`, `DEBUT_HABILITATION`, `FIN_HABILITATION`) VALUES
('L3INFO', 'L', 3, 'Licence d\'Informatique', 'N', '2012-09-01 00:00:00', '2016-09-01 00:00:00'),
('M1TIIL', 'M', 1, 'Master Technologie de l\'Information et Ingיnierie Logiciel', 'N', '2012-09-01 00:00:00', '2016-09-01 00:00:00'),
('M2DOSI', 'M', 2, 'Master Dיveloppement א l\'Offshore des Systטmes d\'Information', 'O', '2012-09-01 00:00:00', '2016-09-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notation_stage`
--

CREATE TABLE `notation_stage` (
  `NO_BAREME` double NOT NULL,
  `COEFF_ENT` double NOT NULL,
  `COEFF_RAPPORT` double NOT NULL,
  `COEFF_SOUTENANCE` double NOT NULL,
  `DATE_CREATION` datetime NOT NULL DEFAULT sysdate(),
  `ETAT_BAREME` varchar(3) NOT NULL DEFAULT 'ELA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notation_stage`
--

INSERT INTO `notation_stage` (`NO_BAREME`, `COEFF_ENT`, `COEFF_RAPPORT`, `COEFF_SOUTENANCE`, `DATE_CREATION`, `ETAT_BAREME`) VALUES
(1, 0, 0, 0, '2006-10-03 00:00:00', 'ELA'),
(2, 0, 0, 0, '2006-10-03 00:00:00', 'ARC'),
(3, 0, 0, 0, '2006-10-03 00:00:00', 'APP');

-- --------------------------------------------------------

--
-- Table structure for table `note_entreprise`
--

CREATE TABLE `note_entreprise` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `CRITE_ID` double NOT NULL,
  `CODN_ID` double NOT NULL,
  `COMMENTAIRE` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `note_entreprise`
--

INSERT INTO `note_entreprise` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`, `CRITE_ID`, `CODN_ID`, `COMMENTAIRE`) VALUES
('1492057895', '2005-2006', 1, 1, NULL),
('1492092540', '2005-2006', 1, 1, NULL),
('1493003704', '2005-2006', 1, 1, NULL),
('1493010305', '2005-2006', 1, 1, NULL),
('1496024035', '2005-2006', 1, 1, NULL),
('1499067588', '2005-2006', 1, 1, NULL),
('1499110659', '2005-2006', 1, 1, NULL),
('1893029650', '2005-2006', 1, 1, NULL),
('6816', '2005-2006', 1, 1, NULL),
('7', '2005-2006', 1, 1, NULL),
('1492057895', '2005-2006', 2, 1, NULL),
('1492092540', '2005-2006', 2, 1, NULL),
('1493003704', '2005-2006', 2, 1, NULL),
('1493010305', '2005-2006', 2, 1, NULL),
('1496024035', '2005-2006', 2, 1, NULL),
('1499067588', '2005-2006', 2, 1, NULL),
('1499110659', '2005-2006', 2, 1, NULL),
('1893029650', '2005-2006', 2, 1, NULL),
('6816', '2005-2006', 2, 1, NULL),
('7', '2005-2006', 2, 1, NULL),
('1492057895', '2005-2006', 3, 1, NULL),
('1492092540', '2005-2006', 3, 1, NULL),
('1493003704', '2005-2006', 3, 1, NULL),
('1493010305', '2005-2006', 3, 1, NULL),
('1496024035', '2005-2006', 3, 1, NULL),
('1499067588', '2005-2006', 3, 1, NULL),
('1499110659', '2005-2006', 3, 1, NULL),
('1893029650', '2005-2006', 3, 1, NULL),
('6816', '2005-2006', 3, 1, NULL),
('7', '2005-2006', 3, 4, NULL),
('1492057895', '2005-2006', 4, 1, NULL),
('1492092540', '2005-2006', 4, 1, NULL),
('1493003704', '2005-2006', 4, 1, NULL),
('1493010305', '2005-2006', 4, 1, NULL),
('1496024035', '2005-2006', 4, 1, NULL),
('1499067588', '2005-2006', 4, 1, NULL),
('1499110659', '2005-2006', 4, 1, NULL),
('1893029650', '2005-2006', 4, 1, NULL),
('6816', '2005-2006', 4, 1, NULL),
('7', '2005-2006', 4, 4, NULL),
('1492057895', '2005-2006', 5, 1, NULL),
('1492092540', '2005-2006', 5, 1, NULL),
('1493003704', '2005-2006', 5, 1, NULL),
('1493010305', '2005-2006', 5, 1, NULL),
('1496024035', '2005-2006', 5, 1, NULL),
('1499067588', '2005-2006', 5, 1, NULL),
('1499110659', '2005-2006', 5, 1, NULL),
('1893029650', '2005-2006', 5, 1, NULL),
('6816', '2005-2006', 5, 1, NULL),
('7', '2005-2006', 5, 2, NULL),
('1492057895', '2005-2006', 6, 1, NULL),
('1492092540', '2005-2006', 6, 1, NULL),
('1493003704', '2005-2006', 6, 1, NULL),
('1493010305', '2005-2006', 6, 1, NULL),
('1496024035', '2005-2006', 6, 1, NULL),
('1499067588', '2005-2006', 6, 1, NULL),
('1499110659', '2005-2006', 6, 1, NULL),
('1893029650', '2005-2006', 6, 1, NULL),
('6816', '2005-2006', 6, 1, NULL),
('7', '2005-2006', 6, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offre_stage`
--

CREATE TABLE `offre_stage` (
  `NO_OFFRE` double NOT NULL,
  `NO_ENTREPRISE` double NOT NULL,
  `NO_OFFRE_ENTREPRISE` varchar(20) DEFAULT NULL COMMENT 'Rיfיrence du stage au sein de l''entreprise',
  `ANNEE_PRO` varchar(10) NOT NULL,
  `INTITULE` varchar(100) NOT NULL,
  `SUJET` varchar(255) NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DESCRIPTION` varchar(4000) DEFAULT NULL,
  `DUREE` varchar(30) NOT NULL,
  `ETAT_OFFRE` varchar(3) NOT NULL,
  `LIEU` varchar(80) NOT NULL,
  `NIVEAU_REQUIS` varchar(5) NOT NULL,
  `PERIODE` varchar(50) NOT NULL,
  `NOM_RESPONSABLE` varchar(50) NOT NULL,
  `PRENOM_RESPONSABLE` varchar(50) NOT NULL,
  `TEL_RESPONSABLE` varchar(20) DEFAULT NULL,
  `MAIL_RESPONSABLE` varchar(100) DEFAULT NULL,
  `REMUNERATION` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offre_stage`
--

INSERT INTO `offre_stage` (`NO_OFFRE`, `NO_ENTREPRISE`, `NO_OFFRE_ENTREPRISE`, `ANNEE_PRO`, `INTITULE`, `SUJET`, `DATE_CREATION`, `DESCRIPTION`, `DUREE`, `ETAT_OFFRE`, `LIEU`, `NIVEAU_REQUIS`, `PERIODE`, `NOM_RESPONSABLE`, `PRENOM_RESPONSABLE`, `TEL_RESPONSABLE`, `MAIL_RESPONSABLE`, `REMUNERATION`) VALUES
(1, 3, 'Sujet 1', '2005-2006', 'Systטme d\'information', 'ֹvolution d\'un Intranet de gestion de projet', '2006-10-03 00:00:00', 'Dans le cadre de son activitי Lannionaise, Teamlog mטne des projets de type TMA (Tierce Maintenance Applicative).Ce type de projet implique des engagements forts de la part de Teamlog sur la capacitי de ses יquipes א traiter les demandes des clients de maniטre trטs rיactive. Pour faciliter la traחabilitי des demandes et des actions, Teamlog Lannion a rיalisי un extranet א destination de ses collaborateurs et de ses clients pour rיpondre aux besoins de suivi.     Largement utilisי depuis 2 ans par l\'agence de Lannion, puis par les autres agences de Teamlog Ouest, une nouvelle version est prיvue pour la fin de l\'יtי 2006.Les יvolutions apportיes porteront sur le calcule puis l\'affichage de statistiques, l\'יmission de rapports, l\'ajout de fonction de suivi de projet, l\'ajout de fonction de suivi de versions des applications gיrיes par Teamlog.     L\'application est basיe sur des environnements Open Source. La rיalisation des יvolutions nיcessitera probablement la mise en Suvre de librairies type JGraph et/ou JChart. Le stage sera menי en mode projet : spיcifications, conception, rיalisation et tests au sein des יquipes de l\'agence de Lannion.        Technologies mises en Suvre : Java/J2EE, Tomcat, Struts, Eclipse, MySQL, XSL-FO', '6 mois', 'OUV', 'Lannion', 'BAC+5', 'Avril א Septembre', 'Raveneau', 'Olivier', '02.96.48.55.09', 'olivier.raveneau@teamlog.com', '600'),
(2, 3, 'Sujet 2', '2005-2006', 'VoIP', 'Rיalisation de briques rיutilisables pour des services VoIP', '2006-10-03 00:00:00', 'Dans le cadre de son activitי Lannionaise, Teamlog rיalise pour ses clients des services basיs sur des solutions voix sur IP destinי א des יquipements types LiveBox. Ces services nיcessitent la mise en Suvre de composants logiciels pour l\'יmission de vidיo, d\'images, de texte et de son sur protocole RTP avec une signalisation SIP. Teamlog souhaite faire rיaliser une bibliothטque de composants Java rיutilisables par ces diffיrents services. Rיalisי en mode projet (spיcifications, conception ...) au sein des יquipes de Teamlog Lannion, le stage sera organisי avec phase de montיe en compיtence, prototypage et dיveloppement et avec le soutien des experts locaux. Technologies mises en Suvre : Java/J2EE, JMF (Java Media Framework), SIP-Servlet, Eclipse', '6 mois', 'OUV', 'Lannion', 'BAC+5', 'Avril א Septembre', 'Raveneau', 'Olivier', '02.96.48.55.09', 'olivier.raveneau@teamlog.com', '600'),
(3, 8, 'WEST/NAN/MCSE/STG', '2004-2005', 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL', 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL', '2006-10-03 00:00:00', 'Atos Origin est l\'un des principaux acteurs dans les domaines des services informatiques. Sa mission est de traduire la vision stratיgique de ses clients en rיsultats par une meilleure utilisation de solutions de conseil, d\'intיgration et d\'infogיrance. Implantי dans 40 pays א travers le monde, Atos Origin rיalise un chiffre d\'affaires annuel de plus de 5 milliards d\'euros avec un effectif supיrieur א 46000 personnes. Atos Origin est le partenaire mondial des Jeux Olympiques. Au c�ur du groupe Atos Origin, l\'activitי Systems Integration a pour vocation d\'imaginer, de dיvelopper et de maintenir les systטmes d\'information des entreprises. Le stage s\'inscrit dans le cadre du projet PFE Sycops (Systטme de Combat Commun Barracuda et SNLE SG4) rיalisי par Atos Origin pour le compte de la DCN de Brest (secteur dיfense). Ce projet recouvre l\'יtude, la rיalisation et l\'assistance א la mise en phase opיrationnelle d\'un simulateur d\'entraמnement et d\'instruction pour le personnel navigant א bord des sous-marins nouvelle gיnיration. Les entraמnements propres aux יlטves, s\'effectuent de maniטre individuelle ou par יquipe sur la base de scיnarios conduits par un ou plusieurs instructeurs. Les principaux domaines didacticiels sont la dיtection sous-marine passive, la classification, le management de combat, le lancement des armes ainsi que le dיbriefing. Intיgrי au sein d\'une יquipe, vous serez chargי, א partir des rיsultats d\'יtudes de modיlisation (Together sous Eclipse), de maquetter les applications ou les composants associיs de type interface utilisateurs et techniques.Les outils qui seront mis en �uvre dans le cadre du stage reposent principalement sur l\'atelier de dיveloppement Java et notamment Eclipse.L\'outil de gestion de configuration sera CVS sous Eclipse.Le domaine fonctionnel concerne principalement la simulation temps rיel.> Objectif pיdagogique :A l\'issue de cette mission, vous aurez dיveloppי une bonne approche sur le cycle de vie d\'un projet rיalisי au forfait et en יquipe intיgrיe (Atos Origin et Thalטs Services).La mission se dיroulera א Brest. Le projet est rיalisי en collaboration avec Thalטs services Brest.', '6 mois', 'OUV', 'Brest', 'BAC+5', 'Fיvrier א Septembre (selon יcole)', 'DRH', 'Service Recrutement', NULL, NULL, '0'),
(4, 8, 'WEST/NAN/MCSE/STG', '2005-2006', 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL 2006', 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL 2006', '2006-09-03 00:00:00', 'Atos Origin est l\'un des principaux acteurs dans les domaines des services informatiques. Sa mission est de traduire la vision stratיgique de ses clients en rיsultats par une meilleure utilisation de solutions de conseil, d\'intיgration et d\'infogיrance. Implantי dans 40 pays א travers le monde, Atos Origin rיalise un chiffre d\'affaires annuel de plus de 5 milliards d\'euros avec un effectif supיrieur א 46000 personnes. Atos Origin est le partenaire mondial des Jeux Olympiques. Au c�ur du groupe Atos Origin, l\'activitי Systems Integration a pour vocation d\'imaginer, de dיvelopper et de maintenir les systטmes d\'information des entreprises. Le stage s\'inscrit dans le cadre du projet PFE Sycops (Systטme de Combat Commun Barracuda et SNLE SG4) rיalisי par Atos Origin pour le compte de la DCN de Brest (secteur dיfense). Ce projet recouvre l\'יtude, la rיalisation et l\'assistance א la mise en phase opיrationnelle d\'un simulateur d\'entraמnement et d\'instruction pour le personnel navigant א bord des sous-marins nouvelle gיnיration. Les entraמnements propres aux יlטves, s\'effectuent de maniטre individuelle ou par יquipe sur la base de scיnarios conduits par un ou plusieurs instructeurs. Les principaux domaines didacticiels sont la dיtection sous-marine passive, la classification, le management de combat, le lancement des armes ainsi que le dיbriefing. Intיgrי au sein d\'une יquipe, vous serez chargי, א partir des rיsultats d\'יtudes de modיlisation (Together sous Eclipse), de maquetter les applications ou les composants associיs de type interface utilisateurs et techniques.Les outils qui seront mis en �uvre dans le cadre du stage reposent principalement sur l\'atelier de dיveloppement Java et notamment Eclipse.L\'outil de gestion de configuration sera CVS sous Eclipse.Le domaine fonctionnel concerne principalement la simulation temps rיel.> Objectif pיdagogique :A l\'issue de cette mission, vous aurez dיveloppי une bonne approche sur le cycle de vie d\'un projet rיalisי au forfait et en יquipe intיgrיe (Atos Origin et Thalטs Services).La mission se dיroulera א Brest. Le projet est rיalisי en collaboration avec Thalטs services Brest.', '6 mois', 'OUV', 'Brest', 'BAC+5', 'Fיvrier א Septembre (selon יcole)', 'DRH', 'Service Recrutement', NULL, NULL, '0'),
(5, 1, 'LEJ/SPF/REN', '2005-2006', 'CHEF DE PROJET DE DEPLOIEMENT INFRASTRUCTURES TELECOM', 'CHEF DE PROJET DE DEPLOIEMENT INFRASTRUCTURES TELECOM', '2006-10-03 00:00:00', 'Dans le cadre de ses activitיs auprטs des Opיrateurs de Tיlיcommunication, Thalטs Services souhaite renforcer ses יquipes de dיploiement dinfrastructures. Vous assurerez la coordination du dיploiement dinfrastructures tיlיcom (Fibre Optique, FH, WIFI, WIMAX, &) sur le territoire national. Chef de projet expיrimentי, vous justifiez d\'une expיrience significative dans le dיploiement et la coordination de prestataires de services. Vous avez une bonne connaissance des infrastructures dOpיrateur Tיlיcom (TRANS, OPTIQUE, IP&). Rigueur, diplomatie et capacitיs relationnelles sont des qualitיs qui feront la diffיrence. Merci denvoyer votre candidature par e-mail א ladresse suivante : agence.rennes@thalesgroup.com.', '6 mois', 'OUV', 'Brest', 'BAC+5', 'Avril א Septembre', 'THALES SERVICES', 'DRH', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `poste_entreprise`
--

CREATE TABLE `poste_entreprise` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `NO_ENTREPRISE` double NOT NULL,
  `FONCTION` varchar(5) NOT NULL,
  `DATE_EMBAUCHE` datetime NOT NULL,
  `MOYEN_OBTENTION` varchar(3) NOT NULL,
  `SERVICE` varchar(5) DEFAULT NULL COMMENT 'Service ou dיpartement dans l''entreprise',
  `BRUT_ANNUEL` int(11) DEFAULT NULL COMMENT 'Salaire brut annuel du diplפmי'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poste_entreprise`
--

INSERT INTO `poste_entreprise` (`NO_ETUDIANT_NAT`, `NO_ENTREPRISE`, `FONCTION`, `DATE_EMBAUCHE`, `MOYEN_OBTENTION`, `SERVICE`, `BRUT_ANNUEL`) VALUES
('18986523', 7, 'IE', '2006-01-01 00:00:00', 'SPO', 'EP', 40000),
('18986523', 8, 'IE', '2005-09-01 00:00:00', 'STA', 'EP', 35000),
('20168938', 3, 'IE', '2005-09-01 00:00:00', 'STA', 'EP', 45000),
('6589', 6, 'IE', '2005-09-01 00:00:00', 'STA', 'EP', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `ANNEE_PRO` varchar(10) NOT NULL,
  `CODE_FORMATION` varchar(8) DEFAULT NULL,
  `NO_ENSEIGNANT` int(11) DEFAULT NULL,
  `SIGLE_PRO` varchar(5) NOT NULL,
  `NB_ETU_SOUHAITE` smallint(6) NOT NULL,
  `ETAT_PRESELECTION` varchar(3) NOT NULL,
  `DATE_RENTREE` datetime DEFAULT NULL COMMENT 'Date א laquelle les יtudiants font leur rentrיe',
  `LIEU_RENTREE` varchar(255) DEFAULT NULL COMMENT 'Lieu oש vont ךtre accueilli les יtudiants',
  `DATE_REPONSE_LP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) א laquelle les candidats sur liste principale doivent donnיe leur rיponse',
  `COMMENTAIRE` varchar(255) DEFAULT NULL COMMENT 'commentaire sur la promotion',
  `DATE_REPONSE_LALP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) א laquelle les candidats passיs de la liste d''attente א la liste principale doivent donnיe leur rיponse',
  `PROCESSUS_STAGE` varchar(5) DEFAULT 'RECH' COMMENT 'Reprיsente la consultabilitי de donnיes',
  `NO_EVALUATION` double DEFAULT NULL,
  `NO_BAREME` double DEFAULT NULL
) ;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`ANNEE_PRO`, `CODE_FORMATION`, `NO_ENSEIGNANT`, `SIGLE_PRO`, `NB_ETU_SOUHAITE`, `ETAT_PRESELECTION`, `DATE_RENTREE`, `LIEU_RENTREE`, `DATE_REPONSE_LP`, `COMMENTAIRE`, `DATE_REPONSE_LALP`, `PROCESSUS_STAGE`, `NO_EVALUATION`, `NO_BAREME`) VALUES
('2004-2005', NULL, 1, 'CILI3', 10, 'TER', '2004-09-13 00:00:00', 'LC117A', '2004-07-23 00:00:00', NULL, '2004-08-13 00:00:00', 'RECH', NULL, NULL),
('2005-2006', NULL, 1, 'CILI4', 12, 'TER', '2005-09-19 00:00:00', 'LC117A', '2005-07-14 00:00:00', NULL, '2005-08-13 00:00:00', 'EC', NULL, NULL),
('2006-2007', NULL, 1, 'RSOFT', 12, 'ENC', '2006-09-18 00:00:00', 'LC117A', '2006-07-14 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualificatif`
--

CREATE TABLE `qualificatif` (
  `ID_QUALIFICATIF` bigint(20) NOT NULL,
  `MAXIMAL` varchar(16) NOT NULL,
  `MINIMAL` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualificatif`
--

INSERT INTO `qualificatif` (`ID_QUALIFICATIF`, `MAXIMAL`, `MINIMAL`) VALUES
(1, 'Pauvre', 'Riche'),
(2, 'Faible', 'Fort'),
(3, 'Facile', 'Difficile'),
(4, 'Insatisfaisant', 'Satisfaisant'),
(5, 'Lent', 'Rapise'),
(6, 'Peu clair', 'Trיs clair');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ID_QUESTION` bigint(20) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'Numיro unique de l''enseignant',
  `ID_QUALIFICATIF` bigint(20) NOT NULL,
  `INTITULֹ` varchar(64) NOT NULL
) ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ID_QUESTION`, `TYPE`, `NO_ENSEIGNANT`, `ID_QUALIFICATIF`, `INTITULֹ`) VALUES
(1, 'QUS', 1, 1, 'Question test');

-- --------------------------------------------------------

--
-- Table structure for table `question_evaluation`
--

CREATE TABLE `question_evaluation` (
  `ID_QUESTION_EVALUATION` bigint(20) NOT NULL,
  `ID_RUBRIQUE_EVALUATION` bigint(20) NOT NULL,
  `ID_QUESTION` bigint(20) DEFAULT NULL,
  `ID_QUALIFICATIF` bigint(20) DEFAULT NULL,
  `ORDRE` tinyint(4) NOT NULL,
  `INTITULE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_evaluation`
--

INSERT INTO `question_evaluation` (`ID_QUESTION_EVALUATION`, `ID_RUBRIQUE_EVALUATION`, `ID_QUESTION`, `ID_QUALIFICATIF`, `ORDRE`, `INTITULE`) VALUES
(1, 1, 1, 1, 1, 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `reponse_evaluation`
--

CREATE TABLE `reponse_evaluation` (
  `ID_REPONSE_EVALUATION` bigint(20) NOT NULL,
  `ID_EVALUATION` bigint(20) NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) DEFAULT NULL COMMENT 'Numיro National de l''יtudiant',
  `COMMENTAIRE` varchar(512) DEFAULT NULL,
  `NOM` varchar(32) DEFAULT NULL,
  `PRENOM` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reponse_evaluation`
--

INSERT INTO `reponse_evaluation` (`ID_REPONSE_EVALUATION`, `ID_EVALUATION`, `NO_ETUDIANT_NAT`, `COMMENTAIRE`, `NOM`, `PRENOM`) VALUES
(1, 1, '142398', 'TEST', 'Mavic', 'Olivier');

-- --------------------------------------------------------

--
-- Table structure for table `reponse_question`
--

CREATE TABLE `reponse_question` (
  `ID_REPONSE_QUESTION` bigint(20) NOT NULL,
  `ID_QUESTION_EVALUATION` bigint(20) NOT NULL,
  `POSITIONNEMENT` decimal(38,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reponse_question`
--

INSERT INTO `reponse_question` (`ID_REPONSE_QUESTION`, `ID_QUESTION_EVALUATION`, `POSITIONNEMENT`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rubrique`
--

CREATE TABLE `rubrique` (
  `ID_RUBRIQUE` bigint(20) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DESIGNATION` varchar(32) NOT NULL,
  `ORDRE` double DEFAULT NULL,
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'Numיro unique de l''enseignant'
) ;

--
-- Dumping data for table `rubrique`
--

INSERT INTO `rubrique` (`ID_RUBRIQUE`, `TYPE`, `DESIGNATION`, `ORDRE`, `NO_ENSEIGNANT`) VALUES
(1, 'RBP', 'Designation1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rubrique_evaluation`
--

CREATE TABLE `rubrique_evaluation` (
  `ID_RUBRIQUE_EVALUATION` bigint(20) NOT NULL,
  `ID_EVALUATION` bigint(20) NOT NULL,
  `ID_RUBRIQUE` bigint(20) DEFAULT NULL,
  `ORDRE` tinyint(4) NOT NULL,
  `DESIGNATION` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rubrique_evaluation`
--

INSERT INTO `rubrique_evaluation` (`ID_RUBRIQUE_EVALUATION`, `ID_EVALUATION`, `ID_RUBRIQUE`, `ORDRE`, `DESIGNATION`) VALUES
(1, 1, 1, 1, 'Designation1');

-- --------------------------------------------------------

--
-- Table structure for table `rubrique_question`
--

CREATE TABLE `rubrique_question` (
  `ID_RUBRIQUE` bigint(20) NOT NULL,
  `ID_QUESTION` bigint(20) NOT NULL,
  `ORDRE` decimal(38,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rubrique_question`
--

INSERT INTO `rubrique_question` (`ID_RUBRIQUE`, `ID_QUESTION`, `ORDRE`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soutenance`
--

CREATE TABLE `soutenance` (
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_SESSION` double NOT NULL,
  `NO_ENSEIGNANT_RESPONSABLE` int(11) NOT NULL,
  `NO_ENSEIGNANT_ASSESSEUR` int(11) NOT NULL,
  `DATE_SOUTENANCE` datetime NOT NULL,
  `PLAGE_HORAIRE` varchar(50) NOT NULL,
  `SALLE` varchar(12) NOT NULL DEFAULT 'LC117A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soutenance`
--

INSERT INTO `soutenance` (`ANNEE_PRO`, `NO_SESSION`, `NO_ENSEIGNANT_RESPONSABLE`, `NO_ENSEIGNANT_ASSESSEUR`, `DATE_SOUTENANCE`, `PLAGE_HORAIRE`, `SALLE`) VALUES
('2004-2005', 1, 2, 1, '2005-09-01 00:00:00', '9h30 א 12h', 'C 117 A'),
('2005-2006', 1, 1, 2, '2006-08-31 00:00:00', '9h30 א 12h', 'C 117 A'),
('2004-2005', 2, 1, 2, '2005-09-01 00:00:00', '14h א 16h', 'C 117 A'),
('2005-2006', 2, 2, 1, '2006-09-01 00:00:00', '14h א 16h', 'C 117 A');

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `NO_ENTREPRISE` double NOT NULL,
  `NO_OFFRE` double DEFAULT NULL,
  `NO_CONTACT_ILI` double NOT NULL,
  `INTITULE` varchar(200) NOT NULL,
  `SUJET` varchar(200) NOT NULL,
  `DATE_DEB` datetime NOT NULL,
  `DATE_FIN` datetime NOT NULL,
  `LIEU` varchar(50) NOT NULL,
  `ETAT_STAGE` varchar(3) NOT NULL DEFAULT 'ELA',
  `DESCRIPTION` varchar(4000) DEFAULT NULL,
  `ETAT_CONVENTION` varchar(3) DEFAULT 'ELA' COMMENT 'Reprיsente l''יtat de la convention de stage',
  `DATE_SIGNATURE_CONV` datetime DEFAULT NULL COMMENT 'Date de signature de la convention',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'Numיro unique de l''enseignant',
  `COMMENTAIRE_TUTEUR` varchar(255) DEFAULT NULL,
  `DATE_RECEPTION_RAPPORT` datetime DEFAULT NULL,
  `NOTE_ENTREPRISE` double DEFAULT NULL COMMENT 'Champ calculי',
  `NOTE_RAPPORT` double DEFAULT NULL COMMENT 'Nombre avec 2 dיcimales max.',
  `NO_SESSION` double DEFAULT NULL,
  `NOTE_SOUTENANCE` double DEFAULT NULL COMMENT 'Nombre avec 2 dיcimales max.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`ANNEE_PRO`, `NO_ETUDIANT_NAT`, `NO_ENTREPRISE`, `NO_OFFRE`, `NO_CONTACT_ILI`, `INTITULE`, `SUJET`, `DATE_DEB`, `DATE_FIN`, `LIEU`, `ETAT_STAGE`, `DESCRIPTION`, `ETAT_CONVENTION`, `DATE_SIGNATURE_CONV`, `NO_ENSEIGNANT`, `COMMENTAIRE_TUTEUR`, `DATE_RECEPTION_RAPPORT`, `NOTE_ENTREPRISE`, `NOTE_RAPPORT`, `NO_SESSION`, `NOTE_SOUTENANCE`) VALUES
('2004-2005', '142398', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1492057895', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1492092540', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1493003704', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1493010305', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1496024035', 3, 2, 1, 'VoIP', 'Rיalisation de briques rיutilisables pour des services VoIP', '2005-04-04 00:00:00', '2005-08-31 00:00:00', 'Lannion', 'EC', 'Dans le cadre de son activitי Lannionaise, Teamlog rיalise pour ses clients des services basיs sur des solutions voix sur IP destinי א des יquipements types LiveBox. Ces services nיcessitent la mise en Suvre de composants logiciels pour l\'יmission de vidיo, d\'images, de texte et de son sur protocole RTP avec une signalisation SIP. Teamlog souhaite faire rיaliser une bibliothטque de composants Java rיutilisables par ces diffיrents services. Rיalisי en mode projet (spיcifications, conception ...) au sein des יquipes de Teamlog Lannion, le stage sera organisי avec phase de montיe en compיtence, prototypage et dיveloppement et avec le soutien des experts locaux. Technologies mises en Suvre : Java/J2EE, JMF (Java Media Framework), SIP-Servlet, Eclipse', 'ELA', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL),
('2005-2006', '1499067588', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1499110659', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '156523', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '164598', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '16894563', 8, NULL, 9, 'Systטme d\'information', 'Crיer un systטme d\'information pour gיrer l\'יchange de document au sein de la sociיtי', '2005-04-04 00:00:00', '2005-09-30 00:00:00', 'Brest', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '1893029650', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '18986523', 8, 3, 8, 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL', 'STAGE MAQUETTAGE DE COMPOSANTS D\'UN SIMULATEUR D\'ENTRAINEMENT NAVAL', '2005-04-04 00:00:00', '2005-08-31 00:00:00', 'Brest', 'EC', 'Atos Origin est l\'un des principaux acteurs dans les domaines des services informatiques. Sa mission est de traduire la vision stratיgique de ses clients en rיsultats par une meilleure utilisation de solutions de conseil, d\'intיgration et d\'infogיrance. Implantי dans 40 pays א travers le monde, Atos Origin rיalise un chiffre d\'affaires annuel de plus de 5 milliards d\'euros avec un effectif supיrieur א 46000 personnes. Atos Origin est le partenaire mondial des Jeux Olympiques. Au cSur du groupe Atos Origin, l\'activitי Systems Integration a pour vocation d\'imaginer, de dיvelopper et de maintenir les systטmes d\'information des entreprises. Le stage s\'inscrit dans le cadre du projet PFE Sycops (Systטme de Combat Commun Barracuda et SNLE SG4) rיalisי par Atos Origin pour le compte de la DCN de Brest (secteur dיfense). Ce projet recouvre l\'יtude, la rיalisation et l\'assistance א la mise en phase opיrationnelle d\'un simulateur d\'entraמnement et d\'instruction pour le personnel navigant א bord des sous-marins nouvelle gיnיration. Les entraמnements propres aux יlטves, s\'effectuent de maniטre individuelle ou par יquipe sur la base de scיnarios conduits par un ou plusieurs instructeurs. Les principaux domaines didacticiels sont la dיtection sous-marine passive, la classification, le management de combat, le lancement des armes ainsi que le dיbriefing. Intיgrי au sein d\'une יquipe, vous serez chargי, א partir des rיsultats d\'יtudes de modיlisation (Together sous Eclipse), de maquetter les applications ou les composants associיs de type interface utilisateurs et techniques.Les outils qui seront mis en Suvre dans le cadre du stage reposent principalement sur l\'atelier de dיveloppement Java et notamment Eclipse.L\'outil de gestion de configuration sera CVS sous Eclipse.Le domaine fonctionnel concerne principalement la simulation temps rיel.> Objectif pיdagogique :A l\'issue de cette mission, vous aurez dיveloppי une bonne approche sur le cycle de vie d\'un projet rיalisי au forfait et en יquipe intיgrיe (Atos Origin et Thalטs Services).La mission se dיroulera א Brest. Le projet est rיalisי en collaboration avec Thalטs services Brest.', 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '20103526', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '20103546', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '20168938', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '361245', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2004-2005', '6589', 0, NULL, 0, 'Non Dיfini', 'Non Dיfini', '2012-10-10 00:00:00', '2012-10-10 00:00:00', 'Non Dיfini', 'ELA', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '6816', 0, NULL, 0, 'Non defini', 'Non Defini', '2006-10-03 00:00:00', '2005-10-03 00:00:00', 'Non Defini', 'EC', NULL, 'ELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2005-2006', '7', 2, NULL, 2, 'Adaptation d\'un processus de fabrication d\'un progiciel au sein d\'une PME', 'Adaptation d\'un processus de fabrication d\'un progiciel au sein d\'une PME', '2005-04-04 00:00:00', '2005-08-31 00:00:00', 'Concarneau', 'EC', NULL, 'ELA', NULL, 1, NULL, NULL, 11, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `structure_evaluation`
--

CREATE TABLE `structure_evaluation` (
  `NO_EVALUATION` double NOT NULL,
  `DATE_CREATION` datetime NOT NULL DEFAULT sysdate(),
  `ETAT` varchar(3) NOT NULL DEFAULT 'ELA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `structure_evaluation`
--

INSERT INTO `structure_evaluation` (`NO_EVALUATION`, `DATE_CREATION`, `ETAT`) VALUES
(1, '2006-10-03 00:00:00', 'APP'),
(2, '2006-10-03 00:00:00', 'ARC'),
(3, '2006-10-03 00:00:00', 'ELA');

-- --------------------------------------------------------

--
-- Table structure for table `unite_enseignement`
--

CREATE TABLE `unite_enseignement` (
  `CODE_FORMATION` varchar(8) NOT NULL,
  `CODE_UE` varchar(8) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `DESIGNATION` varchar(64) NOT NULL,
  `SEMESTRE` char(3) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT 'Description de l''UE',
  `NBH_CM` decimal(38,0) DEFAULT NULL COMMENT 'Nb d''heures de CM prיvues dans l''UE',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de TD prיvuesdans l''UE',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de TP prיvues dans l''UE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Unitי d''Enseignement';

--
-- Dumping data for table `unite_enseignement`
--

INSERT INTO `unite_enseignement` (`CODE_FORMATION`, `CODE_UE`, `NO_ENSEIGNANT`, `DESIGNATION`, `SEMESTRE`, `DESCRIPTION`, `NBH_CM`, `NBH_TD`, `NBH_TP`) VALUES
('M2DOSI', 'IDL', 1, 'Ingיnierie de Dיveloppement Logiciel', '10', NULL, 20, 20, 20),
('M2DOSI', 'ISI', 1, 'Ingיnierie des Systטmes d’Information', '9', NULL, 20, 20, 20),
('M2DOSI', 'PSI', 2, 'Programmation des Systטmes d’Information', '9', NULL, NULL, NULL, 48);

-- --------------------------------------------------------

--
-- Table structure for table `visite_stage`
--

CREATE TABLE `visite_stage` (
  `NO_ETUDIANT_NAT` varchar(50) NOT NULL,
  `ANNEE_PRO` varchar(10) NOT NULL,
  `NO_CONTACT_ILI` double NOT NULL,
  `TYPE_CONTACT` varchar(3) NOT NULL,
  `DATE_PREVISIONNELLE` datetime NOT NULL,
  `HEURE_PREVISIONNELLE` varchar(20) DEFAULT NULL,
  `DATE_EFFECTIVE` datetime DEFAULT NULL COMMENT 'Date et heure effective du contact',
  `HEURE_EFFECTIVE` varchar(20) DEFAULT NULL,
  `DUREE` varchar(20) DEFAULT NULL COMMENT 'durיe du contact en heures',
  `COMMENTAIRE_TUTEUR_UBO` longtext DEFAULT NULL COMMENT 'commentaire confidentiel du tuteur UBO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visite_stage`
--

INSERT INTO `visite_stage` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`, `NO_CONTACT_ILI`, `TYPE_CONTACT`, `DATE_PREVISIONNELLE`, `HEURE_PREVISIONNELLE`, `DATE_EFFECTIVE`, `HEURE_EFFECTIVE`, `DUREE`, `COMMENTAIRE_TUTEUR_UBO`) VALUES
('1496024035', '2005-2006', 1, 'ENT', '2006-08-18 00:00:00', NULL, '2006-08-30 00:00:00', NULL, '3 Heures', 'RAS'),
('16894563', '2004-2005', 9, 'ENT', '2005-08-18 00:00:00', NULL, '2005-08-30 00:00:00', NULL, '3 Heures', 'RAS'),
('18986523', '2004-2005', 8, 'ENT', '2005-08-18 00:00:00', NULL, '2005-08-30 00:00:00', NULL, '3 Heures', 'RAS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_code_note`
-- (See below for the actual view)
--
CREATE TABLE `v_code_note` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_diplome`
-- (See below for the actual view)
--
CREATE TABLE `v_diplome` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_domaine_activite`
-- (See below for the actual view)
--
CREATE TABLE `v_domaine_activite` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_convention`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_convention` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_evaluation`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_evaluation` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_evaluation_entreprise`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_evaluation_entreprise` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_offre`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_offre` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_stage`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_stage` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_etat_structure_eval`
-- (See below for the actual view)
--
CREATE TABLE `v_etat_structure_eval` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fonction`
-- (See below for the actual view)
--
CREATE TABLE `v_fonction` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_interlocuteur`
-- (See below for the actual view)
--
CREATE TABLE `v_interlocuteur` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_moyen_obtention_emploi`
-- (See below for the actual view)
--
CREATE TABLE `v_moyen_obtention_emploi` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_niveau_requis`
-- (See below for the actual view)
--
CREATE TABLE `v_niveau_requis` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_oui_non`
-- (See below for the actual view)
--
CREATE TABLE `v_oui_non` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_positionnement`
-- (See below for the actual view)
--
CREATE TABLE `v_positionnement` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_processus_stage`
-- (See below for the actual view)
--
CREATE TABLE `v_processus_stage` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_salle`
-- (See below for the actual view)
--
CREATE TABLE `v_salle` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_semestre`
-- (See below for the actual view)
--
CREATE TABLE `v_semestre` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_service`
-- (See below for the actual view)
--
CREATE TABLE `v_service` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_type_contact`
-- (See below for the actual view)
--
CREATE TABLE `v_type_contact` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_type_emploi`
-- (See below for the actual view)
--
CREATE TABLE `v_type_emploi` (
`CODE` varchar(240)
,`ABREVIATION` varchar(240)
,`SIGNIFICATION` varchar(240)
);

-- --------------------------------------------------------

--
-- Structure for view `v_code_note`
--
DROP TABLE IF EXISTS `v_code_note`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_code_note`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'CODE_NOTE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_diplome`
--
DROP TABLE IF EXISTS `v_diplome`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_diplome`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'DIPLOME' ;

-- --------------------------------------------------------

--
-- Structure for view `v_domaine_activite`
--
DROP TABLE IF EXISTS `v_domaine_activite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_domaine_activite`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'DOMAINE_ACTIVITE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_convention`
--
DROP TABLE IF EXISTS `v_etat_convention`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_convention`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_CONVENTION' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_evaluation`
--
DROP TABLE IF EXISTS `v_etat_evaluation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_evaluation`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_EVALUATION' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_evaluation_entreprise`
--
DROP TABLE IF EXISTS `v_etat_evaluation_entreprise`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_evaluation_entreprise`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_EVALUATION_ENTREPRISE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_offre`
--
DROP TABLE IF EXISTS `v_etat_offre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_offre`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_OFFRE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_stage`
--
DROP TABLE IF EXISTS `v_etat_stage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_stage`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_STAGE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_etat_structure_eval`
--
DROP TABLE IF EXISTS `v_etat_structure_eval`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_etat_structure_eval`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'ETAT_STRUCTURE_EVAL' ;

-- --------------------------------------------------------

--
-- Structure for view `v_fonction`
--
DROP TABLE IF EXISTS `v_fonction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fonction`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'FONCTION' ;

-- --------------------------------------------------------

--
-- Structure for view `v_interlocuteur`
--
DROP TABLE IF EXISTS `v_interlocuteur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_interlocuteur`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'INTERLOCUTEUR' ;

-- --------------------------------------------------------

--
-- Structure for view `v_moyen_obtention_emploi`
--
DROP TABLE IF EXISTS `v_moyen_obtention_emploi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_moyen_obtention_emploi`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'MOYEN_OBTENTION_EMPLOI' ;

-- --------------------------------------------------------

--
-- Structure for view `v_niveau_requis`
--
DROP TABLE IF EXISTS `v_niveau_requis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_niveau_requis`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'NIVEAU_REQUIS' ;

-- --------------------------------------------------------

--
-- Structure for view `v_oui_non`
--
DROP TABLE IF EXISTS `v_oui_non`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_oui_non`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'OUI_NON' ;

-- --------------------------------------------------------

--
-- Structure for view `v_positionnement`
--
DROP TABLE IF EXISTS `v_positionnement`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_positionnement`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'POSITIONNEMENT' ;

-- --------------------------------------------------------

--
-- Structure for view `v_processus_stage`
--
DROP TABLE IF EXISTS `v_processus_stage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_processus_stage`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'PROCESSUS_STAGE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_salle`
--
DROP TABLE IF EXISTS `v_salle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_salle`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'SALLE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_semestre`
--
DROP TABLE IF EXISTS `v_semestre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_semestre`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'SEMESTRE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_service`
--
DROP TABLE IF EXISTS `v_service`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'SERVICE' ;

-- --------------------------------------------------------

--
-- Structure for view `v_type_contact`
--
DROP TABLE IF EXISTS `v_type_contact`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_type_contact`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'TYPE_CONTACT' ;

-- --------------------------------------------------------

--
-- Structure for view `v_type_emploi`
--
DROP TABLE IF EXISTS `v_type_emploi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_type_emploi`  AS SELECT `cgrc`.`RV_LOW_VALUE` AS `CODE`, `cgrc`.`RV_ABBREVIATION` AS `ABREVIATION`, `cgrc`.`RV_MEANING` AS `SIGNIFICATION` FROM `cg_ref_codes` AS `cgrc` WHERE `cgrc`.`RV_DOMAIN` = 'TYPE_EMPLOI' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avenant`
--
ALTER TABLE `avenant`
  ADD PRIMARY KEY (`NO_AVENANT`),
  ADD UNIQUE KEY `AVE_PK` (`NO_AVENANT`),
  ADD KEY `AVE_STG_FK_I` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`);

--
-- Indexes for table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`),
  ADD UNIQUE KEY `CAN_PK` (`NO_ETUDIANT_NAT`),
  ADD KEY `CAN_PRO_FK_I` (`ANNEE_PRO`);

--
-- Indexes for table `cg_ref_codes`
--
ALTER TABLE `cg_ref_codes`
  ADD KEY `CGRC_I` (`RV_DOMAIN`,`RV_LOW_VALUE`);

--
-- Indexes for table `code_notation`
--
ALTER TABLE `code_notation`
  ADD PRIMARY KEY (`CODN_ID`),
  ADD UNIQUE KEY `CODN_PK` (`CODN_ID`),
  ADD KEY `CODN_NOTS_FK_I` (`NO_BAREME`);

--
-- Indexes for table `contact_stage`
--
ALTER TABLE `contact_stage`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`,`DATE_CONTACT`),
  ADD UNIQUE KEY `CTS_PK` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`,`DATE_CONTACT`),
  ADD KEY `CTS_EMP_FK_I` (`NO_CONTACT_ILI`),
  ADD KEY `CTS_ETU_FK_I` (`NO_ETUDIANT_NAT`),
  ADD KEY `CTS_STG_FK_I` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`);

--
-- Indexes for table `critere_entreprise`
--
ALTER TABLE `critere_entreprise`
  ADD PRIMARY KEY (`CRITE_ID`),
  ADD UNIQUE KEY `CRITE_PK` (`CRITE_ID`),
  ADD KEY `CRITE_STRE_EVAL_FK_I` (`NO_EVALUATION`);

--
-- Indexes for table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`),
  ADD UNIQUE KEY `DIP_PK` (`NO_ETUDIANT_NAT`);

--
-- Indexes for table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`ID_EVALUATION`,`NO_ENSEIGNANT`),
  ADD UNIQUE KEY `DRT_PK` (`ID_EVALUATION`,`NO_ENSEIGNANT`),
  ADD UNIQUE KEY `DRT_DRT_UK` (`NO_ENSEIGNANT`,`ID_EVALUATION`),
  ADD KEY `DRT_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `DRT_EVE_FK_I` (`ID_EVALUATION`);

--
-- Indexes for table `element_constitutif`
--
ALTER TABLE `element_constitutif`
  ADD PRIMARY KEY (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  ADD UNIQUE KEY `EC_PK` (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  ADD KEY `EC_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `EC_MOD_FK_I` (`CODE_FORMATION`,`CODE_UE`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`NO_CONTACT_ILI`),
  ADD UNIQUE KEY `EMP_PK` (`NO_CONTACT_ILI`),
  ADD KEY `EMP_ENT_FK_I` (`NO_ENTREPRISE`),
  ADD KEY `EMP_DIP_FK` (`NO_ETUDIANT_NAT`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`NO_ENSEIGNANT`),
  ADD UNIQUE KEY `ENS_PK` (`NO_ENSEIGNANT`);

--
-- Indexes for table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`NO_ENTREPRISE`),
  ADD UNIQUE KEY `ENT_PK` (`NO_ENTREPRISE`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`),
  ADD UNIQUE KEY `ETU_PK` (`NO_ETUDIANT_NAT`),
  ADD KEY `ETU_COM_FK_I` (`CODE_COM`),
  ADD KEY `ETU_PRO_FK_I` (`ANNEE_PRO`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`ID_EVALUATION`),
  ADD UNIQUE KEY `EVE_EVE_UK` (`ANNEE_PRO`,`NO_ENSEIGNANT`,`NO_EVALUATION`,`CODE_FORMATION`,`CODE_UE`),
  ADD UNIQUE KEY `EVE_PK` (`ID_EVALUATION`),
  ADD KEY `EVE_EC_FK_I` (`CODE_EC`),
  ADD KEY `EVE_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `EVE_PRO_FK_I` (`ANNEE_PRO`),
  ADD KEY `EVE_UE_FK_I` (`CODE_FORMATION`,`CODE_UE`),
  ADD KEY `EVE_EC_FK` (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`);

--
-- Indexes for table `evaluation_entreprise`
--
ALTER TABLE `evaluation_entreprise`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD UNIQUE KEY `EVAE_PK` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`CODE_FORMATION`),
  ADD UNIQUE KEY `FRM_PK` (`CODE_FORMATION`);

--
-- Indexes for table `notation_stage`
--
ALTER TABLE `notation_stage`
  ADD PRIMARY KEY (`NO_BAREME`),
  ADD UNIQUE KEY `NOTS_PK` (`NO_BAREME`);

--
-- Indexes for table `note_entreprise`
--
ALTER TABLE `note_entreprise`
  ADD PRIMARY KEY (`CRITE_ID`,`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD UNIQUE KEY `NOTE_PK` (`CRITE_ID`,`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD KEY `NOTE_CODN_FK_I` (`CODN_ID`),
  ADD KEY `NOTE_CRITE_FK_I` (`CRITE_ID`),
  ADD KEY `NOTE_EVAE_FK_I` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`);

--
-- Indexes for table `offre_stage`
--
ALTER TABLE `offre_stage`
  ADD PRIMARY KEY (`NO_OFFRE`),
  ADD UNIQUE KEY `OFF_PK` (`NO_OFFRE`),
  ADD KEY `OFF_ENT_FK_I` (`NO_ENTREPRISE`),
  ADD KEY `OFF_PRO_FK_I` (`ANNEE_PRO`);

--
-- Indexes for table `poste_entreprise`
--
ALTER TABLE `poste_entreprise`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`,`NO_ENTREPRISE`),
  ADD UNIQUE KEY `POE_PK` (`NO_ETUDIANT_NAT`,`NO_ENTREPRISE`),
  ADD KEY `POE_DIP_FK_I` (`NO_ETUDIANT_NAT`),
  ADD KEY `POE_ENT_FK_I` (`NO_ENTREPRISE`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`ANNEE_PRO`),
  ADD UNIQUE KEY `PRO_PK` (`ANNEE_PRO`),
  ADD KEY `PRO_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `PRO_NOTS_FK_I` (`NO_BAREME`),
  ADD KEY `PRO_STRE_FK_I` (`NO_EVALUATION`),
  ADD KEY `PRO_FRM_FK` (`CODE_FORMATION`);

--
-- Indexes for table `qualificatif`
--
ALTER TABLE `qualificatif`
  ADD PRIMARY KEY (`ID_QUALIFICATIF`),
  ADD UNIQUE KEY `QUA_PK` (`ID_QUALIFICATIF`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID_QUESTION`),
  ADD UNIQUE KEY `QUE_PK` (`ID_QUESTION`),
  ADD KEY `QUE_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `QUE_QUA_FK_I` (`ID_QUALIFICATIF`);

--
-- Indexes for table `question_evaluation`
--
ALTER TABLE `question_evaluation`
  ADD PRIMARY KEY (`ID_QUESTION_EVALUATION`),
  ADD UNIQUE KEY `QEV_PK` (`ID_QUESTION_EVALUATION`),
  ADD KEY `QEV_QUA_FK_I` (`ID_QUALIFICATIF`),
  ADD KEY `QEV_QUE_FK_I` (`ID_QUESTION`),
  ADD KEY `QEV_REV_FK_I` (`ID_RUBRIQUE_EVALUATION`);

--
-- Indexes for table `reponse_evaluation`
--
ALTER TABLE `reponse_evaluation`
  ADD PRIMARY KEY (`ID_REPONSE_EVALUATION`),
  ADD UNIQUE KEY `RPE_PK` (`ID_REPONSE_EVALUATION`),
  ADD KEY `RPE_ETU_FK_I` (`NO_ETUDIANT_NAT`),
  ADD KEY `RPE_EVE_FK_I` (`ID_EVALUATION`);

--
-- Indexes for table `reponse_question`
--
ALTER TABLE `reponse_question`
  ADD PRIMARY KEY (`ID_REPONSE_QUESTION`,`ID_QUESTION_EVALUATION`),
  ADD UNIQUE KEY `RPQ_PK` (`ID_REPONSE_QUESTION`,`ID_QUESTION_EVALUATION`),
  ADD KEY `RPQ_QEV_FK_I` (`ID_QUESTION_EVALUATION`),
  ADD KEY `RPQ_RPE_FK_I` (`ID_REPONSE_QUESTION`);

--
-- Indexes for table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`ID_RUBRIQUE`),
  ADD UNIQUE KEY `RUB_PK` (`ID_RUBRIQUE`),
  ADD KEY `RUB_ENS_FK_I` (`NO_ENSEIGNANT`);

--
-- Indexes for table `rubrique_evaluation`
--
ALTER TABLE `rubrique_evaluation`
  ADD PRIMARY KEY (`ID_RUBRIQUE_EVALUATION`),
  ADD UNIQUE KEY `REV_PK` (`ID_RUBRIQUE_EVALUATION`),
  ADD KEY `REV_EVE_FK_I` (`ID_EVALUATION`),
  ADD KEY `REV_RUB_FK_I` (`ID_RUBRIQUE`);

--
-- Indexes for table `rubrique_question`
--
ALTER TABLE `rubrique_question`
  ADD PRIMARY KEY (`ID_RUBRIQUE`,`ID_QUESTION`),
  ADD UNIQUE KEY `RBQ_PK` (`ID_RUBRIQUE`,`ID_QUESTION`),
  ADD KEY `RBQ_QUE_FK_I` (`ID_QUESTION`),
  ADD KEY `RBQ_RUB_FK_I` (`ID_RUBRIQUE`);

--
-- Indexes for table `soutenance`
--
ALTER TABLE `soutenance`
  ADD PRIMARY KEY (`NO_SESSION`,`ANNEE_PRO`),
  ADD UNIQUE KEY `SOUT_PK` (`NO_SESSION`,`ANNEE_PRO`),
  ADD KEY `SOUT_ENS_ASSESSEUR_FK_I` (`NO_ENSEIGNANT_ASSESSEUR`),
  ADD KEY `SOUT_ENS_RESPONSABLE_I` (`NO_ENSEIGNANT_RESPONSABLE`),
  ADD KEY `SOUT_PRO_FK_I` (`ANNEE_PRO`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD UNIQUE KEY `STG_PK` (`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD KEY `STG_EMP_FK_I` (`NO_CONTACT_ILI`),
  ADD KEY `STG_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `STG_ENT_FK_I` (`NO_ENTREPRISE`),
  ADD KEY `STG_ETU_FK_I` (`NO_ETUDIANT_NAT`),
  ADD KEY `STG_PRO_FK_I` (`ANNEE_PRO`),
  ADD KEY `STG_SOUT_FK_I` (`NO_SESSION`),
  ADD KEY `STG_OFF_FK` (`NO_OFFRE`),
  ADD KEY `STG_SOUT_FK` (`NO_SESSION`,`ANNEE_PRO`);

--
-- Indexes for table `structure_evaluation`
--
ALTER TABLE `structure_evaluation`
  ADD PRIMARY KEY (`NO_EVALUATION`),
  ADD UNIQUE KEY `STRE_PK` (`NO_EVALUATION`);

--
-- Indexes for table `unite_enseignement`
--
ALTER TABLE `unite_enseignement`
  ADD UNIQUE KEY `UE_PK` (`CODE_FORMATION`,`CODE_UE`),
  ADD KEY `UE_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `UE_FRM_FK_I` (`CODE_FORMATION`);

--
-- Indexes for table `visite_stage`
--
ALTER TABLE `visite_stage`
  ADD PRIMARY KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`),
  ADD KEY `VST_EMP_FK` (`NO_CONTACT_ILI`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avenant`
--
ALTER TABLE `avenant`
  ADD CONSTRAINT `AVE_STG_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`) REFERENCES `stage` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`);

--
-- Constraints for table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `CAN_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`);

--
-- Constraints for table `code_notation`
--
ALTER TABLE `code_notation`
  ADD CONSTRAINT `CODN_NOTS_FK` FOREIGN KEY (`NO_BAREME`) REFERENCES `notation_stage` (`NO_BAREME`);

--
-- Constraints for table `contact_stage`
--
ALTER TABLE `contact_stage`
  ADD CONSTRAINT `CTS_EMP_FK` FOREIGN KEY (`NO_CONTACT_ILI`) REFERENCES `employe` (`NO_CONTACT_ILI`),
  ADD CONSTRAINT `CTS_ETU_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `etudiant` (`NO_ETUDIANT_NAT`);

--
-- Constraints for table `critere_entreprise`
--
ALTER TABLE `critere_entreprise`
  ADD CONSTRAINT `CRITE_STRE_FK` FOREIGN KEY (`NO_EVALUATION`) REFERENCES `structure_evaluation` (`NO_EVALUATION`);

--
-- Constraints for table `diplome`
--
ALTER TABLE `diplome`
  ADD CONSTRAINT `DIP_ETU_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `etudiant` (`NO_ETUDIANT_NAT`);

--
-- Constraints for table `droit`
--
ALTER TABLE `droit`
  ADD CONSTRAINT `DRT_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `DRT_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`ID_EVALUATION`);

--
-- Constraints for table `element_constitutif`
--
ALTER TABLE `element_constitutif`
  ADD CONSTRAINT `EC_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `EC_UE_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`) REFERENCES `unite_enseignement` (`CODE_FORMATION`, `CODE_UE`);

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `EMP_DIP_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `diplome` (`NO_ETUDIANT_NAT`),
  ADD CONSTRAINT `EMP_ENT_FK` FOREIGN KEY (`NO_ENTREPRISE`) REFERENCES `entreprise` (`NO_ENTREPRISE`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `ETU_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `EVE_EC_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`) REFERENCES `element_constitutif` (`CODE_FORMATION`, `CODE_UE`, `CODE_EC`),
  ADD CONSTRAINT `EVE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `EVE_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`),
  ADD CONSTRAINT `EVE_UE_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`) REFERENCES `unite_enseignement` (`CODE_FORMATION`, `CODE_UE`);

--
-- Constraints for table `evaluation_entreprise`
--
ALTER TABLE `evaluation_entreprise`
  ADD CONSTRAINT `EVAE_STG_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`) REFERENCES `stage` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`);

--
-- Constraints for table `note_entreprise`
--
ALTER TABLE `note_entreprise`
  ADD CONSTRAINT `NOTE_CODN_FK` FOREIGN KEY (`CODN_ID`) REFERENCES `code_notation` (`CODN_ID`),
  ADD CONSTRAINT `NOTE_CRITE_FK` FOREIGN KEY (`CRITE_ID`) REFERENCES `critere_entreprise` (`CRITE_ID`),
  ADD CONSTRAINT `NOTE_EVAE_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`) REFERENCES `evaluation_entreprise` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`);

--
-- Constraints for table `offre_stage`
--
ALTER TABLE `offre_stage`
  ADD CONSTRAINT `OFF_ENT_FK` FOREIGN KEY (`NO_ENTREPRISE`) REFERENCES `entreprise` (`NO_ENTREPRISE`),
  ADD CONSTRAINT `OFF_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`);

--
-- Constraints for table `poste_entreprise`
--
ALTER TABLE `poste_entreprise`
  ADD CONSTRAINT `POE_DIP_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `diplome` (`NO_ETUDIANT_NAT`),
  ADD CONSTRAINT `POE_ENT_FK` FOREIGN KEY (`NO_ENTREPRISE`) REFERENCES `entreprise` (`NO_ENTREPRISE`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `PRO_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `PRO_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `formation` (`CODE_FORMATION`),
  ADD CONSTRAINT `PRO_NOTS_FK` FOREIGN KEY (`NO_BAREME`) REFERENCES `notation_stage` (`NO_BAREME`),
  ADD CONSTRAINT `PRO_STRE_FK` FOREIGN KEY (`NO_EVALUATION`) REFERENCES `structure_evaluation` (`NO_EVALUATION`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `QUE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `QUE_QUA_FK` FOREIGN KEY (`ID_QUALIFICATIF`) REFERENCES `qualificatif` (`ID_QUALIFICATIF`);

--
-- Constraints for table `question_evaluation`
--
ALTER TABLE `question_evaluation`
  ADD CONSTRAINT `QEV_QUA_FK` FOREIGN KEY (`ID_QUALIFICATIF`) REFERENCES `qualificatif` (`ID_QUALIFICATIF`),
  ADD CONSTRAINT `QEV_QUE_FK` FOREIGN KEY (`ID_QUESTION`) REFERENCES `question` (`ID_QUESTION`),
  ADD CONSTRAINT `QEV_REV_FK` FOREIGN KEY (`ID_RUBRIQUE_EVALUATION`) REFERENCES `rubrique_evaluation` (`ID_RUBRIQUE_EVALUATION`);

--
-- Constraints for table `reponse_evaluation`
--
ALTER TABLE `reponse_evaluation`
  ADD CONSTRAINT `RPE_ETU_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `etudiant` (`NO_ETUDIANT_NAT`),
  ADD CONSTRAINT `RPE_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`ID_EVALUATION`);

--
-- Constraints for table `reponse_question`
--
ALTER TABLE `reponse_question`
  ADD CONSTRAINT `RPQ_QEV_FK` FOREIGN KEY (`ID_QUESTION_EVALUATION`) REFERENCES `question_evaluation` (`ID_QUESTION_EVALUATION`),
  ADD CONSTRAINT `RPQ_RPE_FK` FOREIGN KEY (`ID_REPONSE_QUESTION`) REFERENCES `reponse_evaluation` (`ID_REPONSE_EVALUATION`);

--
-- Constraints for table `rubrique`
--
ALTER TABLE `rubrique`
  ADD CONSTRAINT `RUB_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`);

--
-- Constraints for table `rubrique_evaluation`
--
ALTER TABLE `rubrique_evaluation`
  ADD CONSTRAINT `REV_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`ID_EVALUATION`),
  ADD CONSTRAINT `REV_RUB_FK` FOREIGN KEY (`ID_RUBRIQUE`) REFERENCES `rubrique` (`ID_RUBRIQUE`);

--
-- Constraints for table `rubrique_question`
--
ALTER TABLE `rubrique_question`
  ADD CONSTRAINT `RBQ_QUE_FK` FOREIGN KEY (`ID_QUESTION`) REFERENCES `question` (`ID_QUESTION`),
  ADD CONSTRAINT `RBQ_RUB_FK` FOREIGN KEY (`ID_RUBRIQUE`) REFERENCES `rubrique` (`ID_RUBRIQUE`);

--
-- Constraints for table `soutenance`
--
ALTER TABLE `soutenance`
  ADD CONSTRAINT `SOUT_ENS_ASSESSEUR_FK` FOREIGN KEY (`NO_ENSEIGNANT_ASSESSEUR`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `SOUT_ENS_RESPONSABLE_FK` FOREIGN KEY (`NO_ENSEIGNANT_RESPONSABLE`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `SOUT_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`);

--
-- Constraints for table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `STG_EMP_FK` FOREIGN KEY (`NO_CONTACT_ILI`) REFERENCES `employe` (`NO_CONTACT_ILI`),
  ADD CONSTRAINT `STG_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `STG_ENT_FK` FOREIGN KEY (`NO_ENTREPRISE`) REFERENCES `entreprise` (`NO_ENTREPRISE`),
  ADD CONSTRAINT `STG_ETU_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`) REFERENCES `etudiant` (`NO_ETUDIANT_NAT`),
  ADD CONSTRAINT `STG_OFF_FK` FOREIGN KEY (`NO_OFFRE`) REFERENCES `offre_stage` (`NO_OFFRE`),
  ADD CONSTRAINT `STG_PRO_FK` FOREIGN KEY (`ANNEE_PRO`) REFERENCES `promotion` (`ANNEE_PRO`),
  ADD CONSTRAINT `STG_SOUT_FK` FOREIGN KEY (`NO_SESSION`,`ANNEE_PRO`) REFERENCES `soutenance` (`NO_SESSION`, `ANNEE_PRO`);

--
-- Constraints for table `unite_enseignement`
--
ALTER TABLE `unite_enseignement`
  ADD CONSTRAINT `UE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`NO_ENSEIGNANT`),
  ADD CONSTRAINT `UE_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `formation` (`CODE_FORMATION`);

--
-- Constraints for table `visite_stage`
--
ALTER TABLE `visite_stage`
  ADD CONSTRAINT `VST_EMP_FK` FOREIGN KEY (`NO_CONTACT_ILI`) REFERENCES `employe` (`NO_CONTACT_ILI`),
  ADD CONSTRAINT `VST_STG_FK` FOREIGN KEY (`NO_ETUDIANT_NAT`,`ANNEE_PRO`) REFERENCES `stage` (`NO_ETUDIANT_NAT`, `ANNEE_PRO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
