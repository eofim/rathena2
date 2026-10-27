--
-- Table structure for table `instance_lobby_lock`
-- Dedicated SQL cooldown and runtime tracking for rAthena Instance Lobby (Packet 0x08D7).
--

CREATE TABLE IF NOT EXISTS `instance_lobby_lock` (
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `instance_db_id` int(11) NOT NULL DEFAULT 0,
  `id_name` varchar(64) NOT NULL DEFAULT '',
  `party_id` int(11) NOT NULL DEFAULT 0,
  `run_instance_id` int(11) NOT NULL DEFAULT 0,
  `run_boot_token` int(11) NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `cooldown_until` int(11) unsigned NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`, `instance_db_id`),
  KEY `party_id` (`party_id`),
  KEY `cooldown_until` (`cooldown_until`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
