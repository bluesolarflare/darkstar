
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de donn�es: `dspdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `weapon_skills`
--

DROP TABLE IF EXISTS `weapon_skills`;
CREATE TABLE IF NOT EXISTS `weapon_skills` (
  `weaponskillid` tinyint(3) unsigned NOT NULL,
  `name` text NOT NULL,
  `jobs` binary(22) NOT NULL,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `skilllevel` smallint(3) unsigned NOT NULL DEFAULT '0',
  `element` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `animation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `range` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `aoe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `primary_sc` tinyint(4) NOT NULL DEFAULT '0',
  `secondary_sc` tinyint(4) NOT NULL DEFAULT '0',
  `tertiary_sc` tinyint(4) NOT NULL DEFAULT '0',
  `main_only`    tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`weaponskillid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `weapon_skills`
--

INSERT INTO weapon_skills VALUES (1, 'combo', x'02020000000200000000000002000000000202000000', 1, 5, 16, 16, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (2, 'shoulder_tackle', x'02020000000200000000000002000000000202000000', 1, 40, 48, 17, 5, 1, 5, 8, 0, 0);
INSERT INTO weapon_skills VALUES (3, 'one_inch_punch', x'00020000000000000000000000000000000200000000', 1, 75, 128, 18, 5, 1, 2, 0, 0, 0);
INSERT INTO weapon_skills VALUES (4, 'backhand_blow', x'02020000000100000000000001000000000202000000', 1, 100, 4, 19, 5, 1, 6, 0, 0, 0);
INSERT INTO weapon_skills VALUES (5, 'raging_fists', x'00020000000000000000000000000000000200000000', 1, 125, 16, 20, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (6, 'spinning_attack', x'01010000000100000000000001000000000101000000', 1, 150, 17, 21, 5, 2, 3, 8, 0, 0);
INSERT INTO weapon_skills VALUES (7, 'howling_fist', x'00010000000000000000000000000000000100000000', 1, 200, 80, 22, 5, 1, 1, 8, 0, 1);
INSERT INTO weapon_skills VALUES (8, 'dragon_kick', x'00010000000000000000000000000000000100000000', 1, 225, 20, 23, 5, 1, 12, 0, 0, 1);
INSERT INTO weapon_skills VALUES (9, 'asuran_fists', x'00010000000000000000000000000000000000000000', 1, 250, 137, 24, 5, 1, 9, 3, 0, 1);
INSERT INTO weapon_skills VALUES (10, 'final_heaven', x'00010000000000000000000000000000000000000000', 1, 300, 85, 25, 5, 1, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (11, 'ascetics_fury', x'00010000000000000000000000000000000000000000', 1, 300, 65, 26, 5, 1, 11, 1, 0, 0);
INSERT INTO weapon_skills VALUES (12, 'stringing_pummel', x'00000000000000000000000000000000000100000000', 1, 300, 137, 27, 5, 1, 9, 3, 0, 0);
INSERT INTO weapon_skills VALUES (16, 'wasp_sting', x'02000002020202020202020202020200020202020000', 2, 5, 8, 31, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (19, 'gust_slash', x'02000002020202020202020202020200020202020000', 2, 40, 4, 34, 5, 1, 6, 0, 0, 0);
INSERT INTO weapon_skills VALUES (18, 'shadowstitch', x'02000002020202020202020202020200020202020000', 2, 70, 32, 33, 5, 1, 5, 0, 0, 0);
INSERT INTO weapon_skills VALUES (17, 'viper_bite', x'00000000020200000002020002000000000002000000', 2, 100, 8, 32, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (20, 'cyclone', x'00000000020200000002020002000000000002000000', 2, 125, 20, 35, 5, 2, 6, 8, 0, 0);
INSERT INTO weapon_skills VALUES (21, 'energy_steal', x'02000002020202020202020202020200020202020000', 2, 150, 0, 36, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (22, 'energy_drain', x'00000000020200000002020002000000000002000000', 2, 175, 0, 37, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (23, 'dancing_edge', x'00000000000100000000000000000000000001000000', 2, 200, 12, 38, 5, 1, 4, 6, 0, 1);
INSERT INTO weapon_skills VALUES (24, 'shark_bite', x'00000000000100000000000000000000000001000000', 2, 225, 20, 39, 5, 1, 12, 0, 0, 1);
INSERT INTO weapon_skills VALUES (25, 'evisceration', x'01000000010100000101010001000000010001000000', 2, 230, 200, 40, 5, 1, 9, 1, 0, 1);
INSERT INTO weapon_skills VALUES (26, 'mercy_stroke', x'00000000010100000001000000000000000000000000', 2, 300, 170, 41, 5, 1, 14, 9, 0, 0);
INSERT INTO weapon_skills VALUES (27, 'mandalic_stab', x'00000000000100000000000000000000000000000000', 2, 300, 193, 42, 5, 1, 11, 2, 0, 0);
INSERT INTO weapon_skills VALUES (28, 'mordant_rime', x'00000000000000000001000000000000000000000000', 2, 300, 54, 43, 5, 1, 12, 10, 0, 0);
INSERT INTO weapon_skills VALUES (29, 'pyrrhic_kleos', x'00000000000000000000000000000000000001000000', 2, 300, 42, 44, 5, 1, 10, 4, 0, 0);
INSERT INTO weapon_skills VALUES (32, 'fast_blade', x'02000000020202020202020202020002020002000000', 3, 5, 8, 1, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (33, 'burning_blade', x'02000000020202020202020202020002020002000000', 3, 30, 1, 2, 5, 1, 3, 0, 0, 0);
INSERT INTO weapon_skills VALUES (34, 'red_lotus_blade', x'02000000000002020000000000000002000000000000', 3, 50, 5, 3, 5, 1, 3, 6, 0, 0);
INSERT INTO weapon_skills VALUES (35, 'flat_blade', x'02000000020202020202020202020002020002000000', 3, 75, 16, 6, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (36, 'shining_blade', x'02000000020202020102020202020002020002000000', 3, 100, 8, 4, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (37, 'seraph_blade', x'02000000000002020000000000000002000000000000', 3, 125, 8, 5, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (38, 'circle_blade', x'01000000010101010101010101010001010001000000', 3, 150, 48, 7, 5, 2, 5, 8, 0, 0);
INSERT INTO weapon_skills VALUES (39, 'spirits_within', x'01000000010101010101010101010001010001000000', 3, 175, 0, 8, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (40, 'vorpal_blade', x'02000000000002020000000000000002000000000000', 3, 200, 24, 9, 5, 1, 4, 8, 0, 0);
INSERT INTO weapon_skills VALUES (41, 'swift_blade', x'00000000000001000000000000000000000000000000', 3, 225, 136, 10, 5, 1, 9, 0, 0, 1);
INSERT INTO weapon_skills VALUES (42, 'savage_blade', x'01000000010001010000000000000001010000000000', 3, 240, 28, 11, 5, 1, 12, 4, 0, 1);
INSERT INTO weapon_skills VALUES (43, 'knights_of_round', x'00000000010001000000000000000000000000000000', 3, 300, 85, 12, 5, 1, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (44, 'death_blossom', x'00000000010000000000000000000000000000000000', 3, 300, 54, 13, 5, 1, 12, 10, 0, 0);
INSERT INTO weapon_skills VALUES (45, 'atonement', x'00000000000001000000000000000000000000000000', 3, 300, 97, 14, 5, 1, 11, 5, 0, 0);
INSERT INTO weapon_skills VALUES (46, 'expiacion', x'00000000000000000000000000000001000000000000', 3, 300, 42, 15, 5, 1, 10, 4, 0, 0);
INSERT INTO weapon_skills VALUES (48, 'hard_slash', x'02000000000002020000000000000000000000000000', 4, 5, 8, 106, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (49, 'power_slash', x'02000000000002020000000000000000000000000000', 4, 30, 64, 107, 5, 1, 1, 0, 0, 0);
INSERT INTO weapon_skills VALUES (50, 'frostbite', x'02000000000002020000000000000000000000000000', 4, 70, 2, 108, 5, 1, 7, 0, 0, 0);
INSERT INTO weapon_skills VALUES (51, 'freezebite', x'02000000000002020000000000000000000000000000', 4, 100, 6, 109, 5, 1, 7, 6, 0, 0);
INSERT INTO weapon_skills VALUES (52, 'shockwave', x'01000000000001010000000000000000000000000000', 4, 150, 32, 110, 5, 2, 5, 0, 0, 0);
INSERT INTO weapon_skills VALUES (53, 'crescent_moon', x'01000000000001010000000000000000000000000000', 4, 175, 8, 111, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (54, 'sickle_moon', x'00000000000001010000000000000000000000000000', 4, 200, 24, 112, 5, 1, 4, 8, 0, 1);
INSERT INTO weapon_skills VALUES (55, 'spinning_slash', x'00000000000001010000000000000000000000000000', 4, 225, 20, 113, 5, 1, 12, 0, 0, 1);
INSERT INTO weapon_skills VALUES (56, 'ground_strike', x'01000000000001010000000000000000000000000000', 4, 250, 54, 114, 5, 1, 12, 10, 0, 0);
INSERT INTO weapon_skills VALUES (57, 'scourge', x'01000000000001010000000000000000000000000000', 4, 300, 85, 115, 5, 1, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (64, 'raging_axe', x'02000000000000020200020000000000000000000000', 5, 5, 20, 46, 5, 1, 6, 8, 0, 0);
INSERT INTO weapon_skills VALUES (65, 'smash_axe', x'02000000000000020200020000000000000000000000', 5, 40, 34, 47, 5, 1, 7, 5, 0, 0);
INSERT INTO weapon_skills VALUES (66, 'gale_axe', x'02000000000000020200020000000000000000000000', 5, 70, 4, 48, 5, 1, 6, 0, 0, 0);
INSERT INTO weapon_skills VALUES (67, 'avalanche_axe', x'02000000000000020200020000000000000000000000', 5, 100, 24, 49, 5, 1, 4, 8, 0, 0);
INSERT INTO weapon_skills VALUES (68, 'spinning_axe', x'02000000000000020200000000000000000000000000', 5, 150, 9, 50, 5, 1, 3, 4, 0, 0);
INSERT INTO weapon_skills VALUES (69, 'rampage', x'01000000000000010100010000000000000000000000', 5, 175, 8, 51, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (70, 'calamity', x'01000000000000000100000000000000000000000000', 5, 200, 24, 52, 5, 1, 4, 8, 0, 1);
INSERT INTO weapon_skills VALUES (71, 'mistral_axe', x'01000000000000000100000000000000000000000000', 5, 225, 65, 53, 15, 1, 11, 0, 0, 1);
INSERT INTO weapon_skills VALUES (72, 'decimation', x'01000000000000010100010000000000000000000000', 5, 240, 97, 54, 5, 1, 11, 5, 0, 1);
INSERT INTO weapon_skills VALUES (73, 'onslaught', x'00000000000000000100000000000000000000000000', 5, 300, 170, 55, 5, 1, 14, 9, 0, 0);
INSERT INTO weapon_skills VALUES (74, 'primal_rend', x'00000000000000000100000000000000000000000000', 5, 300, 168, 56, 5, 1, 9, 5, 0, 0);
INSERT INTO weapon_skills VALUES (80, 'shield_break', x'02000000000000020000000000000000000000000000', 6, 5, 16, 91, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (81, 'iron_tempest', x'02000000000000020000000000000000000000000000', 6, 40, 8, 92, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (82, 'sturmwind', x'02000000000000020000000000000000000000000000', 6, 70, 40, 93, 5, 1, 5, 4, 0, 0);
INSERT INTO weapon_skills VALUES (83, 'armor_break', x'02000000000000020000000000000000000000000000', 6, 100, 16, 94, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (84, 'keen_edge', x'01000000000000010000000000000000000000000000', 6, 150, 128, 95, 5, 1, 2, 0, 0, 0);
INSERT INTO weapon_skills VALUES (85, 'weapon_break', x'01000000000000010000000000000000000000000000', 6, 175, 16, 96, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (86, 'raging_rush', x'01000000000000000000000000000000000000000000', 6, 200, 34, 97, 5, 1, 7, 5, 0, 1);
INSERT INTO weapon_skills VALUES (87, 'full_break', x'01000000000000000000000000000000000000000000', 6, 225, 34, 98, 5, 1, 10, 0, 0, 1);
INSERT INTO weapon_skills VALUES (88, 'steel_cyclone', x'01000000000000010000000000000000000000000000', 6, 240, 38, 99, 5, 1, 10, 6, 0, 1);
INSERT INTO weapon_skills VALUES (89, 'metatron_torment', x'01000000000000000000000000000000000000000000', 6, 300, 85, 100, 5, 1, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (90, 'kings_justice', x'01000000000000000000000000000000000000000000', 6, 300, 28, 101, 5, 1, 12, 4, 0, 0);
INSERT INTO weapon_skills VALUES (96, 'slice', x'02000002000000020200000000000000000000000000', 7, 5, 8, 61, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (97, 'dark_harvest', x'02000002000000020200000000000000000000000000', 7, 30, 32, 62, 5, 1, 5, 0, 0, 0);
INSERT INTO weapon_skills VALUES (98, 'shadow_of_death', x'02000000000000020000000000000000000000000000', 7, 70, 34, 63, 5, 1, 7, 5, 0, 0);
INSERT INTO weapon_skills VALUES (99, 'nightmare_scythe', x'02000001000000020200000000000000000000000000', 7, 100, 136, 64, 5, 1, 2, 4, 0, 0);
INSERT INTO weapon_skills VALUES (100, 'spinning_scythe', x'01000001000000010100000000000000000000000000', 7, 125, 40, 65, 5, 2, 5, 4, 0, 0);
INSERT INTO weapon_skills VALUES (101, 'vorpal_scythe', x'01000001000000010100000000000000000000000000', 7, 150, 72, 66, 5, 1, 1, 4, 0, 0);
INSERT INTO weapon_skills VALUES (102, 'guillotine', x'00000000000000010000000000000000000000000000', 7, 200, 2, 67, 5, 1, 7, 0, 0, 1);
INSERT INTO weapon_skills VALUES (103, 'cross_reaper', x'00000000000000010000000000000000000000000000', 7, 225, 34, 68, 5, 1, 10, 0, 0, 1);
INSERT INTO weapon_skills VALUES (104, 'spiral_hell', x'01000000000000010100000000000000000000000000', 7, 240, 42, 69, 5, 1, 10, 4, 0, 0);
INSERT INTO weapon_skills VALUES (105, 'catastrophe', x'00000000000000010000000000000000000000000000', 7, 300, 170, 70, 5, 1, 14, 9, 0, 0);
INSERT INTO weapon_skills VALUES (106, 'insurgency', x'00000000000000010000000000000000000000000000', 7, 300, 193, 71, 5, 1, 11, 2, 0, 0);
INSERT INTO weapon_skills VALUES (112, 'double_thrust', x'02000000000002000000000200020000000000000000', 8, 5, 64, 121, 5, 1, 1, 0, 0, 0);
INSERT INTO weapon_skills VALUES (113, 'thunder_thrust', x'02000000000002000000000200020000000000000000', 8, 30, 80, 122, 5, 1, 1, 8, 0, 0);
INSERT INTO weapon_skills VALUES (114, 'raiden_thrust', x'02000000000002000000000000020000000000000000', 8, 70, 80, 123, 5, 1, 1, 8, 0, 0);
INSERT INTO weapon_skills VALUES (115, 'leg_sweep', x'02000000000001000000000200020000000000000000', 8, 100, 16, 124, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (116, 'penta_thrust', x'01000000000001000000000100010000000000000000', 8, 150, 128, 125, 5, 1, 2, 0, 0, 0);
INSERT INTO weapon_skills VALUES (117, 'vorpal_thrust', x'01000000000001000000000100010000000000000000', 8, 175, 96, 126, 5, 1, 5, 1, 0, 0);
INSERT INTO weapon_skills VALUES (118, 'skewer', x'00000000000000000000000000010000000000000000', 8, 200, 80, 127, 5, 1, 1, 8, 0, 1);
INSERT INTO weapon_skills VALUES (119, 'wheeling_thrust', x'00000000000000000000000000010000000000000000', 8, 225, 65, 128, 5, 1, 11, 0, 0, 1);
INSERT INTO weapon_skills VALUES (120, 'impulse_drive', x'01000000000000000000000100010000000000000000', 8, 240, 138, 129, 5, 1, 9, 7, 0, 0);
INSERT INTO weapon_skills VALUES (121, 'geirskogul', x'00000000000000000000000000010000000000000000', 8, 300, 87, 130, 5, 1, 13, 10, 0, 0);
INSERT INTO weapon_skills VALUES (122, 'drakesbane', x'00000000000000000000000000010000000000000000', 8, 300, 65, 131, 5, 1, 11, 1, 0, 0);
INSERT INTO weapon_skills VALUES (128, 'blade_rin', x'00000000000000000000000001000000000000000000', 9, 5, 64, 151, 5, 1, 1, 0, 0, 0);
INSERT INTO weapon_skills VALUES (129, 'blade_retsu', x'00000000000000000000000001000000000000000000', 9, 30, 8, 152, 5, 1, 4, 0, 0, 0);
INSERT INTO weapon_skills VALUES (130, 'blade_teki', x'00000000000000000000000001000000000000000000', 9, 70, 32, 153, 5, 1, 5, 0, 0, 0);
INSERT INTO weapon_skills VALUES (131, 'blade_to', x'00000000000000000000000001000000000000000000', 9, 100, 6, 154, 5, 1, 7, 6, 0, 0);
INSERT INTO weapon_skills VALUES (132, 'blade_chi', x'00000000000000000000000001000000000000000000', 9, 150, 80, 155, 5, 1, 1, 8, 0, 0);
INSERT INTO weapon_skills VALUES (133, 'blade_ei', x'00000000000000000000000001000000000000000000', 9, 175, 128, 156, 5, 1, 2, 0, 0, 0);
INSERT INTO weapon_skills VALUES (134, 'blade_jin', x'00000000000000000000000001000000000000000000', 9, 200, 20, 157, 5, 1, 6, 8, 0, 1);
INSERT INTO weapon_skills VALUES (135, 'blade_ten', x'00000000000000000000000001000000000000000000', 9, 225, 136, 158, 5, 1, 9, 0, 0, 1);
INSERT INTO weapon_skills VALUES (136, 'blade_ku', x'00000000000000000000000001000000000000000000', 9, 250, 200, 159, 5, 1, 9, 1, 0, 1);
INSERT INTO weapon_skills VALUES (137, 'blade_metsu', x'00000000000000000000000001000000000000000000', 9, 300, 190, 160, 5, 1, 14, 12, 0, 0);
INSERT INTO weapon_skills VALUES (138, 'blade_kamu', x'00000000000000000000000001000000000000000000', 9, 300, 148, 161, 5, 1, 12, 2, 0, 0);
INSERT INTO weapon_skills VALUES (144, 'tachi_enpi', x'00000000000000000000000202000000000000000000', 10, 5, 72, 166, 5, 1, 1, 4, 0, 0);
INSERT INTO weapon_skills VALUES (145, 'tachi_hobaku', x'00000000000000000000000202000000000000000000', 10, 30, 2, 167, 5, 1, 7, 0, 0, 0);
INSERT INTO weapon_skills VALUES (146, 'tachi_goten', x'00000000000000000000000202000000000000000000', 10, 70, 80, 168, 5, 1, 1, 8, 0, 0);
INSERT INTO weapon_skills VALUES (147, 'tachi_kagero', x'00000000000000000000000202000000000000000000', 10, 100, 1, 169, 5, 1, 3, 0, 0, 0);
INSERT INTO weapon_skills VALUES (148, 'tachi_jinpu', x'00000000000000000000000101000000000000000000', 10, 150, 12, 170, 5, 1, 4, 6, 0, 0);
INSERT INTO weapon_skills VALUES (149, 'tachi_koki', x'00000000000000000000000101000000000000000000', 10, 175, 48, 171, 5, 1, 5, 8, 0, 0);
INSERT INTO weapon_skills VALUES (150, 'tachi_yukikaze', x'00000000000000000000000100000000000000000000', 10, 200, 6, 172, 5, 1, 7, 6, 0, 1);
INSERT INTO weapon_skills VALUES (151, 'tachi_gekko', x'00000000000000000000000100000000000000000000', 10, 225, 34, 173, 5, 1, 10, 5, 0, 1);
INSERT INTO weapon_skills VALUES (152, 'tachi_kasha', x'00000000000000000000000100000000000000000000', 10, 250, 193, 174, 5, 1, 11, 2, 0, 1);
INSERT INTO weapon_skills VALUES (153, 'tachi_kaiten', x'00000000000000000000000100000000000000000000', 10, 300, 85, 175, 5, 1, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (154, 'tachi_rana', x'00000000000000000000000100000000000000000000', 10, 300, 138, 176, 5, 1, 9, 7, 0, 0);
INSERT INTO weapon_skills VALUES (160, 'shining_strike', x'02020202020202020202020202020202000200020000', 11, 5, 16, 76, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (161, 'seraph_strike', x'02000200000002020000000200000002000000000000', 11, 40, 16, 77, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (162, 'brainshaker', x'02020202020202020202020202020202000200020000', 11, 70, 32, 78, 5, 1, 5, 0, 0, 0);
INSERT INTO weapon_skills VALUES (163, 'starlight', x'02020202020202020202020202020202000200020000', 11, 100, 0, 79, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (164, 'moonlight', x'02000200000002020000000200000002000000020000', 11, 125, 0, 80, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (165, 'skullbreaker', x'01010101010101010101010101010101000100010000', 11, 150, 34, 81, 5, 1, 7, 5, 0, 0);
INSERT INTO weapon_skills VALUES (166, 'true_strike', x'01010101010101010101010101010101000100010000', 11, 175, 20, 82, 5, 1, 6, 8, 0, 0);
INSERT INTO weapon_skills VALUES (167, 'judgment', x'02000200000002020000000200000002000000020000', 11, 200, 16, 83, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (168, 'hexa_strike', x'00000100000000000000000000000000000000000000', 11, 220, 65, 84, 5, 1, 11, 0, 0, 1);
INSERT INTO weapon_skills VALUES (169, 'black_halo', x'01010101000001000000000000000101000000010000', 11, 230, 148, 85, 5, 1, 12, 2, 0, 0);
INSERT INTO weapon_skills VALUES (170, 'randgrith', x'00000100000000000000000000000000000000000000', 11, 300, 85, 86, 5, 1, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (171, 'mystic_boon', x'00000100000000000000000000000000000000000000', 11, 300, 0, 87, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (176, 'heavy_swing', x'02020202000002000002000000020200000000020000', 12, 5, 16, 136, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (177, 'rock_crusher', x'02020202000002000002000000020200000000020000', 12, 40, 16, 137, 5, 1, 8, 0, 0, 0);
INSERT INTO weapon_skills VALUES (178, 'earth_crusher', x'02020200000002000000000000000000000000020000', 12, 70, 20, 138, 5, 2, 6, 8, 0, 0);
INSERT INTO weapon_skills VALUES (179, 'starburst', x'02020202000002000002000000020200000000020000', 12, 100, 160, 139, 5, 1, 2, 5, 0, 0);
INSERT INTO weapon_skills VALUES (180, 'sunburst', x'02020200000002000000000000000000000000020000', 12, 150, 160, 140, 5, 1, 2, 5, 0, 0);
INSERT INTO weapon_skills VALUES (181, 'shell_crusher', x'01010101000001000001000000010100000000010000', 12, 175, 4, 141, 5, 1, 6, 0, 0, 0);
INSERT INTO weapon_skills VALUES (182, 'full_swing', x'01010101000001000001000000010100000000010000', 12, 200, 17, 142, 5, 1, 3, 8, 0, 0);
INSERT INTO weapon_skills VALUES (183, 'spirit_taker', x'01010101000001000001000000010100000000010000', 12, 215, 0, 143, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (184, 'retribution', x'01010101000001000001000000010100000000010000', 12, 230, 168, 144, 5, 1, 9, 5, 0, 0);
INSERT INTO weapon_skills VALUES (185, 'gate_of_tartarus', x'00000001000000000000000000000100000000000000', 12, 300, 170, 145, 5, 1, 14, 10, 0, 0);
INSERT INTO weapon_skills VALUES (186, 'vidohunir', x'00000001000000000000000000000000000000000000', 12, 300, 54, 146, 5, 1, 12, 10, 0, 0);
INSERT INTO weapon_skills VALUES (187, 'garland_of_bliss', x'00000000000000000000000000000100000000000000', 12, 300, 97, 147, 5, 1, 11, 5, 0, 0);
INSERT INTO weapon_skills VALUES (188, 'omniscience', x'00000000000000000000000000000000000000010000', 12, 300, 200, 148, 5, 1, 9, 1, 0, 0);
INSERT INTO weapon_skills VALUES (192, 'flaming_arrow', x'00000000000000000000020000000000000000000000', 25, 5, 65, 191, 16, 1, 3, 1, 0, 0);
INSERT INTO weapon_skills VALUES (193, 'piercing_arrow', x'00000000000000000000020000000000000000000000', 25, 40, 96, 192, 16, 1, 5, 1, 0, 0);
INSERT INTO weapon_skills VALUES (194, 'dulling_arrow', x'00000000000000000000020000000000000000000000', 25, 80, 65, 193, 16, 1, 3, 1, 0, 0);
INSERT INTO weapon_skills VALUES (196, 'sidewinder', x'00000000000000000000020000000000000000000000', 25, 175, 100, 195, 16, 1, 5, 1, 6, 0);
INSERT INTO weapon_skills VALUES (197, 'blast_arrow', x'00000000000000000000010000000000000000000000', 25, 200, 66, 219, 18, 1, 7, 1, 0, 1);
INSERT INTO weapon_skills VALUES (198, 'arching_arrow', x'00000000000000000000010000000000000000000000', 25, 225, 65, 220, 16, 1, 11, 0, 0, 1);
INSERT INTO weapon_skills VALUES (199, 'empyreal_arrow', x'00000000000000000000010000000000000000000000', 25, 250, 65, 221, 18, 1, 11, 1, 0, 1);
INSERT INTO weapon_skills VALUES (200, 'namas_arrow', x'00000000000000000000010100000000000000000000', 25, 300, 119, 225, 16, 1, 13, 10, 0, 0);
INSERT INTO weapon_skills VALUES (201, 'refulgent_arrow', x'00000000000000000000020000000000000000000000', 25, 290, 96, 232, 16, 1, 5, 1, 0, 0);
INSERT INTO weapon_skills VALUES (208, 'hot_shot', x'00000000000000000000020000000000020000000000', 26, 5, 65, 196, 16, 1, 3, 1, 0, 0);
INSERT INTO weapon_skills VALUES (209, 'split_shot', x'00000000000000000000020000000000020000000000', 26, 40, 96, 197, 16, 1, 5, 1, 0, 0);
INSERT INTO weapon_skills VALUES (210, 'sniper_shot', x'00000000000000000000020000000000020000000000', 26, 80, 65, 198, 16, 1, 3, 1, 0, 0);
INSERT INTO weapon_skills VALUES (212, 'slug_shot', x'00000000000000000000020000000000020000000000', 26, 175, 100, 200, 16, 1, 5, 1, 6, 0);
INSERT INTO weapon_skills VALUES (213, 'blast_shot', x'00000000000000000000010000000000000000000000', 26, 200, 66, 222, 18, 1, 7, 1, 0, 1);
INSERT INTO weapon_skills VALUES (214, 'heavy_shot', x'00000000000000000000010000000000000000000000', 26, 225, 65, 223, 16, 1, 11, 0, 0, 1);
INSERT INTO weapon_skills VALUES (215, 'detonator', x'00000000000000000000010000000000010000000000', 26, 250, 65, 224, 18, 1, 11, 1, 0, 1);
INSERT INTO weapon_skills VALUES (216, 'coronach', x'00000000000000000000010000000000000000000000', 26, 300, 190, 226, 16, 1, 14, 12, 0, 0);
INSERT INTO weapon_skills VALUES (217, 'trueflight', x'00000000000000000000010000000000000000000000', 26, 300, 28, 227, 16, 1, 12, 4, 0, 0);
INSERT INTO weapon_skills VALUES (218, 'leaden_salute', x'00000000000000000000000000000000010000000000', 26, 300, 200, 228, 16, 1, 9, 1, 0, 0);

INSERT INTO weapon_skills VALUES (14, 'victory_smite', x'00010000000000000000000000000000000100000000', 1, 300, 28, 29, 5, 1, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (15, 'shijin_spiral', x'00010000000000000000000000000000000100000000', 1, 357, 28, 30, 5, 1, 11, 5, 0, 0);
INSERT INTO weapon_skills VALUES (13, 'tornado_kick', x'00010000000000000000000000000000000100000000', 1, 300, 28, 28, 5, 1, 7, 8, 6, 0);

INSERT INTO weapon_skills VALUES (30, 'aeolian_edge', x'00000000020200000002020002000000000002000000', 2, 290, 28, 45, 5, 2, 8, 4, 6, 0);
INSERT INTO weapon_skills VALUES (224, 'exenterator', x'01000000010100000101010001000000010001000000', 2, 357, 28, 238, 5, 1, 12, 4, 0, 0);
INSERT INTO weapon_skills VALUES (31, 'rudras_storm', x'00000000000100000001000000000000000001000000', 2, 300, 28, 236, 5, 1, 14, 10, 0, 0);

INSERT INTO weapon_skills VALUES (47, 'sanguine_blade', x'01000000000001010000000000000001000000000000', 3, 300, 28, 230, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (225, 'chant_du_cygne', x'00000000010001000000000000000001000000000000', 3, 300, 28, 233, 5, 1, 13, 10, 0, 0);
INSERT INTO weapon_skills VALUES (226, 'requiescat', x'01000000010001010000000100000001010000000000', 3, 357, 28, 237, 5, 1, 9, 4, 0, 0);

INSERT INTO weapon_skills VALUES (58, 'herculean_slash', x'01000000000001010000000000000000000000000000', 4, 290, 28, 116, 5, 1, 7, 8, 6, 0);
INSERT INTO weapon_skills VALUES (59, 'torcleaver', x'00000000000001010000000000000000000000000000', 4, 300, 28, 117, 5, 1, 13, 10, 0, 0);
INSERT INTO weapon_skills VALUES (60, 'resolution', x'01000000000001010000000000000000000000000000', 4, 357, 28, 118, 5, 1, 12, 4, 0, 0);

INSERT INTO weapon_skills VALUES (91, 'fell_cleave', x'01000000000000010000000000000000000000000000', 6, 300, 28, 102, 5, 2, 8, 6, 4, 0);
INSERT INTO weapon_skills VALUES (92, 'ukkos_fury', x'01000000000000000000000000000000000000000000', 6, 300, 28, 103, 5, 1, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (93, 'upheaval', x'01000000000000010000000000000000000000000000', 6, 357, 28, 104, 5, 1, 11, 2, 0, 0);

INSERT INTO weapon_skills VALUES (155, 'tachi_ageha', x'00000000000000000000000101000000000000000000', 10, 300, 28, 177, 5, 1, 2, 4, 0, 0);
INSERT INTO weapon_skills VALUES (156, 'tachi_fudo', x'00000000000000000000000100000000000000000000', 10, 300, 28, 178, 5, 1, 13, 10, 0, 0);
INSERT INTO weapon_skills VALUES (157, 'tachi_shoha', x'00000000000000000000000100000000000000000000', 10, 357, 28, 179, 5, 1, 12, 2, 0, 0);

INSERT INTO weapon_skills VALUES (75, 'bora_axe', x'01000000000000000100000000000000000000000000', 5, 290, 28, 57, 5, 1, 4, 6, 0, 0);
INSERT INTO weapon_skills VALUES (76, 'cloudsplitter', x'01000000000000000100000000000000000000000000', 5, 300, 28, 58, 5, 1, 14, 12, 0, 0);
INSERT INTO weapon_skills VALUES (77, 'ruinator', x'01000000000000010100010000000000000000000000', 5, 357, 28, 59, 5, 1, 10, 6, 0, 1);

INSERT INTO weapon_skills VALUES (107, 'infernal_scythe', x'00000000000000010000000000000000000000000000', 7, 300, 28, 72, 5, 1, 2, 5, 0, 0);
INSERT INTO weapon_skills VALUES (108, 'quietus', x'00000000000000010000000000000000000000000000', 7, 300, 28, 73, 5, 1, 14, 10, 0, 0);
INSERT INTO weapon_skills VALUES (109, 'entropy', x'01000000000000010100000000000000000000000000', 7, 357, 28, 74, 5, 1, 9, 5, 0, 0);

INSERT INTO weapon_skills VALUES (123, 'sonic_thrust', x'01000000000001000000000000010000000000000000', 8, 300, 28, 132, 5, 2, 1, 4, 0, 0);
INSERT INTO weapon_skills VALUES (124, 'camlanns_torment', x'00000000000000000000000000010000000000000000', 8, 300, 28, 133, 5, 1, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (125, 'stardiver', x'01000000000000000000000100010000000000000000', 8, 357, 28, 134, 5, 1, 9, 1, 0, 1);

INSERT INTO weapon_skills VALUES (139, 'blade_yu', x'00000000000000000000000001000000000000000000', 9, 290, 28, 162, 5, 1, 5, 4, 0, 0);
INSERT INTO weapon_skills VALUES (140, 'blade_hi', x'00000000000000000000000001000000000000000000', 9, 300, 28, 163, 5, 1, 14, 9, 0, 0);
INSERT INTO weapon_skills VALUES (141, 'blade_shun', x'00000000000000000000000001000000000000000000', 9, 357, 28, 164, 5, 1, 11, 8, 0, 0);

INSERT INTO weapon_skills VALUES (172, 'flash_nova', x'01000100000001000000000000000001000000000000', 11, 290, 28, 88, 5, 1, 7, 5, 0, 0);
INSERT INTO weapon_skills VALUES (173, 'dagan', x'00000100000000000000000000000000000000000000', 11, 300, 28, 89, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (174, 'realmrazer', x'01010101000001000000000000000101000000010000', 11, 357, 28, 90, 5, 1, 11, 8, 0, 0);

INSERT INTO weapon_skills VALUES (189, 'cataclysm', x'00010000000001000000000000000100000000000000', 12, 290, 28, 231, 5, 2, 2, 5, 0, 0);
INSERT INTO weapon_skills VALUES (190, 'myrkr', x'00000001000000000000000000000100000000010000', 12, 300, 28, 150, 5, 1, 0, 0, 0, 0);
INSERT INTO weapon_skills VALUES (191, 'shattersoul', x'01010101000001000001000000010100000000010000', 12, 357, 28, 239, 5, 1, 9, 7, 0, 0);

INSERT INTO weapon_skills VALUES (202, 'jishnus_radiance', x'00000000000000000000020000000000000000000000', 25, 357, 100, 234, 16, 1, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (203, 'apex_arrow', x'00000000000000000000010000000000000000000000', 25, 357, 85, 240, 16, 1, 12, 1, 0, 0);

INSERT INTO weapon_skills VALUES (219, 'numbing_shot', x'00000000000000000000020000000000020000000000', 26, 290, 102, 229, 7, 1, 8, 6, 0, 0);
INSERT INTO weapon_skills VALUES (220, 'wildfire', x'00000000000000000000000000000000020000000000', 26, 357, 170, 235, 16, 1, 14, 9, 0, 0);
INSERT INTO weapon_skills VALUES (221, 'last_stand', x'00000000000000000000020000000000020000000000', 26, 357, 97, 241, 16, 1, 11, 5, 0, 0);

-- Locked to Campaign: Conditional Weapons
INSERT INTO weapon_skills VALUES (238, 'uriel_blade', x'00000000000000000000000000000000000000000000', 3, 240, 85, 243, 6, 2, 13, 12, 0, 0);
INSERT INTO weapon_skills VALUES (239, 'glory_slash', x'00000000000000000000000000000000000000000000', 3, 240, 100, 242, 6, 2, 13, 11, 0, 0);
INSERT INTO weapon_skills VALUES (240, 'tartarus_torpor', x'00000000000000000001000000000000000000000000', 12, 240, 170, 149, 10, 2, 0, 0, 0, 0);
