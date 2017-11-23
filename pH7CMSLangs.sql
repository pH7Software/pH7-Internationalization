--
--
-- Title:         SQL Internationalization package
--
-- Author:        Pierre-Henry Soria <hello@ph7cms.com>
-- Copyright:     (c) 2016-2017, Pierre-Henry Soria. All Rights Reserved.
-- License:       GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
-- Package:       PH7 / Internationalize / Sql
--
--


-- Increase length of "metaCopyright" column for French copyright (since it is longer)
ALTER TABLE pH7_MetaMain MODIFY metaCopyright varchar(55);

INSERT INTO pH7_LanguagesInfo (langId, name, charset, active, direction, author, website, email) VALUES
('fr_FR', 'Français', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://ph7.me', 'me@ph7.me'),
('ln_NL', 'English', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://ph7.me', 'me@ph7.me');


INSERT INTO pH7_MetaMain (langId, pageTitle, metaDescription, metaKeywords, headline, slogan, promoText, metaRobots, metaAuthor, metaCopyright, metaRating, metaDistribution, metaCategory) VALUES
('fr_FR', 'Accueil', 'Le CMS pour la création de site de rencontre en ligne', 'script, CMS, clone rencontre, PHP, script rencontre, logiciel rencontre site, reseau social, cms communautaire', 'Le meilleur endroit pour rencontrer', 'Le meilleur endroit pour rencontrer des gens sympa !', 'Ce <a href="http://ph7cms.com">logiciel de rencontre</a> est le premier CMS spécialisé dans la création de sites de rencontre en ligne !', 'index, follow, all', 'Pierre-Henry Soria', 'Copyright Pierre-Henry Soria. Tous droits réservés.', 'general', 'global', 'rencontre'),
('ln_NL', 'Welkom', 'Het CMS voor het creëren van online dating', 'script, CMS, PHP, dating script, dating software, social networking software, social networking script, social network script, free, open source, match clone, friend finder clone, adult friend finder clone', 'Be on the best e-place!', 'The Best place to Meet Nice People', 'You''re on the best place for meeting new people nearby! Chat, Flirt, Socialize and have Fun!<br />Create any Dating Sites like this one with the <a href="http://ph7cms.com">Dating Site Builder</a>. It is Professional, modern, Free, Open Source, and gives you the best way to create a dating business...', 'index, follow, all', 'Pierre-Henry Soria', 'Copyright Pierre-Henry Soria. All Rights Reserved.', 'general', 'global', 'dating');


CREATE TABLE IF NOT EXISTS pH7_LanguagesPhrases (
  phraseId int(10) unsigned NOT NULL AUTO_INCREMENT,
  langId varchar(5) NOT NULL,
  moduleName varchar(40) NOT NULL,
  vendorName varchar(40) NOT NULL,
  token varchar(120) NOT NULL,
  text mediumtext,
  added int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (phraseId),
  FOREIGN KEY (langId) REFERENCES pH7_LanguagesInfo(langId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
