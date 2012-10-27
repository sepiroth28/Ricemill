DROP TABLE IF EXISTS `ricemill`.`archievestatus`;
CREATE TABLE  `ricemill`.`archievestatus` (
  `partida_id` int(10) unsigned NOT NULL,
  `active` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;