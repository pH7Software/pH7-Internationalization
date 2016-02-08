--
--
-- Title:         SQL Internationalization package
--
-- Author:        Pierre-Henry Soria <hello@ph7cms.com>
-- Copyright:     (c) 2016, Pierre-Henry Soria. All Rights Reserved.
-- License:       GNU General Public License; See PH7.LICENSE.txt and PH7.COPYRIGHT.txt in the root directory.
-- Package:       PH7 / Internationalize / Sql
--
--

INSERT INTO pH7_LanguagesInfo (langId, name, charset, active, direction, author, website, email) VALUES
('ln_NL', 'English', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://hizup.com', 'phs@hizup.com'),
('fr_FR', 'Français', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://hizup.com', 'phs@hizup.com');


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