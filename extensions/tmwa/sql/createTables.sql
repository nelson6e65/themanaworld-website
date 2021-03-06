BEGIN;
CREATE TABLE /*$wgDBprefix*/tmw_accounts (
   -- Primary
   ID              INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   -- Username
   USERNAME        VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   -- Password
   PASSWORD        VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   -- Email
   EMAIL           VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   -- Registration State
   STATE           TINYINT UNSIGNED NOT NULL DEFAULT '0',
   -- When Registered
   REGISTRATION    TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   -- Gender
   GENDER          CHAR(1) NOT NULL DEFAULT 'F',
   INDEX (STATE),
   UNIQUE (USERNAME)
) ENGINE=InnoDB;
COMMIT;
