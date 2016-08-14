-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2016 pada 04.15
-- Versi Server: 5.5.34
-- Versi PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `rd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=418 ;

--
-- Dumping data untuk tabel `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `comment`, `lft`, `rght`) VALUES
(29, NULL, NULL, NULL, 'Access Providers', 'A container with rights available to Access Providers - DO NOT DELETE!!', 1, 602),
(30, NULL, NULL, NULL, 'Permanent Users', 'A container with rights for Permanent Users - DO NOT DELETE!!', 603, 608),
(31, 29, NULL, NULL, 'Controllers', 'A container with the various controllers and their actions which can be used by the Access Providers', 2, 591),
(32, 29, NULL, NULL, 'Other Rights', 'A list of other rights which can be configured for an Access Provider', 592, 601),
(33, 30, NULL, NULL, 'Controllers', 'A container with the various controllers and their actions which can be used by the Permanent Users', 604, 605),
(34, 30, NULL, NULL, 'Other Rights', 'A list of other rights which can be configured for a Permanent User', 606, 607),
(35, NULL, NULL, NULL, 'Realms', 'A list of realms to which an access provider can belong - DO NOT DELETE!!', 609, 630),
(42, 32, NULL, NULL, 'View users or vouchers not created self', '', 593, 594),
(43, 31, NULL, NULL, 'Vouchers', '', 3, 30),
(44, 43, NULL, NULL, 'index', '', 4, 5),
(45, 31, NULL, NULL, 'PermanentUsers', '', 31, 76),
(46, 45, NULL, NULL, 'index', '', 32, 33),
(58, 31, NULL, NULL, 'AccessProviders', 'Access Providers can only do these actions on any access provider that is a child of the Access Provider', 77, 100),
(59, 58, NULL, NULL, 'index', 'Without this right, the Access Providers option will not be shown in the Access Provider''s menu', 78, 79),
(60, 58, NULL, NULL, 'add', 'Without this right an Access Provider will not be able to create Access Provider children', 80, 81),
(61, 58, NULL, NULL, 'edit', '', 82, 83),
(62, 58, NULL, NULL, 'delete', '', 84, 85),
(63, 32, NULL, NULL, 'Can Change Rights', 'This is a key option to allow an Access Provider the ability to change the rights of any of his Access Provider children', 595, 596),
(64, 32, NULL, NULL, 'Can disable activity recording', 'Can disable Activity Recording on Access Provider children', 597, 598),
(65, 58, NULL, NULL, 'change_password', '', 86, 87),
(67, 31, NULL, NULL, 'Realms', '', 101, 126),
(68, 67, NULL, NULL, 'index', '', 102, 103),
(69, 67, NULL, NULL, 'add', '', 104, 105),
(70, 67, NULL, NULL, 'edit', '', 106, 107),
(71, 67, NULL, NULL, 'delete', '', 108, 109),
(102, 31, NULL, NULL, 'Nas', 'Nas Devices - These rights are also considering the hierarchy of the Access Provider', 127, 182),
(103, 102, NULL, NULL, 'index', 'Without this right there will be no NAS Devices in the AP''s menu', 128, 129),
(104, 102, NULL, NULL, 'add', '', 130, 131),
(105, 102, NULL, NULL, 'edit', '', 132, 133),
(106, 102, NULL, NULL, 'delete', '', 134, 135),
(107, 31, NULL, NULL, 'Tags', 'Tags for NAS Devices', 183, 202),
(108, 107, NULL, NULL, 'index', 'Without this right, there will be no NAS Device tags in the AP''s menu', 184, 185),
(109, 107, NULL, NULL, 'add', '', 186, 187),
(110, 107, NULL, NULL, 'edit', '', 188, 189),
(111, 107, NULL, NULL, 'delete', '', 190, 191),
(112, 102, NULL, NULL, 'manage_tags', 'Attach or remove tags to NAS devices', 136, 137),
(113, 107, NULL, NULL, 'export_csv', 'Exporting the display from the grid to CSV', 192, 193),
(114, 107, NULL, NULL, 'index_for_filter', 'A list for of tags to display on the filter field on the Access Provider grid', 194, 195),
(115, 107, NULL, NULL, 'note_index', 'List notes', 196, 197),
(116, 107, NULL, NULL, 'note_add', '', 198, 199),
(117, 107, NULL, NULL, 'note_del', 'Remove a note of a NAS Tag', 200, 201),
(118, 102, NULL, NULL, 'export_csv', 'Exporting the display of the grid to CSV', 138, 139),
(119, 102, NULL, NULL, 'note_index', 'List notes', 140, 141),
(120, 102, NULL, NULL, 'note_add', '', 142, 143),
(121, 102, NULL, NULL, 'note_del', '', 144, 145),
(122, 67, NULL, NULL, 'export_csv', '', 110, 111),
(123, 67, NULL, NULL, 'index_for_filter', '', 112, 113),
(124, 67, NULL, NULL, 'note_index', '', 114, 115),
(125, 67, NULL, NULL, 'note_add', '', 116, 117),
(126, 67, NULL, NULL, 'note_del', '', 118, 119),
(127, 58, NULL, NULL, 'export_csv', '', 88, 89),
(128, 58, NULL, NULL, 'note_index', '', 90, 91),
(129, 58, NULL, NULL, 'note_add', '', 92, 93),
(130, 58, NULL, NULL, 'note_del', '', 94, 95),
(132, 31, NULL, NULL, 'AcosRights', 'Controller to manage the Rights Tree', 203, 208),
(133, 132, NULL, NULL, 'index_ap', 'List the rights of a specific AP', 204, 205),
(134, 132, NULL, NULL, 'edit_ap', 'Modify the rights of a specific AP by another AP', 206, 207),
(137, 31, NULL, NULL, 'Devices', 'Devices belonging to PermanentUsers', 209, 246),
(138, 137, NULL, NULL, 'index', '', 210, 211),
(142, 35, 'DynamicDetail', 3, 'SA Coast - Struisbaai', NULL, 614, 615),
(146, 35, 'Realm', 30, 'Residence Inn', NULL, 616, 617),
(148, 35, 'Realm', 31, 'Holiday Inn', NULL, 618, 619),
(149, 43, NULL, NULL, 'add', '', 6, 7),
(150, 43, NULL, NULL, 'delete', '', 8, 9),
(151, 31, NULL, NULL, 'Desktop', '', 247, 254),
(152, 151, NULL, NULL, 'desktop_shortcuts', '', 248, 249),
(153, 151, NULL, NULL, 'change_password', '', 250, 251),
(154, 151, NULL, NULL, 'save_wallpaper_selection', '', 252, 253),
(155, 35, 'Realm', 32, 'Simpsons Home', NULL, 620, 621),
(156, 43, NULL, NULL, 'view_basic_info', '', 10, 11),
(157, 43, NULL, NULL, 'edit_basic_info', '', 12, 13),
(158, 43, NULL, NULL, 'private_attr_index', '', 14, 15),
(159, 43, NULL, NULL, 'private_attr_add', '', 16, 17),
(160, 43, NULL, NULL, 'private_attr_edit', '', 18, 19),
(161, 43, NULL, NULL, 'private_attr_delete', '', 20, 21),
(162, 43, NULL, NULL, 'change_password', '', 22, 23),
(163, 43, NULL, NULL, 'export_csv', '', 24, 25),
(164, 43, NULL, NULL, 'export_pdf', '', 26, 27),
(165, 67, NULL, NULL, 'index_ap', '', 120, 121),
(166, 31, NULL, NULL, 'Profiles', '', 255, 276),
(167, 166, NULL, NULL, 'index', '', 256, 257),
(168, 166, NULL, NULL, 'index_ap', 'Dropdown list based on selected Access Provider owner', 258, 259),
(169, 166, NULL, NULL, 'add', '', 260, 261),
(170, 166, NULL, NULL, 'manage_components', '', 262, 263),
(171, 166, NULL, NULL, 'delete', '', 264, 265),
(172, 166, NULL, NULL, 'index_for_filter', '', 266, 267),
(173, 166, NULL, NULL, 'note_index', '', 268, 269),
(174, 166, NULL, NULL, 'note_add', '', 270, 271),
(175, 166, NULL, NULL, 'note_del', '', 272, 273),
(176, 31, NULL, NULL, 'Radaccts', '', 277, 288),
(177, 176, NULL, NULL, 'export_csv', '', 278, 279),
(178, 176, NULL, NULL, 'index', '', 280, 281),
(179, 176, NULL, NULL, 'delete', '', 282, 283),
(180, 176, NULL, NULL, 'kick_active', '', 284, 285),
(181, 176, NULL, NULL, 'close_open', '', 286, 287),
(182, 43, NULL, NULL, 'delete_accounting_data', '', 28, 29),
(184, 45, NULL, NULL, 'add', '', 34, 35),
(185, 45, NULL, NULL, 'delete', '', 36, 37),
(186, 45, NULL, NULL, 'view_basic_info', '', 38, 39),
(187, 45, NULL, NULL, 'edit_basic_info', '', 40, 41),
(188, 45, NULL, NULL, 'view_personal_info', '', 42, 43),
(189, 45, NULL, NULL, 'edit_personal_info', '', 44, 45),
(190, 45, NULL, NULL, 'private_attr_index', '', 46, 47),
(191, 45, NULL, NULL, 'private_attr_add', '', 48, 49),
(192, 45, NULL, NULL, 'private_attr_edit', '', 50, 51),
(193, 45, NULL, NULL, 'private_attr_delete', '', 52, 53),
(194, 45, NULL, NULL, 'change_password', '', 54, 55),
(195, 45, NULL, NULL, 'enable_disable', '', 56, 57),
(196, 45, NULL, NULL, 'export_csv', '', 58, 59),
(197, 45, NULL, NULL, 'note_index', '', 60, 61),
(198, 137, NULL, NULL, 'add', '', 212, 213),
(199, 137, NULL, NULL, 'delete', '', 214, 215),
(200, 137, NULL, NULL, 'view_basic_info', '', 216, 217),
(201, 137, NULL, NULL, 'edit_basic_info', '', 218, 219),
(202, 137, NULL, NULL, 'private_attr_index', '', 220, 221),
(203, 137, NULL, NULL, 'private_attr_add', '', 222, 223),
(204, 137, NULL, NULL, 'private_attr_edit', '', 224, 225),
(205, 137, NULL, NULL, 'private_attr_delete', '', 226, 227),
(206, 137, NULL, NULL, 'enable_disable', '', 228, 229),
(207, 137, NULL, NULL, 'export_csv', '', 230, 231),
(208, 137, NULL, NULL, 'note_index', '', 232, 233),
(209, 31, NULL, NULL, 'FreeRadius', '', 289, 294),
(210, 209, NULL, NULL, 'test_radius', '', 290, 291),
(211, 209, NULL, NULL, 'index', 'Displays the stats of the FreeRADIUS server', 292, 293),
(212, 31, NULL, NULL, 'Radpostauths', '', 295, 304),
(213, 212, NULL, NULL, 'index', '', 296, 297),
(214, 212, NULL, NULL, 'add', '', 298, 299),
(215, 212, NULL, NULL, 'delete', '', 300, 301),
(221, 212, NULL, NULL, 'export_csv', '', 302, 303),
(223, 67, NULL, NULL, 'update_na_realm', '', 122, 123),
(224, 102, NULL, NULL, 'add_direct', '', 146, 147),
(225, 102, NULL, NULL, 'add_open_vpn', '', 148, 149),
(226, 102, NULL, NULL, 'add_dynamic', '', 150, 151),
(227, 102, NULL, NULL, 'add_pptp', '', 152, 153),
(228, 102, NULL, NULL, 'view_openvpn', '', 154, 155),
(229, 102, NULL, NULL, 'edit_openvpn', '', 156, 157),
(230, 102, NULL, NULL, 'view_pptp', '', 158, 159),
(231, 102, NULL, NULL, 'edit_pptp', '', 160, 161),
(232, 102, NULL, NULL, 'view_dynamic', '', 162, 163),
(233, 102, NULL, NULL, 'edit_dynamic', '', 164, 165),
(234, 102, NULL, NULL, 'view_nas', '', 166, 167),
(235, 102, NULL, NULL, 'edit_nas', '', 168, 169),
(236, 102, NULL, NULL, 'view_photo', '', 170, 171),
(237, 102, NULL, NULL, 'upload_photo', '', 172, 173),
(238, 102, NULL, NULL, 'view_map_pref', '', 174, 175),
(239, 102, NULL, NULL, 'edit_map_pref', '', 176, 177),
(240, 102, NULL, NULL, 'delete_map', '', 178, 179),
(241, 102, NULL, NULL, 'edit_map', '', 180, 181),
(243, 67, NULL, NULL, 'view', '', 124, 125),
(246, 45, NULL, NULL, 'restrict_list_of_devices', '', 62, 63),
(247, 45, NULL, NULL, 'edit_tracking', '', 64, 65),
(248, 45, NULL, NULL, 'view_tracking', '', 66, 67),
(249, 45, NULL, NULL, 'note_add', '', 68, 69),
(250, 45, NULL, NULL, 'note_del', '', 70, 71),
(251, 137, NULL, NULL, 'note_add', '', 234, 235),
(252, 137, NULL, NULL, 'note_del', '', 236, 237),
(253, 137, NULL, NULL, 'view_tracking', '', 238, 239),
(254, 137, NULL, NULL, 'edit_tracking', '', 240, 241),
(255, 137, NULL, NULL, 'note_add', '', 242, 243),
(256, 137, NULL, NULL, 'note_del', '', 244, 245),
(258, 31, NULL, NULL, 'ProfileComponents', '', 305, 320),
(259, 258, NULL, NULL, 'index', '', 306, 307),
(260, 258, NULL, NULL, 'add', '', 308, 309),
(261, 258, NULL, NULL, 'edit', '', 310, 311),
(262, 258, NULL, NULL, 'delete', '', 312, 313),
(263, 258, NULL, NULL, 'note_index', '', 314, 315),
(264, 258, NULL, NULL, 'note_add', '', 316, 317),
(265, 258, NULL, NULL, 'note_del', '', 318, 319),
(266, 166, NULL, NULL, 'export_csv', '', 274, 275),
(267, 31, NULL, NULL, 'NaStates', '', 321, 326),
(268, 267, NULL, NULL, 'index', '', 322, 323),
(269, 267, NULL, NULL, 'delete', '', 324, 325),
(271, 58, NULL, NULL, 'view', '', 96, 97),
(272, 58, NULL, NULL, 'enable_disable', '', 98, 99),
(275, 31, NULL, NULL, 'DynamicDetails', '', 327, 376),
(276, 275, NULL, NULL, 'export_csv', '', 328, 329),
(277, 275, NULL, NULL, 'index', '', 330, 331),
(278, 275, NULL, NULL, 'add', '', 332, 333),
(279, 275, NULL, NULL, 'edit', '', 334, 335),
(280, 275, NULL, NULL, 'delete', '', 336, 337),
(281, 275, NULL, NULL, 'view', '', 338, 339),
(282, 275, NULL, NULL, 'upload_logo', '', 340, 341),
(283, 275, NULL, NULL, 'index_photo', '', 342, 343),
(284, 275, NULL, NULL, 'upload_photo', '', 344, 345),
(285, 275, NULL, NULL, 'delete_photo', '', 346, 347),
(286, 275, NULL, NULL, 'edit_photo', '', 348, 349),
(287, 275, NULL, NULL, 'index_page', '', 350, 351),
(288, 275, NULL, NULL, 'add_page', '', 352, 353),
(289, 275, NULL, NULL, 'edit_page', '', 354, 355),
(290, 275, NULL, NULL, 'delete_page', '', 356, 357),
(291, 275, NULL, NULL, 'index_pair', '', 358, 359),
(292, 275, NULL, NULL, 'add_pair', '', 360, 361),
(293, 275, NULL, NULL, 'edit_pair', '', 362, 363),
(294, 275, NULL, NULL, 'delete_pair', '', 364, 365),
(295, 275, NULL, NULL, 'note_index', '', 366, 367),
(296, 275, NULL, NULL, 'note_add', '', 368, 369),
(297, 275, NULL, NULL, 'note_del', '', 370, 371),
(299, 45, NULL, NULL, 'auto_mac_on_off', '', 72, 73),
(300, 32, NULL, NULL, 'Password Manager Only', 'Enabling this option will allow the Access Provider ONLY access to the Password Manager applet', 599, 600),
(301, 45, NULL, NULL, 'view_password', '', 74, 75),
(302, 31, NULL, NULL, 'Actions', '', 377, 384),
(303, 302, NULL, NULL, 'index', '', 378, 379),
(304, 302, NULL, NULL, 'add', '', 380, 381),
(305, 302, NULL, NULL, 'delete', '', 382, 383),
(307, 35, 'DynamicDetail', 4, 'test', NULL, 622, 623),
(309, 275, NULL, NULL, 'edit_settings', '', 372, 373),
(310, 275, NULL, NULL, 'edit_click_to_connect', '', 374, 375),
(311, 31, NULL, NULL, 'Meshes', 'MESHdesk main controller', 385, 454),
(312, 311, NULL, NULL, 'index', '', 386, 387),
(313, 311, NULL, NULL, 'add', '', 388, 389),
(314, 311, NULL, NULL, 'delete', '', 390, 391),
(315, 311, NULL, NULL, 'note_index', '', 392, 393),
(316, 311, NULL, NULL, 'note_add', '', 394, 395),
(317, 311, NULL, NULL, 'note_del', '', 396, 397),
(318, 311, NULL, NULL, 'mesh_entries_index', '', 398, 399),
(319, 311, NULL, NULL, 'mesh_entry_add', '', 400, 401),
(320, 311, NULL, NULL, 'mesh_entry_edit', '', 402, 403),
(321, 311, NULL, NULL, 'mesh_entry_view', '', 404, 405),
(322, 311, NULL, NULL, 'mesh_entry_delete', '', 406, 407),
(323, 311, NULL, NULL, 'mesh_settings_view', '', 408, 409),
(324, 311, NULL, NULL, 'mesh_settings_edit', '', 410, 411),
(325, 311, NULL, NULL, 'mesh_exits_index', '', 412, 413),
(326, 311, NULL, NULL, 'mesh_exit_add', '', 414, 415),
(327, 311, NULL, NULL, 'mesh_exit_edit', '', 416, 417),
(328, 311, NULL, NULL, 'mesh_exit_view', '', 418, 419),
(329, 311, NULL, NULL, 'mesh_exit_delete', '', 420, 421),
(330, 311, NULL, NULL, 'mesh_nodes_index', '', 422, 423),
(332, 311, NULL, NULL, 'mesh_node_add', '', 424, 425),
(333, 311, NULL, NULL, 'mesh_node_edit', '', 426, 427),
(334, 311, NULL, NULL, 'mesh_node_view', '', 428, 429),
(335, 311, NULL, NULL, 'mesh_node_delete', '', 430, 431),
(336, 311, NULL, NULL, 'mesh_entry_points', '', 432, 433),
(337, 311, NULL, NULL, 'node_common_settings_view', '', 434, 435),
(338, 311, NULL, NULL, 'mesh_common_settings_edit', '', 436, 437),
(339, 311, NULL, NULL, 'static_entry_options', '', 438, 439),
(340, 311, NULL, NULL, 'static_exit_options', '', 440, 441),
(341, 311, NULL, NULL, 'map_pref_view', '', 442, 443),
(342, 311, NULL, NULL, 'map_pref_edit', '', 444, 445),
(343, 311, NULL, NULL, 'map_node_save', '', 446, 447),
(344, 311, NULL, NULL, 'map_node_delete', '', 448, 449),
(345, 311, NULL, NULL, 'nodes_avail_for_map', '', 450, 451),
(346, 31, NULL, NULL, 'NodeActions', '', 455, 462),
(347, 346, NULL, NULL, 'index', '', 456, 457),
(348, 346, NULL, NULL, 'add', '', 458, 459),
(349, 346, NULL, NULL, 'delete', '', 460, 461),
(350, 31, NULL, NULL, 'Ssids', 'Optional option for Permanent Users to limit their connections', 463, 474),
(351, 350, NULL, NULL, 'index', '', 464, 465),
(352, 350, NULL, NULL, 'index_ap', 'List might changed based on the Access Provider specified', 466, 467),
(353, 350, NULL, NULL, 'add', '', 468, 469),
(354, 350, NULL, NULL, 'delete', '', 470, 471),
(355, 350, NULL, NULL, 'edit', '', 472, 473),
(356, 31, NULL, NULL, 'LicensedDevices', 'Add-on - non standard', 475, 484),
(357, 356, NULL, NULL, 'index', '', 476, 477),
(358, 356, NULL, NULL, 'add', '', 478, 479),
(359, 356, NULL, NULL, 'delete', '', 480, 481),
(360, 356, NULL, NULL, 'edit', '', 482, 483),
(361, 31, NULL, NULL, 'NodeLists', 'Additional convenient add-on to MESHdesk', 485, 488),
(362, 361, NULL, NULL, 'index', '', 486, 487),
(363, 31, NULL, NULL, 'DynamicClients', 'Part of FreeRADIUS version 3.x', 489, 518),
(364, 363, NULL, NULL, 'index', '', 490, 491),
(365, 363, NULL, NULL, 'clients_avail_for_map', '', 492, 493),
(366, 363, NULL, NULL, 'add', '', 494, 495),
(367, 363, NULL, NULL, 'delete', '', 496, 497),
(368, 363, NULL, NULL, 'edit', '', 498, 499),
(369, 363, NULL, NULL, 'view', '', 500, 501),
(370, 363, NULL, NULL, 'view_photo', '', 502, 503),
(371, 363, NULL, NULL, 'note_index', '', 504, 505),
(372, 363, NULL, NULL, 'note_add', '', 506, 507),
(373, 363, NULL, NULL, 'note_del', '', 508, 509),
(374, 363, NULL, NULL, 'view_map_pref', '', 510, 511),
(375, 363, NULL, NULL, 'edit_map_pref', '', 512, 513),
(376, 363, NULL, NULL, 'delete_map', '', 514, 515),
(377, 363, NULL, NULL, 'edit_map', '', 516, 517),
(378, 31, NULL, NULL, 'DynamicClientStates', '', 519, 524),
(379, 378, NULL, NULL, 'index', '', 520, 521),
(380, 378, NULL, NULL, 'delete', '', 522, 523),
(381, 31, NULL, NULL, 'UnknownDynamicClients', '', 525, 532),
(382, 381, NULL, NULL, 'index', '', 526, 527),
(383, 381, NULL, NULL, 'edit', '', 528, 529),
(384, 381, NULL, NULL, 'delete', '', 530, 531),
(385, 31, NULL, NULL, 'ApProfiles', 'Access Point Profiles', 533, 586),
(386, 385, NULL, NULL, 'index', '', 534, 535),
(387, 385, NULL, NULL, 'add', '', 536, 537),
(388, 385, NULL, NULL, 'delete', '', 538, 539),
(389, 385, NULL, NULL, 'note_index', '', 540, 541),
(390, 385, NULL, NULL, 'note_add', '', 542, 543),
(391, 385, NULL, NULL, 'note_del', '', 544, 545),
(392, 385, NULL, NULL, 'ap_profile_entries_index', '', 546, 547),
(393, 385, NULL, NULL, 'ap_profile_entry_add', '', 548, 549),
(394, 385, NULL, NULL, 'ap_profile_entry_edit', '', 550, 551),
(395, 385, NULL, NULL, 'ap_profile_entry_view', '', 552, 553),
(396, 385, NULL, NULL, 'ap_profile_entry_delete', '', 554, 555),
(397, 385, NULL, NULL, 'ap_profile_exits_index', '', 556, 557),
(398, 385, NULL, NULL, 'ap_profile_exit_add', '', 558, 559),
(399, 385, NULL, NULL, 'ap_profile_exit_edit', '', 560, 561),
(400, 385, NULL, NULL, 'ap_profile_exit_view', '', 562, 563),
(401, 385, NULL, NULL, 'ap_profile_exit_delete', '', 564, 565),
(402, 385, NULL, NULL, 'ap_profile_entry_points', 'List available Entry Points', 566, 567),
(403, 385, NULL, NULL, 'ap_common_settings_view', '', 568, 569),
(404, 385, NULL, NULL, 'ap_common_settings_edit', '', 570, 571),
(405, 385, NULL, NULL, 'advanced_settings_for_model', '', 572, 573),
(406, 385, NULL, NULL, 'ap_profile_ap_index', '', 574, 575),
(407, 385, NULL, NULL, 'ap_profile_ap_add', '', 576, 577),
(408, 385, NULL, NULL, 'ap_profile_ap_delete', '', 578, 579),
(409, 385, NULL, NULL, 'ap_profile_ap_edit', '', 580, 581),
(410, 385, NULL, NULL, 'ap_profile_ap_view', '', 582, 583),
(411, 31, NULL, NULL, 'Aps', '', 587, 590),
(412, 411, NULL, NULL, 'index', '', 588, 589),
(413, 385, NULL, NULL, 'ap_profile_exit_add_defaults', '', 584, 585),
(414, 311, NULL, NULL, 'mesh_exit_add_defaults', '', 452, 453),
(415, 35, 'Realm', 36, 'Mahasiswa', NULL, 624, 625),
(416, 35, 'Realm', 37, 'Dosen', NULL, 626, 627),
(417, 35, 'Realm', 38, 'Karyawan', NULL, 628, 629);

-- --------------------------------------------------------

--
-- Struktur dari tabel `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `na_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aps`
--

CREATE TABLE IF NOT EXISTS `aps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mac` varchar(255) NOT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `last_contact_from_ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_actions`
--

CREATE TABLE IF NOT EXISTS `ap_actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ap_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_loads`
--

CREATE TABLE IF NOT EXISTS `ap_loads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_id` int(11) DEFAULT NULL,
  `mem_total` int(11) DEFAULT NULL,
  `mem_free` int(11) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `system_time` varchar(255) NOT NULL,
  `load_1` float(2,2) NOT NULL,
  `load_2` float(2,2) NOT NULL,
  `load_3` float(2,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profiles`
--

CREATE TABLE IF NOT EXISTS `ap_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `ap_profiles`
--

INSERT INTO `ap_profiles` (`id`, `name`, `user_id`, `created`, `modified`, `available_to_siblings`) VALUES
(14, 'Hotel California', 44, '2016-04-30 11:00:51', '2016-04-30 11:00:51', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_entries`
--

CREATE TABLE IF NOT EXISTS `ap_profile_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `isolate` tinyint(1) NOT NULL DEFAULT '0',
  `encryption` enum('none','wep','psk','psk2','wpa','wpa2') DEFAULT 'none',
  `key` varchar(255) NOT NULL DEFAULT '',
  `auth_server` varchar(255) NOT NULL DEFAULT '',
  `auth_secret` varchar(255) NOT NULL DEFAULT '',
  `dynamic_vlan` tinyint(1) NOT NULL DEFAULT '0',
  `frequency_band` enum('both','two','five') DEFAULT 'both',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `chk_maxassoc` tinyint(1) NOT NULL DEFAULT '0',
  `maxassoc` int(6) DEFAULT '100',
  `macfilter` enum('disable','allow','deny') DEFAULT 'disable',
  `permanent_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `ap_profile_entries`
--

INSERT INTO `ap_profile_entries` (`id`, `ap_profile_id`, `name`, `hidden`, `isolate`, `encryption`, `key`, `auth_server`, `auth_secret`, `dynamic_vlan`, `frequency_band`, `created`, `modified`, `chk_maxassoc`, `maxassoc`, `macfilter`, `permanent_user_id`) VALUES
(17, 14, 'Hotel California', 0, 0, 'none', '', '', '', 0, 'both', '2016-04-30 11:01:14', '2016-04-30 11:35:11', 0, 100, 'disable', 0),
(18, 14, 'Test', 0, 0, 'none', '', '', '', 0, 'both', '2016-05-10 05:16:57', '2016-05-10 05:16:57', 0, 100, 'disable', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_exits`
--

CREATE TABLE IF NOT EXISTS `ap_profile_exits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) DEFAULT NULL,
  `type` enum('bridge','tagged_bridge','nat','captive_portal') DEFAULT 'bridge',
  `vlan` int(4) DEFAULT NULL,
  `auto_dynamic_client` tinyint(1) NOT NULL DEFAULT '0',
  `realm_list` varchar(128) NOT NULL DEFAULT '',
  `auto_login_page` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_detail_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `ap_profile_exits`
--

INSERT INTO `ap_profile_exits` (`id`, `ap_profile_id`, `type`, `vlan`, `auto_dynamic_client`, `realm_list`, `auto_login_page`, `dynamic_detail_id`, `created`, `modified`) VALUES
(23, 14, 'captive_portal', NULL, 1, '35', 1, 3, '2016-05-10 05:23:30', '2016-05-10 10:30:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_exit_ap_profile_entries`
--

CREATE TABLE IF NOT EXISTS `ap_profile_exit_ap_profile_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_exit_id` int(11) NOT NULL,
  `ap_profile_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data untuk tabel `ap_profile_exit_ap_profile_entries`
--

INSERT INTO `ap_profile_exit_ap_profile_entries` (`id`, `ap_profile_exit_id`, `ap_profile_entry_id`, `created`, `modified`) VALUES
(56, 23, 18, '2016-05-10 10:30:15', '2016-05-10 10:30:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_exit_captive_portals`
--

CREATE TABLE IF NOT EXISTS `ap_profile_exit_captive_portals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_exit_id` int(11) NOT NULL,
  `radius_1` varchar(128) NOT NULL,
  `radius_2` varchar(128) NOT NULL DEFAULT '',
  `radius_secret` varchar(128) NOT NULL,
  `radius_nasid` varchar(128) NOT NULL,
  `uam_url` varchar(255) NOT NULL,
  `uam_secret` varchar(255) NOT NULL,
  `walled_garden` varchar(255) NOT NULL,
  `swap_octets` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `mac_auth` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_enable` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_ip` varchar(128) NOT NULL DEFAULT '',
  `proxy_port` int(11) NOT NULL DEFAULT '3128',
  `proxy_auth_username` varchar(128) NOT NULL DEFAULT '',
  `proxy_auth_password` varchar(128) NOT NULL DEFAULT '',
  `coova_optional` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ap_profile_exit_captive_portals`
--

INSERT INTO `ap_profile_exit_captive_portals` (`id`, `ap_profile_exit_id`, `radius_1`, `radius_2`, `radius_secret`, `radius_nasid`, `uam_url`, `uam_secret`, `walled_garden`, `swap_octets`, `created`, `modified`, `mac_auth`, `proxy_enable`, `proxy_ip`, `proxy_port`, `proxy_auth_username`, `proxy_auth_password`, `coova_optional`) VALUES
(5, 23, '198.27.111.78', '', 'testing123', '', 'http://198.27.111.78/cake2/rd_cake/dynamic_details/chilli_browser_detect/', 'greatsecret', '', 0, '2016-05-10 05:23:30', '2016-05-10 10:30:15', 1, 0, '', 3128, '', '', 'ssid=radiusdesk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_notes`
--

CREATE TABLE IF NOT EXISTS `ap_profile_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_settings`
--

CREATE TABLE IF NOT EXISTS `ap_profile_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `heartbeat_interval` int(5) NOT NULL DEFAULT '60',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `password_hash` varchar(100) NOT NULL DEFAULT '',
  `tz_name` varchar(128) NOT NULL DEFAULT 'America/New York',
  `tz_value` varchar(128) NOT NULL DEFAULT 'EST5EDT,M3.2.0,M11.1.0',
  `country` varchar(5) NOT NULL DEFAULT 'US',
  `gw_dhcp_timeout` int(5) NOT NULL DEFAULT '120',
  `gw_use_previous` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot_time` int(5) NOT NULL DEFAULT '600',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ap_profile_settings`
--

INSERT INTO `ap_profile_settings` (`id`, `ap_profile_id`, `password`, `heartbeat_interval`, `heartbeat_dead_after`, `password_hash`, `tz_name`, `tz_value`, `country`, `gw_dhcp_timeout`, `gw_use_previous`, `gw_auto_reboot`, `gw_auto_reboot_time`, `created`, `modified`) VALUES
(5, 14, 'admin', 60, 300, '', 'Africa/Johannesburg', 'SAST-2', 'ZA', 120, 1, 0, 600, '2016-04-30 11:02:17', '2016-04-30 11:02:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_profile_specifics`
--

CREATE TABLE IF NOT EXISTS `ap_profile_specifics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_profile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_stations`
--

CREATE TABLE IF NOT EXISTS `ap_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_id` int(11) DEFAULT NULL,
  `ap_profile_entry_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_systems`
--

CREATE TABLE IF NOT EXISTS `ap_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ap_wifi_settings`
--

CREATE TABLE IF NOT EXISTS `ap_wifi_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3284 ;

--
-- Dumping data untuk tabel `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(3115, NULL, 'Group', 8, NULL, 1, 4),
(3116, NULL, 'Group', 9, NULL, 5, 18),
(3117, NULL, 'Group', 10, NULL, 19, 198),
(3118, 3115, 'User', 44, NULL, 2, 3),
(3154, 3117, 'User', 70, NULL, 20, 21),
(3155, 3117, 'User', 71, NULL, 22, 23),
(3156, 3117, 'User', 72, NULL, 24, 25),
(3157, 3117, 'User', 73, NULL, 26, 27),
(3158, 3117, 'User', 74, NULL, 28, 29),
(3159, 3117, 'User', 75, NULL, 30, 31),
(3160, 3117, 'User', 76, NULL, 32, 33),
(3161, 3117, 'User', 77, NULL, 34, 35),
(3162, 3117, 'User', 78, NULL, 36, 37),
(3165, 3117, 'User', 81, NULL, 38, 39),
(3166, 3117, 'User', 82, NULL, 40, 41),
(3167, 3117, 'User', 83, NULL, 42, 43),
(3168, 3117, 'User', 84, NULL, 44, 45),
(3169, 3117, 'User', 85, NULL, 46, 47),
(3170, 3117, 'User', 86, NULL, 48, 49),
(3171, 3117, 'User', 87, NULL, 50, 51),
(3172, 3117, 'User', 88, NULL, 52, 53),
(3173, 3117, 'User', 89, NULL, 54, 55),
(3175, 3117, 'User', 91, NULL, 56, 57),
(3176, 3117, 'User', 92, NULL, 58, 59),
(3177, 3117, 'User', 93, NULL, 60, 61),
(3178, 3117, 'User', 94, NULL, 62, 63),
(3179, 3117, 'User', 95, NULL, 64, 65),
(3180, 3117, 'User', 96, NULL, 66, 67),
(3181, 3117, 'User', 97, NULL, 68, 69),
(3182, 3117, 'User', 98, NULL, 70, 71),
(3183, 3117, 'User', 99, NULL, 72, 73),
(3184, 3117, 'User', 100, NULL, 74, 75),
(3185, 3117, 'User', 101, NULL, 76, 77),
(3186, 3117, 'User', 102, NULL, 78, 79),
(3187, 3117, 'User', 103, NULL, 80, 81),
(3188, 3117, 'User', 104, NULL, 82, 83),
(3189, 3117, 'User', 105, NULL, 84, 85),
(3190, 3117, 'User', 106, NULL, 86, 87),
(3191, 3117, 'User', 107, NULL, 88, 89),
(3192, 3117, 'User', 108, NULL, 90, 91),
(3193, 3117, 'User', 109, NULL, 92, 93),
(3194, 3117, 'User', 110, NULL, 94, 95),
(3195, 3117, 'User', 111, NULL, 96, 97),
(3196, 3117, 'User', 112, NULL, 98, 99),
(3197, 3117, 'User', 113, NULL, 100, 101),
(3198, 3117, 'User', 114, NULL, 102, 103),
(3199, 3117, 'User', 115, NULL, 104, 105),
(3200, 3117, 'User', 116, NULL, 106, 107),
(3201, 3117, 'User', 117, NULL, 108, 109),
(3202, 3117, 'User', 118, NULL, 110, 111),
(3203, 3117, 'User', 119, NULL, 112, 113),
(3204, 3117, 'User', 120, NULL, 114, 115),
(3205, 3117, 'User', 121, NULL, 116, 117),
(3206, 3117, 'User', 122, NULL, 118, 119),
(3207, 3117, 'User', 123, NULL, 120, 121),
(3208, 3117, 'User', 124, NULL, 122, 123),
(3209, 3117, 'User', 125, NULL, 124, 125),
(3210, 3117, 'User', 126, NULL, 126, 127),
(3211, 3117, 'User', 127, NULL, 128, 129),
(3212, 3117, 'User', 128, NULL, 130, 131),
(3213, 3117, 'User', 129, NULL, 132, 133),
(3214, 3117, 'User', 130, NULL, 134, 135),
(3215, 3117, 'User', 131, NULL, 136, 137),
(3216, 3117, 'User', 132, NULL, 138, 139),
(3217, 3117, 'User', 133, NULL, 140, 141),
(3218, 3117, 'User', 134, NULL, 142, 143),
(3219, 3117, 'User', 135, NULL, 144, 145),
(3220, 3117, 'User', 136, NULL, 146, 147),
(3221, 3117, 'User', 137, NULL, 148, 149),
(3222, 3117, 'User', 138, NULL, 150, 151),
(3223, 3117, 'User', 139, NULL, 152, 153),
(3224, 3117, 'User', 140, NULL, 154, 155),
(3225, 3117, 'User', 141, NULL, 156, 157),
(3226, 3117, 'User', 142, NULL, 158, 159),
(3227, 3117, 'User', 143, NULL, 160, 161),
(3228, 3117, 'User', 144, NULL, 162, 163),
(3229, 3117, 'User', 145, NULL, 164, 165),
(3230, 3117, 'User', 146, NULL, 166, 167),
(3231, 3117, 'User', 147, NULL, 168, 169),
(3232, 3117, 'User', 148, NULL, 170, 171),
(3233, 3117, 'User', 149, NULL, 172, 173),
(3234, 3117, 'User', 150, NULL, 174, 175),
(3235, 3117, 'User', 151, NULL, 176, 177),
(3236, 3117, 'User', 152, NULL, 178, 179),
(3244, NULL, 'User', 160, NULL, 199, 200),
(3248, 3116, 'User', 163, NULL, 6, 7),
(3254, 3116, 'User', 168, NULL, 8, 9),
(3255, 3116, 'User', 169, NULL, 10, 11),
(3257, 3117, 'User', 171, NULL, 180, 181),
(3263, 3117, 'User', 177, NULL, 182, 183),
(3264, 3116, 'User', 178, NULL, 12, 13),
(3268, 3116, 'User', 182, NULL, 14, 15),
(3273, 3117, 'User', 187, NULL, 184, 185),
(3276, 3116, 'User', 190, NULL, 16, 17),
(3277, 3117, 'User', 0, NULL, 186, 187),
(3278, 3117, 'User', 0, NULL, 188, 189),
(3279, 3117, 'User', 193, NULL, 190, 191),
(3280, 3117, 'User', 194, NULL, 192, 193),
(3281, 3117, 'User', 195, NULL, 194, 195),
(3283, 3117, 'User', 197, NULL, 196, 197);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=364 ;

--
-- Dumping data untuk tabel `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(16, 3116, 44, '1', '1', '1', '1'),
(17, 3116, 46, '1', '1', '1', '1'),
(18, 3116, 59, '1', '1', '1', '1'),
(19, 3116, 60, '1', '1', '1', '1'),
(20, 3116, 62, '1', '1', '1', '1'),
(21, 3116, 42, '-1', '-1', '-1', '-1'),
(22, 3116, 61, '1', '1', '1', '1'),
(23, 3116, 63, '-1', '-1', '-1', '-1'),
(24, 3116, 64, '1', '1', '1', '1'),
(25, 3116, 65, '1', '1', '1', '1'),
(61, 3116, 68, '1', '1', '1', '1'),
(62, 3116, 69, '1', '1', '1', '1'),
(63, 3116, 70, '1', '1', '1', '1'),
(64, 3116, 71, '1', '1', '1', '1'),
(75, 3116, 103, '1', '1', '1', '1'),
(76, 3116, 104, '1', '1', '1', '1'),
(77, 3116, 105, '1', '1', '1', '1'),
(78, 3116, 106, '1', '1', '1', '1'),
(79, 3116, 108, '1', '1', '1', '1'),
(80, 3116, 109, '1', '1', '1', '1'),
(81, 3116, 110, '1', '1', '1', '1'),
(82, 3116, 111, '1', '1', '1', '1'),
(83, 3116, 112, '1', '1', '1', '1'),
(86, 3116, 117, '1', '1', '1', '1'),
(87, 3116, 116, '1', '1', '1', '1'),
(88, 3116, 115, '1', '1', '1', '1'),
(89, 3116, 114, '1', '1', '1', '1'),
(90, 3116, 113, '1', '1', '1', '1'),
(91, 3116, 118, '1', '1', '1', '1'),
(92, 3116, 119, '1', '1', '1', '1'),
(93, 3116, 120, '1', '1', '1', '1'),
(94, 3116, 121, '1', '1', '1', '1'),
(95, 3116, 122, '1', '1', '1', '1'),
(96, 3116, 123, '1', '1', '1', '1'),
(97, 3116, 124, '1', '1', '1', '1'),
(98, 3116, 125, '1', '1', '1', '1'),
(99, 3116, 126, '1', '1', '1', '1'),
(100, 3116, 127, '1', '1', '1', '1'),
(101, 3116, 128, '1', '1', '1', '1'),
(102, 3116, 129, '1', '1', '1', '1'),
(103, 3116, 130, '1', '1', '1', '1'),
(108, 3116, 133, '1', '1', '1', '1'),
(109, 3116, 134, '1', '1', '1', '1'),
(112, 3116, 138, '1', '1', '1', '1'),
(113, 3116, 149, '1', '1', '1', '1'),
(114, 3116, 150, '1', '1', '1', '1'),
(115, 3116, 152, '1', '1', '1', '1'),
(116, 3255, 46, '1', '1', '1', '1'),
(117, 3255, 138, '1', '1', '1', '1'),
(118, 3255, 44, '1', '1', '1', '1'),
(119, 3254, 46, '1', '1', '1', '1'),
(120, 3116, 153, '1', '1', '1', '1'),
(121, 3116, 154, '1', '1', '1', '1'),
(122, 3254, 155, '1', '1', '1', '1'),
(123, 3116, 163, '1', '1', '1', '1'),
(124, 3116, 162, '1', '1', '1', '1'),
(125, 3116, 161, '1', '1', '1', '1'),
(126, 3116, 160, '1', '1', '1', '1'),
(127, 3116, 159, '1', '1', '1', '1'),
(128, 3116, 158, '1', '1', '1', '1'),
(129, 3116, 157, '1', '1', '1', '1'),
(130, 3116, 156, '1', '1', '1', '1'),
(131, 3116, 164, '1', '1', '1', '1'),
(132, 3116, 165, '1', '1', '1', '1'),
(133, 3255, 32, '1', '1', '-1', '-1'),
(134, 3255, 148, '-1', '-1', '-1', '-1'),
(135, 3255, 146, '-1', '-1', '-1', '-1'),
(136, 3254, 148, '1', '1', '1', '1'),
(137, 3254, 146, '1', '1', '1', '1'),
(138, 3116, 167, '1', '1', '1', '1'),
(139, 3116, 168, '1', '1', '1', '1'),
(140, 3116, 175, '1', '1', '1', '1'),
(141, 3116, 174, '1', '1', '1', '1'),
(142, 3116, 173, '1', '1', '1', '1'),
(143, 3116, 172, '1', '1', '1', '1'),
(144, 3116, 170, '1', '1', '1', '1'),
(145, 3116, 169, '1', '1', '1', '1'),
(146, 3116, 171, '1', '1', '1', '1'),
(147, 3116, 181, '1', '1', '1', '1'),
(148, 3116, 180, '1', '1', '1', '1'),
(149, 3116, 179, '1', '1', '1', '1'),
(150, 3116, 178, '1', '1', '1', '1'),
(151, 3116, 177, '1', '1', '1', '1'),
(152, 3116, 182, '1', '1', '1', '1'),
(153, 3116, 184, '1', '1', '1', '1'),
(154, 3116, 185, '1', '1', '1', '1'),
(155, 3116, 186, '1', '1', '1', '1'),
(156, 3116, 187, '1', '1', '1', '1'),
(157, 3116, 188, '1', '1', '1', '1'),
(158, 3116, 189, '1', '1', '1', '1'),
(159, 3116, 190, '1', '1', '1', '1'),
(160, 3116, 191, '1', '1', '1', '1'),
(161, 3116, 192, '1', '1', '1', '1'),
(162, 3116, 193, '1', '1', '1', '1'),
(163, 3116, 194, '1', '1', '1', '1'),
(164, 3116, 195, '1', '1', '1', '1'),
(165, 3116, 197, '1', '1', '1', '1'),
(166, 3116, 196, '1', '1', '1', '1'),
(167, 3116, 206, '1', '1', '1', '1'),
(168, 3116, 205, '1', '1', '1', '1'),
(169, 3116, 204, '1', '1', '1', '1'),
(170, 3116, 203, '1', '1', '1', '1'),
(171, 3116, 202, '1', '1', '1', '1'),
(172, 3116, 201, '1', '1', '1', '1'),
(173, 3116, 200, '1', '1', '1', '1'),
(174, 3116, 199, '1', '1', '1', '1'),
(175, 3116, 198, '1', '1', '1', '1'),
(176, 3116, 207, '1', '1', '1', '1'),
(177, 3116, 208, '1', '1', '1', '1'),
(178, 3255, 155, '1', '1', '1', '1'),
(179, 3254, 195, '1', '1', '1', '1'),
(180, 3116, 210, '1', '1', '1', '1'),
(181, 3116, 211, '1', '1', '1', '1'),
(183, 3116, 213, '1', '1', '1', '1'),
(184, 3116, 221, '1', '1', '1', '1'),
(185, 3116, 223, '1', '1', '1', '1'),
(186, 3116, 241, '1', '1', '1', '1'),
(187, 3116, 240, '1', '1', '1', '1'),
(188, 3116, 239, '1', '1', '1', '1'),
(189, 3116, 238, '1', '1', '1', '1'),
(190, 3116, 237, '1', '1', '1', '1'),
(191, 3116, 236, '1', '1', '1', '1'),
(192, 3116, 235, '1', '1', '1', '1'),
(193, 3116, 234, '1', '1', '1', '1'),
(194, 3116, 233, '1', '1', '1', '1'),
(195, 3116, 232, '1', '1', '1', '1'),
(196, 3116, 231, '1', '1', '1', '1'),
(197, 3116, 230, '1', '1', '1', '1'),
(198, 3116, 229, '1', '1', '1', '1'),
(199, 3116, 228, '1', '1', '1', '1'),
(200, 3116, 227, '1', '1', '1', '1'),
(201, 3116, 226, '1', '1', '1', '1'),
(202, 3116, 225, '1', '1', '1', '1'),
(203, 3116, 224, '1', '1', '1', '1'),
(204, 3116, 243, '1', '1', '1', '1'),
(206, 3116, 248, '1', '1', '1', '1'),
(207, 3116, 247, '1', '1', '1', '1'),
(208, 3116, 246, '1', '1', '1', '1'),
(209, 3116, 215, '1', '1', '1', '1'),
(210, 3116, 214, '1', '1', '1', '1'),
(211, 3116, 249, '1', '1', '1', '1'),
(212, 3116, 250, '1', '1', '1', '1'),
(213, 3116, 256, '1', '1', '1', '1'),
(214, 3116, 255, '1', '1', '1', '1'),
(215, 3116, 254, '1', '1', '1', '1'),
(216, 3116, 253, '1', '1', '1', '1'),
(217, 3116, 259, '1', '1', '1', '1'),
(218, 3116, 260, '1', '1', '1', '1'),
(219, 3116, 261, '1', '1', '1', '1'),
(220, 3116, 263, '1', '1', '1', '1'),
(221, 3116, 262, '1', '1', '1', '1'),
(222, 3116, 264, '1', '1', '1', '1'),
(223, 3116, 265, '1', '1', '1', '1'),
(224, 3116, 268, '1', '1', '1', '1'),
(225, 3116, 269, '1', '1', '1', '1'),
(226, 3116, 272, '1', '1', '1', '1'),
(227, 3116, 271, '1', '1', '1', '1'),
(229, 3116, 276, '1', '1', '1', '1'),
(230, 3116, 297, '1', '1', '1', '1'),
(231, 3116, 296, '1', '1', '1', '1'),
(232, 3116, 295, '1', '1', '1', '1'),
(233, 3116, 294, '1', '1', '1', '1'),
(234, 3116, 293, '1', '1', '1', '1'),
(235, 3116, 292, '1', '1', '1', '1'),
(236, 3116, 291, '1', '1', '1', '1'),
(237, 3116, 290, '1', '1', '1', '1'),
(238, 3116, 289, '1', '1', '1', '1'),
(239, 3116, 288, '1', '1', '1', '1'),
(240, 3116, 287, '1', '1', '1', '1'),
(241, 3116, 286, '1', '1', '1', '1'),
(242, 3116, 285, '1', '1', '1', '1'),
(243, 3116, 284, '1', '1', '1', '1'),
(244, 3116, 283, '1', '1', '1', '1'),
(245, 3116, 282, '1', '1', '1', '1'),
(246, 3116, 281, '1', '1', '1', '1'),
(247, 3116, 280, '1', '1', '1', '1'),
(248, 3116, 279, '1', '1', '1', '1'),
(249, 3116, 278, '1', '1', '1', '1'),
(250, 3116, 277, '1', '1', '1', '1'),
(251, 3116, 299, '1', '1', '1', '1'),
(252, 3116, 300, '-1', '-1', '-1', '-1'),
(253, 3268, 300, '-1', '-1', '-1', '-1'),
(254, 3268, 42, '1', '1', '1', '1'),
(255, 3116, 301, '1', '1', '1', '1'),
(256, 3116, 303, '1', '1', '1', '1'),
(257, 3116, 304, '1', '1', '1', '1'),
(258, 3116, 305, '1', '1', '1', '1'),
(259, 3116, 309, '1', '1', '1', '1'),
(260, 3116, 310, '1', '1', '1', '1'),
(261, 3116, 312, '1', '1', '1', '1'),
(262, 3116, 313, '1', '1', '1', '1'),
(263, 3116, 314, '1', '1', '1', '1'),
(264, 3116, 315, '1', '1', '1', '1'),
(265, 3116, 316, '1', '1', '1', '1'),
(266, 3116, 317, '1', '1', '1', '1'),
(267, 3116, 318, '1', '1', '1', '1'),
(268, 3116, 319, '1', '1', '1', '1'),
(269, 3116, 320, '1', '1', '1', '1'),
(270, 3116, 321, '1', '1', '1', '1'),
(271, 3116, 322, '1', '1', '1', '1'),
(272, 3116, 323, '1', '1', '1', '1'),
(273, 3116, 324, '1', '1', '1', '1'),
(274, 3116, 325, '1', '1', '1', '1'),
(275, 3116, 326, '1', '1', '1', '1'),
(276, 3116, 327, '1', '1', '1', '1'),
(277, 3116, 328, '1', '1', '1', '1'),
(278, 3116, 329, '1', '1', '1', '1'),
(279, 3116, 330, '1', '1', '1', '1'),
(280, 3116, 332, '1', '1', '1', '1'),
(281, 3116, 333, '1', '1', '1', '1'),
(282, 3116, 334, '1', '1', '1', '1'),
(283, 3116, 335, '1', '1', '1', '1'),
(284, 3116, 336, '1', '1', '1', '1'),
(285, 3116, 337, '1', '1', '1', '1'),
(286, 3116, 338, '1', '1', '1', '1'),
(287, 3116, 339, '1', '1', '1', '1'),
(288, 3116, 340, '1', '1', '1', '1'),
(289, 3116, 341, '1', '1', '1', '1'),
(290, 3116, 342, '1', '1', '1', '1'),
(291, 3116, 343, '1', '1', '1', '1'),
(292, 3116, 344, '1', '1', '1', '1'),
(293, 3116, 345, '1', '1', '1', '1'),
(294, 3116, 347, '1', '1', '1', '1'),
(295, 3116, 348, '1', '1', '1', '1'),
(296, 3116, 349, '1', '1', '1', '1'),
(297, 3116, 355, '1', '1', '1', '1'),
(298, 3116, 354, '1', '1', '1', '1'),
(299, 3116, 353, '1', '1', '1', '1'),
(300, 3116, 352, '1', '1', '1', '1'),
(301, 3116, 351, '1', '1', '1', '1'),
(302, 3116, 357, '1', '1', '1', '1'),
(303, 3116, 358, '1', '1', '1', '1'),
(304, 3116, 359, '1', '1', '1', '1'),
(305, 3116, 362, '1', '1', '1', '1'),
(306, 3116, 360, '1', '1', '1', '1'),
(308, 3268, 44, '1', '1', '1', '1'),
(309, 3268, 43, '1', '1', '1', '1'),
(310, 3268, 149, '1', '1', '1', '1'),
(311, 3268, 150, '1', '1', '1', '1'),
(312, 3268, 156, '1', '1', '1', '1'),
(313, 3268, 63, '-1', '-1', '-1', '-1'),
(314, 3268, 64, '1', '1', '1', '1'),
(315, 3276, 44, '1', '1', '1', '1'),
(316, 3268, 46, '1', '1', '1', '1'),
(317, 3116, 384, '1', '1', '1', '1'),
(318, 3116, 383, '1', '1', '1', '1'),
(319, 3116, 382, '1', '1', '1', '1'),
(320, 3116, 379, '1', '1', '1', '1'),
(321, 3116, 380, '1', '1', '1', '1'),
(322, 3116, 364, '1', '1', '1', '1'),
(323, 3116, 365, '1', '1', '1', '1'),
(324, 3116, 366, '1', '1', '1', '1'),
(325, 3116, 367, '1', '1', '1', '1'),
(326, 3116, 368, '1', '1', '1', '1'),
(327, 3116, 369, '1', '1', '1', '1'),
(328, 3116, 370, '1', '1', '1', '1'),
(329, 3116, 371, '1', '1', '1', '1'),
(330, 3116, 372, '1', '1', '1', '1'),
(331, 3116, 373, '1', '1', '1', '1'),
(332, 3116, 374, '1', '1', '1', '1'),
(333, 3116, 375, '1', '1', '1', '1'),
(334, 3116, 376, '1', '1', '1', '1'),
(335, 3116, 377, '1', '1', '1', '1'),
(336, 3116, 386, '1', '1', '1', '1'),
(337, 3116, 387, '1', '1', '1', '1'),
(338, 3116, 388, '1', '1', '1', '1'),
(339, 3116, 389, '1', '1', '1', '1'),
(340, 3116, 390, '1', '1', '1', '1'),
(341, 3116, 391, '1', '1', '1', '1'),
(342, 3116, 392, '1', '1', '1', '1'),
(343, 3116, 393, '1', '1', '1', '1'),
(344, 3116, 394, '1', '1', '1', '1'),
(345, 3116, 395, '1', '1', '1', '1'),
(346, 3116, 396, '1', '1', '1', '1'),
(347, 3116, 397, '1', '1', '1', '1'),
(348, 3116, 410, '1', '1', '1', '1'),
(349, 3116, 409, '1', '1', '1', '1'),
(350, 3116, 408, '1', '1', '1', '1'),
(351, 3116, 407, '1', '1', '1', '1'),
(352, 3116, 406, '1', '1', '1', '1'),
(353, 3116, 405, '1', '1', '1', '1'),
(354, 3116, 404, '1', '1', '1', '1'),
(355, 3116, 403, '1', '1', '1', '1'),
(356, 3116, 402, '1', '1', '1', '1'),
(357, 3116, 401, '1', '1', '1', '1'),
(358, 3116, 400, '1', '1', '1', '1'),
(359, 3116, 399, '1', '1', '1', '1'),
(360, 3116, 398, '1', '1', '1', '1'),
(361, 3116, 412, '1', '1', '1', '1'),
(362, 3116, 414, '1', '1', '1', '1'),
(363, 3116, 413, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_contacts`
--

CREATE TABLE IF NOT EXISTS `auto_contacts` (
  `id` char(36) NOT NULL,
  `auto_mac_id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_devices`
--

CREATE TABLE IF NOT EXISTS `auto_devices` (
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_groups`
--

CREATE TABLE IF NOT EXISTS `auto_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `auto_groups`
--

INSERT INTO `auto_groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Network', '2010-01-04 14:25:46', '2010-01-04 14:25:46'),
(2, 'OpenVPN', '2010-01-05 08:58:10', '2010-01-05 08:58:10'),
(3, 'Wireless', '2010-01-06 10:47:38', '2010-01-06 10:47:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_macs`
--

CREATE TABLE IF NOT EXISTS `auto_macs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(17) NOT NULL,
  `dns_name` varchar(255) NOT NULL DEFAULT '',
  `contact_ip` varchar(17) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_mac_notes`
--

CREATE TABLE IF NOT EXISTS `auto_mac_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_mac_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auto_setups`
--

CREATE TABLE IF NOT EXISTS `auto_setups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_group_id` int(11) NOT NULL,
  `auto_mac_id` int(11) NOT NULL,
  `description` varchar(80) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `lft` char(36) DEFAULT NULL,
  `rght` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `checks`
--

CREATE TABLE IF NOT EXISTS `checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `checks`
--

INSERT INTO `checks` (`id`, `name`, `value`, `created`, `modified`) VALUES
(2, 'radius_restart', '1', '2013-09-01 20:41:20', '2016-03-09 10:00:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `icon_file` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_code`, `icon_file`, `created`, `modified`) VALUES
(4, 'United Kingdom', 'GB', '/cake2/rd_cake/webroot/img/flags/GB.png', '2012-10-05 04:55:12', '2012-11-23 21:15:38'),
(5, 'South Africa', 'ZA', '/cake2/rd_cake/webroot/img/flags/ZA.png', '2012-10-07 04:30:48', '2012-10-07 04:30:48'),
(18, 'Iran', 'IR', '/cake2/rd_cake/webroot/img/flags/IR.png', '2013-01-01 15:27:17', '2013-01-01 15:27:17'),
(19, 'Portugal', 'PT', '/cake2/rd_cake/webroot/img/flags/PT.png', '2014-02-11 14:33:37', '2014-02-11 14:33:37'),
(20, 'Spain', 'ES', '/cake2/rd_cake/webroot/img/flags/ES.png', '2014-02-20 22:23:55', '2014-02-20 22:23:55'),
(21, 'Nicaragua', 'NI', '/cake2/rd_cake/webroot/img/flags/NI.png', '2014-02-21 15:20:32', '2014-02-21 15:20:32'),
(22, 'Russia', 'RU', '/cake2/rd_cake/webroot/img/flags/RU.png', '2014-02-24 09:20:42', '2014-02-24 09:20:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `device_notes`
--

CREATE TABLE IF NOT EXISTS `device_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_clients`
--

CREATE TABLE IF NOT EXISTS `dynamic_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `nasidentifier` varchar(128) NOT NULL DEFAULT '',
  `calledstationid` varchar(128) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_ip` varchar(128) NOT NULL DEFAULT '',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  `monitor` enum('off','heartbeat','socket') DEFAULT 'off',
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_client_notes`
--

CREATE TABLE IF NOT EXISTS `dynamic_client_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_client_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_client_realms`
--

CREATE TABLE IF NOT EXISTS `dynamic_client_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_client_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_client_states`
--

CREATE TABLE IF NOT EXISTS `dynamic_client_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_client_id` char(36) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_details`
--

CREATE TABLE IF NOT EXISTS `dynamic_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `t_c_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_c_url` char(50) NOT NULL DEFAULT '',
  `redirect_check` tinyint(1) NOT NULL DEFAULT '0',
  `redirect_url` char(200) NOT NULL DEFAULT '',
  `slideshow_check` tinyint(1) NOT NULL DEFAULT '0',
  `seconds_per_slide` int(3) NOT NULL DEFAULT '30',
  `connect_check` tinyint(1) NOT NULL DEFAULT '0',
  `connect_username` char(50) NOT NULL DEFAULT '',
  `connect_suffix` char(50) NOT NULL DEFAULT 'nasid',
  `connect_delay` int(3) NOT NULL DEFAULT '0',
  `connect_only` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_login_check` tinyint(1) NOT NULL DEFAULT '1',
  `voucher_login_check` tinyint(1) NOT NULL DEFAULT '0',
  `auto_suffix_check` tinyint(1) NOT NULL DEFAULT '0',
  `auto_suffix` char(200) NOT NULL DEFAULT '',
  `usage_show_check` tinyint(1) NOT NULL DEFAULT '1',
  `usage_refresh_interval` int(3) NOT NULL DEFAULT '120',
  `theme` char(200) NOT NULL DEFAULT 'Default',
  `register_users` tinyint(1) NOT NULL DEFAULT '0',
  `lost_password` tinyint(1) NOT NULL DEFAULT '0',
  `social_enable` tinyint(1) NOT NULL DEFAULT '0',
  `social_temp_permanent_user_id` int(11) DEFAULT NULL,
  `coova_desktop_url` varchar(255) NOT NULL DEFAULT '',
  `coova_mobile_url` varchar(255) NOT NULL DEFAULT '',
  `mikrotik_desktop_url` varchar(255) NOT NULL DEFAULT '',
  `mikrotik_mobile_url` varchar(255) NOT NULL DEFAULT '',
  `default_language` varchar(255) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `reg_auto_suffix_check` tinyint(1) NOT NULL DEFAULT '0',
  `reg_auto_suffix` char(200) NOT NULL DEFAULT '',
  `reg_mac_check` tinyint(1) NOT NULL DEFAULT '0',
  `reg_auto_add` tinyint(1) NOT NULL DEFAULT '0',
  `reg_email` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `dynamic_details`
--

INSERT INTO `dynamic_details` (`id`, `name`, `available_to_siblings`, `icon_file_name`, `phone`, `fax`, `cell`, `email`, `url`, `street_no`, `street`, `town_suburb`, `city`, `country`, `lat`, `lon`, `user_id`, `t_c_check`, `t_c_url`, `redirect_check`, `redirect_url`, `slideshow_check`, `seconds_per_slide`, `connect_check`, `connect_username`, `connect_suffix`, `connect_delay`, `connect_only`, `created`, `modified`, `user_login_check`, `voucher_login_check`, `auto_suffix_check`, `auto_suffix`, `usage_show_check`, `usage_refresh_interval`, `theme`, `register_users`, `lost_password`, `social_enable`, `social_temp_permanent_user_id`, `coova_desktop_url`, `coova_mobile_url`, `mikrotik_desktop_url`, `mikrotik_mobile_url`, `default_language`, `realm_id`, `profile_id`, `reg_auto_suffix_check`, `reg_auto_suffix`, `reg_mac_check`, `reg_auto_add`, `reg_email`) VALUES
(3, 'SA Coast - Struisbaai', 1, '1369296799.png', '27128037032', '27128037033', '27128037034', 'bredasdorp@discovercapeagulhas.co.za', 'http://www.discovercapeagulhas.co.za/', '1', 'Longstreet', 'Bredasdorp', 'Bredasdorp', 'South Africa', 0, 0, 44, 1, 'http://www.radiusdesk.com', 0, 'http://www.radiusdesk.com', 0, 30, 1, 'click_to_connect', 'ssid', 0, 0, '2013-05-23 09:57:09', '2016-06-28 22:06:08', 1, 1, 0, 'walt', 1, 120, 'Custom', 0, 0, 0, 187, '/rd_login/cc/d/index.html', '/rd_login/cc/m/index.html', '/rd_login/mt/d/index.html', '/rd_login/mt/m/index.html', 'en_GB', NULL, NULL, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_detail_notes`
--

CREATE TABLE IF NOT EXISTS `dynamic_detail_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_detail_social_logins`
--

CREATE TABLE IF NOT EXISTS `dynamic_detail_social_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `record_info` tinyint(1) NOT NULL DEFAULT '0',
  `key` varchar(100) NOT NULL DEFAULT '',
  `secret` varchar(100) NOT NULL DEFAULT '',
  `type` enum('voucher','user') DEFAULT 'voucher',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_pages`
--

CREATE TABLE IF NOT EXISTS `dynamic_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `dynamic_detail_id`, `name`, `content`, `created`, `modified`) VALUES
(7, 3, 'Welcome to Struisbaai', '<font color="0000FF"><font size="3">You are in a High Speed Internet Zone!<br></font></font><ul><li>Thanks to the vibrant community, you can now enjoy being connected 24/7 @ speeds of up to 10Mb/s</li><li>Ideal for watching HD movies over the Internet</li><li>Budget connectivity is also available <br></li></ul><p><br></p>', '2013-05-23 10:30:58', '2013-05-28 21:45:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_pairs`
--

CREATE TABLE IF NOT EXISTS `dynamic_pairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  `dynamic_detail_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `dynamic_pairs`
--

INSERT INTO `dynamic_pairs` (`id`, `name`, `value`, `priority`, `dynamic_detail_id`, `user_id`, `created`, `modified`) VALUES
(5, 'ssid', 'Struisbaai', 1, 3, NULL, '2013-05-23 10:32:48', '2013-05-28 22:02:38'),
(6, 'nasid', 'RADIUSdesk-1', 1, 3, NULL, '2013-08-21 19:49:38', '2013-08-21 19:49:38'),
(9, 'nasid', 'lion_cp1', 1, 3, NULL, '2014-08-11 12:36:28', '2014-08-11 12:36:28'),
(10, 'nasid', 'lion_cp2', 1, 3, NULL, '2014-08-11 12:36:40', '2014-08-11 12:36:40'),
(11, 'nasid', 'lion_cp3', 1, 3, NULL, '2014-08-11 12:36:54', '2014-08-11 12:36:54'),
(12, 'nasid', 'cheetah_cp1', 1, 3, NULL, '2014-08-11 12:37:15', '2014-08-11 12:37:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_photos`
--

CREATE TABLE IF NOT EXISTS `dynamic_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_detail_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `dynamic_photos`
--

INSERT INTO `dynamic_photos` (`id`, `dynamic_detail_id`, `title`, `description`, `url`, `file_name`, `created`, `modified`) VALUES
(16, 3, 'Animals Welcome', 'Nice long beaches to go for a walk', 'http://radiusdesk.com', '1369745727.jpg', '2013-05-28 14:55:27', '2014-05-21 22:18:40'),
(17, 3, 'Fresh fish daily', 'The best yellowtail in South Africa', '', '1369745821.jpg', '2013-05-28 14:57:01', '2013-05-28 14:57:01'),
(18, 3, 'Whiskey on the rocks?', '.... or your favourite softdrink', '', '1369745902.jpg', '2013-05-28 14:58:22', '2013-05-28 14:59:04'),
(19, 3, 'Castles in the sand', 'Lots of sand for the kids to play in', '', '1369746009.jpg', '2013-05-28 15:00:09', '2013-05-28 15:00:30'),
(20, 3, 'Rocks rocks rocks', 'Nature''s own obstacle course', '', '1369746199.jpg', '2013-05-28 15:03:19', '2013-05-28 15:03:19'),
(21, 3, 'And a road of my own', 'With the city and the rat race behind me', '', '1369746348.jpg', '2013-05-28 15:05:48', '2013-05-28 15:06:04'),
(22, 3, 'Sounds of the sea', 'Where land and water meet', '', '1369746423.jpg', '2013-05-28 15:07:03', '2013-05-28 15:07:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_messages`
--

CREATE TABLE IF NOT EXISTS `email_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `email_messages`
--

INSERT INTO `email_messages` (`id`, `name`, `title`, `message`, `created`, `modified`) VALUES
(3, 'April', 'Goed Self', 'Wasssssssaaaap!', '2016-03-14 05:43:51', '2016-03-14 05:43:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_authorize_net_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_authorize_net_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `voucher_name` char(50) NOT NULL DEFAULT '',
  `top_up_id` int(11) DEFAULT NULL,
  `description` char(50) NOT NULL DEFAULT '',
  `x_response_code` int(2) DEFAULT NULL,
  `x_response_subcode` int(4) DEFAULT NULL,
  `x_response_reason_code` int(4) DEFAULT NULL,
  `x_response_reason_text` char(200) NOT NULL DEFAULT '',
  `x_auth_code` char(50) NOT NULL DEFAULT '',
  `x_avs_code` char(50) NOT NULL DEFAULT '',
  `x_trans_id` char(50) NOT NULL DEFAULT '',
  `x_method` char(5) NOT NULL DEFAULT '',
  `x_card_type` char(50) NOT NULL DEFAULT '',
  `x_account_number` char(50) NOT NULL DEFAULT '',
  `x_first_name` char(50) NOT NULL DEFAULT '',
  `x_last_name` char(50) NOT NULL DEFAULT '',
  `x_company` char(50) NOT NULL DEFAULT '',
  `x_address` char(50) NOT NULL DEFAULT '',
  `x_city` char(50) NOT NULL DEFAULT '',
  `x_state` char(50) NOT NULL DEFAULT '',
  `x_zip` char(50) NOT NULL DEFAULT '',
  `x_country` char(50) NOT NULL DEFAULT '',
  `x_phone` char(50) NOT NULL DEFAULT '',
  `x_fax` char(50) NOT NULL DEFAULT '',
  `x_email` char(50) NOT NULL DEFAULT '',
  `x_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `x_catalog_link_id` char(50) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `tag` varchar(100) NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `fin_authorize_net_transactions`
--

INSERT INTO `fin_authorize_net_transactions` (`id`, `user_id`, `voucher_id`, `voucher_name`, `top_up_id`, `description`, `x_response_code`, `x_response_subcode`, `x_response_reason_code`, `x_response_reason_text`, `x_auth_code`, `x_avs_code`, `x_trans_id`, `x_method`, `x_card_type`, `x_account_number`, `x_first_name`, `x_last_name`, `x_company`, `x_address`, `x_city`, `x_state`, `x_zip`, `x_country`, `x_phone`, `x_fax`, `x_email`, `x_amount`, `x_catalog_link_id`, `created`, `modified`, `tag`) VALUES
(1, NULL, NULL, '', NULL, '', 1, 1, 1, 'This transaction has been approved.', '', 'P', '1821199455', 'CC', '', '', 'John', 'Smith', '', '', '', '', '', '', '', '', '', '5.00', '1abacb70-d45d-4d12-ba51-98f01523720d', '2014-10-16 13:30:46', '2014-10-21 13:09:52', 'unknown'),
(2, NULL, NULL, '', NULL, '', 1, 1, 1, 'This transaction has been approved.', '', 'P', '1821199455', 'CC', '', '', 'John', 'Smith', '', '', '', '', '', '', '', '', '', '5.00', '1abacb70-d45d-4d12-ba51-98f01523720d', '2014-10-16 14:05:44', '2014-10-21 13:10:01', 'unknown'),
(3, NULL, NULL, '', NULL, '', 1, 1, 1, 'This transaction has been approved.', '', 'P', '1821199455', 'CC', '', '', 'John', 'Smith', '', '', '', '', '', '', '', '', '', '5.00', '1abacb70-d45d-4d12-ba51-98f01523720d', '2014-10-16 14:07:26', '2014-10-21 13:09:56', 'unknown');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_authorize_net_transaction_notes`
--

CREATE TABLE IF NOT EXISTS `fin_authorize_net_transaction_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_authorize_net_transaction_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_my_gate_tokens`
--

CREATE TABLE IF NOT EXISTS `fin_my_gate_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `fin_payment_plan_id` int(11) DEFAULT NULL,
  `client_pin` varchar(50) NOT NULL,
  `client_uci` varchar(50) NOT NULL,
  `client_uid` varchar(50) NOT NULL,
  `override` decimal(15,2) DEFAULT '0.00',
  `override_completed` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_my_gate_token_failures`
--

CREATE TABLE IF NOT EXISTS `fin_my_gate_token_failures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `fin_payment_plan_id` int(11) DEFAULT NULL,
  `error_code` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_my_gate_token_notes`
--

CREATE TABLE IF NOT EXISTS `fin_my_gate_token_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_my_gate_token_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_my_gate_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_my_gate_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fin_my_gate_token_id` int(11) DEFAULT NULL,
  `status` enum('pending','success','fail','submitted') DEFAULT 'pending',
  `type` enum('credit_card','debit_order') DEFAULT 'credit_card',
  `amount` decimal(15,2) DEFAULT '0.00',
  `my_gate_reference` varchar(255) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `permanent_user` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_my_gate_transaction_notes`
--

CREATE TABLE IF NOT EXISTS `fin_my_gate_transaction_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_my_gate_transaction_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_payment_plans`
--

CREATE TABLE IF NOT EXISTS `fin_payment_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `type` enum('voucher','user') DEFAULT 'user',
  `currency_code` enum('USD','ZAR','GBP','EUR') DEFAULT 'ZAR',
  `value` decimal(15,2) DEFAULT '0.00',
  `tax` decimal(15,2) DEFAULT '0.00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `fin_payment_plans`
--

INSERT INTO `fin_payment_plans` (`id`, `user_id`, `profile_id`, `name`, `description`, `type`, `currency_code`, `value`, `tax`, `active`, `created`, `modified`) VALUES
(6, 44, 9, 'Test', 'test1', 'user', 'ZAR', '100.00', '0.00', 1, '2015-02-01 18:33:38', '2015-02-14 21:38:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_payment_plan_notes`
--

CREATE TABLE IF NOT EXISTS `fin_payment_plan_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_payment_plan_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `fin_payment_plan_notes`
--

INSERT INTO `fin_payment_plan_notes` (`id`, `fin_payment_plan_id`, `note_id`, `created`, `modified`) VALUES
(1, 6, 78, '2015-02-01 18:34:51', '2015-02-01 18:34:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_paypal_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_paypal_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `top_up_id` int(11) DEFAULT NULL,
  `business` varchar(255) NOT NULL,
  `txn_id` varchar(20) NOT NULL,
  `option_name1` varchar(255) DEFAULT NULL,
  `option_selection1` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `payer_status` varchar(255) DEFAULT NULL,
  `payment_gross` decimal(10,2) NOT NULL,
  `mc_gross` decimal(10,2) NOT NULL,
  `mc_fee` decimal(10,2) NOT NULL,
  `mc_currency` varchar(255) DEFAULT 'GBP',
  `payment_date` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `fin_paypal_transactions`
--

INSERT INTO `fin_paypal_transactions` (`id`, `user_id`, `voucher_id`, `top_up_id`, `business`, `txn_id`, `option_name1`, `option_selection1`, `item_name`, `item_number`, `first_name`, `last_name`, `payer_email`, `payer_id`, `payer_status`, `payment_gross`, `mc_gross`, `mc_fee`, `mc_currency`, `payment_date`, `payment_status`, `created`, `modified`) VALUES
(2, 44, 87, NULL, 'radiusdesk_merch@gmail.com', '2N879041J5073971B', 'Vouchers', '2Hours', 'RDVoucher', 'rd_v1', 'Renier', 'Viljoen', 'radiusdesk_buyer@gmail.com', 'NWBRWDPU862AY', 'verified', '2.00', '2.00', '0.36', 'USD', '02:55:52 Apr 25, 2014 PDT', 'Completed', '2014-04-25 09:23:27', '2014-04-28 05:44:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_paypal_transaction_notes`
--

CREATE TABLE IF NOT EXISTS `fin_paypal_transaction_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_paypal_transaction_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_payu_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_payu_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_reference` varchar(64) NOT NULL,
  `payu_reference` varchar(64) NOT NULL,
  `transaction_type` enum('RESERVE','FINALISE','PAYMENT','EFFECT_STAGING','CREDIT','RESERVE_CANCEL','REGISTER_LINK') DEFAULT 'PAYMENT',
  `transaction_state` enum('NEW','PROCESSING','SUCCESSFUL','FAILED') DEFAULT 'NEW',
  `result_code` int(11) DEFAULT NULL,
  `result_message` varchar(255) DEFAULT NULL,
  `display_message` varchar(255) DEFAULT NULL,
  `merchant_user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `regional_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `amount_in_cents` int(11) NOT NULL,
  `currency_code` varchar(255) DEFAULT 'ZAR',
  `description` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `fin_payu_transactions`
--

INSERT INTO `fin_payu_transactions` (`id`, `merchant_reference`, `payu_reference`, `transaction_type`, `transaction_state`, `result_code`, `result_message`, `display_message`, `merchant_user_id`, `email`, `mobile`, `regional_id`, `first_name`, `last_name`, `amount_in_cents`, `currency_code`, `description`, `product_code`, `created`, `modified`) VALUES
(1, '1394549753', '146344301661', 'PAYMENT', '', 999, 'PayU Timeout', '', NULL, NULL, NULL, NULL, NULL, NULL, 94500, 'ZAR', '5120MB Internet voucher', 'dat_5120m', '2014-03-11 16:55:55', '2014-03-11 16:55:55'),
(2, '1394568726', '146407795408', 'PAYMENT', 'SUCCESSFUL', 0, 'Successful', 'Successful', NULL, NULL, NULL, NULL, NULL, NULL, 12900, 'ZAR', '175MB Internet voucher', 'dat_175m', '2014-03-11 22:12:09', '2014-03-11 22:39:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_pay_u_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_pay_u_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `top_up_id` int(11) DEFAULT NULL,
  `merchantReference` varchar(64) NOT NULL,
  `payUReference` varchar(64) NOT NULL,
  `TransactionType` enum('RESERVE','FINALISE','PAYMENT','EFFECT_STAGING','CREDIT','RESERVE_CANCEL','REGISTER_LINK') DEFAULT 'PAYMENT',
  `TransactionState` enum('NEW','PROCESSING','SUCCESSFUL','FAILED','TIMEOUT') DEFAULT 'NEW',
  `ResultCode` int(11) DEFAULT NULL,
  `ResultMessage` varchar(255) DEFAULT NULL,
  `DisplayMessage` varchar(255) DEFAULT NULL,
  `merchUserId` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `regionalId` varchar(255) DEFAULT NULL,
  `amountInCents` int(11) NOT NULL,
  `currencyCode` varchar(255) DEFAULT 'ZAR',
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_pay_u_transaction_notes`
--

CREATE TABLE IF NOT EXISTS `fin_pay_u_transaction_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_pay_u_transaction_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_premium_sms_transactions`
--

CREATE TABLE IF NOT EXISTS `fin_premium_sms_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `top_up_id` int(11) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `fin_premium_sms_transactions`
--

INSERT INTO `fin_premium_sms_transactions` (`id`, `user_id`, `voucher_id`, `top_up_id`, `mobile`, `description`, `created`, `modified`) VALUES
(1, NULL, NULL, NULL, NULL, '', '2014-10-14 12:29:22', '2014-10-14 12:29:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fin_premium_sms_transaction_notes`
--

CREATE TABLE IF NOT EXISTS `fin_premium_sms_transaction_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fin_premium_sms_transaction_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(8, 'Administrators', '2012-12-10 13:13:09', '2012-12-10 13:13:09'),
(9, 'Access Providers', '2012-12-10 13:13:19', '2012-12-10 13:13:19'),
(10, 'Permanent Users', '2012-12-10 13:13:28', '2012-12-10 13:13:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `rtl`, `created`, `modified`) VALUES
(4, 'English', 'en', 0, '2012-10-05 04:55:28', '2012-10-06 07:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `licensed_devices`
--

CREATE TABLE IF NOT EXISTS `licensed_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `master_key` tinyint(1) NOT NULL DEFAULT '1',
  `provider_key` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `limits`
--

CREATE TABLE IF NOT EXISTS `limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mac_usages`
--

CREATE TABLE IF NOT EXISTS `mac_usages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `mac_usages`
--

INSERT INTO `mac_usages` (`id`, `mac`, `username`, `data_used`, `data_cap`, `time_used`, `time_cap`, `created`, `modified`) VALUES
(1, 'aa-aa-aa-aa-aa-aa', 'click_to_connect@Struisbaai', 20, 5000000, NULL, NULL, '2014-09-02 15:25:07', '2014-09-02 15:25:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meshes`
--

CREATE TABLE IF NOT EXISTS `meshes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `ssid` varchar(32) NOT NULL,
  `bssid` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `meshes`
--

INSERT INTO `meshes` (`id`, `name`, `ssid`, `bssid`, `user_id`, `created`, `modified`, `available_to_siblings`) VALUES
(35, 'Meerkat', '02_CA_FE_CA_00_01', '02:CA:FE:CA:00:01', 44, '2014-07-26 04:20:46', '2014-07-26 04:20:46', 0),
(40, 'Cheetah', '02_CA_FE_CA_00_02', '02:CA:FE:CA:00:02', 44, '2014-08-11 12:09:29', '2014-08-11 12:09:29', 0),
(41, 'Lion', '02_CA_FE_CA_00_03', '02:CA:FE:CA:00:03', 44, '2014-08-11 12:09:42', '2014-08-11 12:09:42', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_entries`
--

CREATE TABLE IF NOT EXISTS `mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `isolate` tinyint(1) NOT NULL DEFAULT '0',
  `apply_to_all` tinyint(1) NOT NULL DEFAULT '0',
  `encryption` enum('none','wep','psk','psk2','wpa','wpa2') DEFAULT 'none',
  `key` varchar(255) NOT NULL DEFAULT '',
  `auth_server` varchar(255) NOT NULL DEFAULT '',
  `auth_secret` varchar(255) NOT NULL DEFAULT '',
  `dynamic_vlan` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `chk_maxassoc` tinyint(1) NOT NULL DEFAULT '0',
  `maxassoc` int(6) DEFAULT '100',
  `macfilter` enum('disable','allow','deny') DEFAULT 'disable',
  `permanent_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data untuk tabel `mesh_entries`
--

INSERT INTO `mesh_entries` (`id`, `mesh_id`, `name`, `hidden`, `isolate`, `apply_to_all`, `encryption`, `key`, `auth_server`, `auth_secret`, `dynamic_vlan`, `created`, `modified`, `chk_maxassoc`, `maxassoc`, `macfilter`, `permanent_user_id`) VALUES
(50, 35, 'Meerkat Wifi', 0, 0, 1, 'none', '', '', '', 0, '2014-07-26 04:21:24', '2014-07-26 04:21:24', 0, 100, 'disable', 0),
(52, 40, 'Cheetah guest', 0, 1, 1, 'none', '', '', '', 0, '2014-08-11 12:14:59', '2016-04-14 14:32:21', 0, 100, 'disable', 0),
(53, 40, 'Cheetah wireless', 0, 0, 1, 'psk2', 'cheetahwireless', '', '', 0, '2014-08-11 12:16:14', '2016-04-14 14:32:27', 0, 100, 'disable', 0),
(54, 41, 'Lion Coffee', 0, 1, 1, 'none', '', '', '', 0, '2014-08-11 12:23:03', '2014-09-08 05:48:43', 0, 100, 'disable', 0),
(55, 41, 'Lion Lager Pub', 0, 1, 1, 'none', '', '', '', 0, '2014-08-11 12:23:53', '2014-08-11 12:23:53', 0, 100, 'disable', 0),
(56, 41, 'Lion Sushi', 0, 1, 1, 'none', '', '', '', 0, '2014-08-11 12:25:03', '2014-08-11 12:25:03', 0, 100, 'disable', 0),
(57, 41, 'Lion wireless', 0, 0, 1, 'wpa2', '', '206.221.176.235', 'testing123', 0, '2014-08-11 12:26:21', '2014-08-11 12:26:21', 0, 100, 'disable', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_exits`
--

CREATE TABLE IF NOT EXISTS `mesh_exits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `type` enum('bridge','tagged_bridge','nat','captive_portal') DEFAULT 'bridge',
  `auto_detect` tinyint(1) NOT NULL DEFAULT '0',
  `vlan` int(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `mesh_exits`
--

INSERT INTO `mesh_exits` (`id`, `mesh_id`, `name`, `type`, `auto_detect`, `vlan`, `created`, `modified`) VALUES
(30, 35, 'br-one', 'bridge', 1, NULL, '2014-07-26 04:21:57', '2016-04-30 11:56:06'),
(32, 40, 'cheetah_ebr1', 'bridge', 1, NULL, '2014-08-11 12:16:52', '2016-04-24 15:33:04'),
(33, 40, 'cheetah_cp1', 'captive_portal', 1, NULL, '2014-08-11 12:21:02', '2016-04-24 15:58:44'),
(35, 41, 'lion_ebr1', 'bridge', 1, NULL, '2014-08-11 12:28:41', '2014-08-11 12:28:41'),
(36, 41, 'lion_cp1', 'captive_portal', 1, NULL, '2014-08-11 12:30:33', '2014-08-11 19:26:47'),
(37, 41, 'lion_cp2', 'captive_portal', 1, NULL, '2014-08-11 12:33:02', '2014-08-11 19:27:02'),
(38, 41, 'lion_cp3', 'captive_portal', 1, NULL, '2014-08-11 12:34:40', '2014-08-11 19:27:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_exit_captive_portals`
--

CREATE TABLE IF NOT EXISTS `mesh_exit_captive_portals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_exit_id` int(11) NOT NULL,
  `radius_1` varchar(128) NOT NULL,
  `radius_2` varchar(128) NOT NULL DEFAULT '',
  `radius_secret` varchar(128) NOT NULL,
  `radius_nasid` varchar(128) NOT NULL,
  `uam_url` varchar(255) NOT NULL,
  `uam_secret` varchar(255) NOT NULL,
  `walled_garden` varchar(255) NOT NULL,
  `swap_octets` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `mac_auth` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_enable` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_ip` varchar(128) NOT NULL DEFAULT '',
  `proxy_port` int(11) NOT NULL DEFAULT '3128',
  `proxy_auth_username` varchar(128) NOT NULL DEFAULT '',
  `proxy_auth_password` varchar(128) NOT NULL DEFAULT '',
  `coova_optional` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `mesh_exit_captive_portals`
--

INSERT INTO `mesh_exit_captive_portals` (`id`, `mesh_exit_id`, `radius_1`, `radius_2`, `radius_secret`, `radius_nasid`, `uam_url`, `uam_secret`, `walled_garden`, `swap_octets`, `created`, `modified`, `mac_auth`, `proxy_enable`, `proxy_ip`, `proxy_port`, `proxy_auth_username`, `proxy_auth_password`, `coova_optional`) VALUES
(1, 33, '198.27.111.78', '', 'testing123', 'cheetah_cp1', 'http://198.27.111.78/cake2/rd_cake/dynamic_details/chilli_browser_detect/', 'greatsecret', 'www.radiusdesk.com', 0, '2014-08-11 12:21:02', '2016-04-24 15:58:44', 0, 0, '192.168.10.10', 3128, 'admin', 'admin', ''),
(2, 36, '206.221.176.235', '', 'testing123', 'lion_cp1', 'http://206.221.176.235/cake2/rd_cake/dynamic_details/chilli_browser_detect/', 'greatsecret', 'www.radiusdesk.com', 0, '2014-08-11 12:30:33', '2014-08-11 19:26:47', 0, 0, '', 3128, '', '', ''),
(3, 37, '206.221.176.235', '', 'testing123', 'lion_cp2', 'http://206.221.176.235/cake2/rd_cake/dynamic_details/chilli_browser_detect/', 'greatsecret', 'www.radiusdesk.com', 0, '2014-08-11 12:33:02', '2014-08-11 19:27:02', 0, 0, '', 3128, '', '', ''),
(4, 38, '206.221.176.235', '', 'testing123', 'lion_cp3', 'http://206.221.176.235/cake2/rd_cake/dynamic_details/chilli_browser_detect/', 'greatsecret', 'www.radiusdesk.com', 0, '2014-08-11 12:34:40', '2014-08-11 19:27:17', 0, 0, '', 3128, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_exit_mesh_entries`
--

CREATE TABLE IF NOT EXISTS `mesh_exit_mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_exit_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data untuk tabel `mesh_exit_mesh_entries`
--

INSERT INTO `mesh_exit_mesh_entries` (`id`, `mesh_exit_id`, `mesh_entry_id`, `created`, `modified`) VALUES
(65, 35, 57, '2014-08-11 12:28:41', '2014-08-11 12:28:41'),
(74, 36, 54, '2014-08-11 19:26:47', '2014-08-11 19:26:47'),
(75, 37, 55, '2014-08-11 19:27:02', '2014-08-11 19:27:02'),
(76, 38, 56, '2014-08-11 19:27:17', '2014-08-11 19:27:17'),
(96, 32, 53, '2016-04-24 15:33:04', '2016-04-24 15:33:04'),
(100, 33, 52, '2016-04-24 15:58:44', '2016-04-24 15:58:44'),
(102, 30, 50, '2016-04-30 11:56:06', '2016-04-30 11:56:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_notes`
--

CREATE TABLE IF NOT EXISTS `mesh_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_settings`
--

CREATE TABLE IF NOT EXISTS `mesh_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `aggregated_ogms` tinyint(1) NOT NULL DEFAULT '1',
  `ap_isolation` tinyint(1) NOT NULL DEFAULT '0',
  `bonding` tinyint(1) NOT NULL DEFAULT '0',
  `bridge_loop_avoidance` tinyint(1) NOT NULL DEFAULT '0',
  `fragmentation` tinyint(1) NOT NULL DEFAULT '1',
  `distributed_arp_table` tinyint(1) NOT NULL DEFAULT '1',
  `orig_interval` int(10) NOT NULL DEFAULT '1000',
  `gw_sel_class` int(10) NOT NULL DEFAULT '20',
  `connectivity` enum('IBSS','mesh_point') DEFAULT 'mesh_point',
  `encryption` tinyint(1) NOT NULL DEFAULT '0',
  `encryption_key` varchar(63) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `mesh_settings`
--

INSERT INTO `mesh_settings` (`id`, `mesh_id`, `aggregated_ogms`, `ap_isolation`, `bonding`, `bridge_loop_avoidance`, `fragmentation`, `distributed_arp_table`, `orig_interval`, `gw_sel_class`, `connectivity`, `encryption`, `encryption_key`, `created`, `modified`) VALUES
(6, 35, 1, 0, 0, 0, 1, 1, 1000, 20, 'mesh_point', 0, '', '2016-04-28 14:50:20', '2016-04-28 14:50:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesh_specifics`
--

CREATE TABLE IF NOT EXISTS `mesh_specifics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nas`
--

CREATE TABLE IF NOT EXISTS `nas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client',
  `connection_type` enum('direct','openvpn','pptp','dynamic') DEFAULT 'direct',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `record_auth` tinyint(1) NOT NULL DEFAULT '0',
  `ignore_acct` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_attribute` varchar(50) NOT NULL DEFAULT '',
  `dynamic_value` varchar(50) NOT NULL DEFAULT '',
  `monitor` enum('off','ping','heartbeat') DEFAULT 'off',
  `ping_interval` int(5) NOT NULL DEFAULT '600',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `last_contact` datetime DEFAULT NULL,
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nasname` (`nasname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data untuk tabel `nas`
--

INSERT INTO `nas` (`id`, `nasname`, `shortname`, `nasidentifier`, `type`, `ports`, `secret`, `server`, `community`, `description`, `connection_type`, `available_to_siblings`, `record_auth`, `ignore_acct`, `dynamic_attribute`, `dynamic_value`, `monitor`, `ping_interval`, `heartbeat_dead_after`, `last_contact`, `session_auto_close`, `session_dead_time`, `on_public_maps`, `lat`, `lon`, `photo_file_name`, `user_id`, `created`, `modified`) VALUES
(59, '127.0.0.1', 'localhost', 'localhost', 'Mikrotik', 3799, 'testing123', '', '', 'RADIUS Client', 'direct', 0, 0, 0, '', '', 'off', 600, 600, NULL, 1, 3600, 0, -25.7382573400939, 28.3021675344951, 'logo.jpg', 44, '2013-08-24 22:02:18', '2016-07-15 23:48:37'),
(60, '192.168.1.1', 'Mikrotik', '', 'other', NULL, 'radiusdesk12345', NULL, NULL, 'RADIUS Client', 'direct', 0, 0, 0, '', '', 'off', 600, 600, NULL, 0, 3600, 0, NULL, NULL, 'logo.jpg', 44, '2016-07-15 23:35:50', '2016-07-15 23:35:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `na_notes`
--

CREATE TABLE IF NOT EXISTS `na_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `na_realms`
--

CREATE TABLE IF NOT EXISTS `na_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `na_realms`
--

INSERT INTO `na_realms` (`id`, `na_id`, `realm_id`, `created`, `modified`) VALUES
(1, 58, 33, '2013-08-24 19:11:47', '2013-08-24 19:11:47'),
(2, 60, 36, '2016-07-15 23:35:50', '2016-07-15 23:35:50'),
(3, 60, 37, '2016-07-15 23:35:50', '2016-07-15 23:35:50'),
(4, 60, 38, '2016-07-15 23:35:50', '2016-07-15 23:35:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `na_states`
--

CREATE TABLE IF NOT EXISTS `na_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` char(36) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `na_tags`
--

CREATE TABLE IF NOT EXISTS `na_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `na_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `new_accountings`
--

CREATE TABLE IF NOT EXISTS `new_accountings` (
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mac` varchar(255) NOT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `radio0_enable` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_mesh` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_entry` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_band` tinyint(3) NOT NULL DEFAULT '24',
  `radio0_two_chan` int(4) NOT NULL DEFAULT '1',
  `radio0_five_chan` int(4) NOT NULL DEFAULT '44',
  `radio1_enable` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_mesh` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_entry` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_band` tinyint(3) NOT NULL DEFAULT '5',
  `radio1_two_chan` int(4) NOT NULL DEFAULT '1',
  `radio1_five_chan` int(4) NOT NULL DEFAULT '44',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_actions`
--

CREATE TABLE IF NOT EXISTS `node_actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `node_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_ibss_connections`
--

CREATE TABLE IF NOT EXISTS `node_ibss_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `station_node_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_loads`
--

CREATE TABLE IF NOT EXISTS `node_loads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `mem_total` int(11) DEFAULT NULL,
  `mem_free` int(11) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `system_time` varchar(255) NOT NULL,
  `load_1` float(2,2) NOT NULL,
  `load_2` float(2,2) NOT NULL,
  `load_3` float(2,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_mesh_entries`
--

CREATE TABLE IF NOT EXISTS `node_mesh_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_mesh_exits`
--

CREATE TABLE IF NOT EXISTS `node_mesh_exits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `mesh_exit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_mp_settings`
--

CREATE TABLE IF NOT EXISTS `node_mp_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_neighbors`
--

CREATE TABLE IF NOT EXISTS `node_neighbors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `gateway` enum('yes','no') DEFAULT 'no',
  `neighbor_id` int(11) DEFAULT NULL,
  `metric` decimal(6,4) NOT NULL,
  `hwmode` char(5) DEFAULT '11g',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_settings`
--

CREATE TABLE IF NOT EXISTS `node_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesh_id` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `all_power` tinyint(1) NOT NULL DEFAULT '1',
  `two_chan` int(3) NOT NULL DEFAULT '6',
  `five_chan` int(3) NOT NULL DEFAULT '44',
  `heartbeat_interval` int(5) NOT NULL DEFAULT '60',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `password_hash` varchar(100) NOT NULL DEFAULT '',
  `eth_br_chk` tinyint(1) NOT NULL DEFAULT '0',
  `eth_br_with` int(11) NOT NULL DEFAULT '0',
  `eth_br_for_all` tinyint(1) NOT NULL DEFAULT '1',
  `tz_name` varchar(128) NOT NULL DEFAULT 'America/New York',
  `tz_value` varchar(128) NOT NULL DEFAULT 'EST5EDT,M3.2.0,M11.1.0',
  `country` varchar(5) NOT NULL DEFAULT 'US',
  `gw_dhcp_timeout` int(5) NOT NULL DEFAULT '120',
  `gw_use_previous` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot_time` int(5) NOT NULL DEFAULT '600',
  `client_key` varchar(255) NOT NULL DEFAULT 'radiusdesk',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `node_settings`
--

INSERT INTO `node_settings` (`id`, `mesh_id`, `password`, `power`, `all_power`, `two_chan`, `five_chan`, `heartbeat_interval`, `heartbeat_dead_after`, `created`, `modified`, `password_hash`, `eth_br_chk`, `eth_br_with`, `eth_br_for_all`, `tz_name`, `tz_value`, `country`, `gw_dhcp_timeout`, `gw_use_previous`, `gw_auto_reboot`, `gw_auto_reboot_time`, `client_key`) VALUES
(15, 41, 'admin', 100, 1, 1, 44, 60, 300, '2014-08-11 12:33:19', '2014-08-11 13:44:43', '', 0, 0, 1, 'America/New York', 'EST5EDT,M3.2.0,M11.1.0', 'US', 120, 1, 1, 600, 'radiusdesk'),
(16, 35, 'admin', 100, 0, 6, 44, 60, 300, '2014-09-15 12:55:31', '2015-09-10 07:58:33', '', 0, 30, 0, 'America/New York', 'EST5EDT,M3.2.0,M11.1.0', 'US', 120, 1, 1, 600, 'radiusdesk'),
(18, 40, 'admin', 100, 0, 11, 161, 60, 300, '2015-05-08 09:53:23', '2016-04-14 14:34:18', '$1$480Su0cr$NZDXGrVydken24oH2t9jr.', 0, 0, 0, 'Africa/Johannesburg', 'SAST-2', 'ZA', 120, 1, 1, 600, 'radiusdesk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_stations`
--

CREATE TABLE IF NOT EXISTS `node_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `mesh_entry_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_systems`
--

CREATE TABLE IF NOT EXISTS `node_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `node_wifi_settings`
--

CREATE TABLE IF NOT EXISTS `node_wifi_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `note`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(76, 'Sample data for RADIUSdesk', 1, 44, '2013-05-25 12:38:42', '2013-05-25 12:38:42'),
(77, 'This is a note', 1, 182, '2014-01-07 22:12:23', '2014-01-07 22:12:23'),
(78, 'Up the price a bit', 1, 44, '2015-02-01 18:34:51', '2015-02-01 18:34:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `openvpn_clients`
--

CREATE TABLE IF NOT EXISTS `openvpn_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `subnet` int(3) DEFAULT NULL,
  `peer1` int(3) DEFAULT NULL,
  `peer2` int(3) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permanent_users`
--

CREATE TABLE IF NOT EXISTS `permanent_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `password_civitas` varchar(70) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `auth_type` varchar(128) NOT NULL DEFAULT 'sql',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  `time_cap_type` enum('hard','soft') DEFAULT 'soft',
  `data_cap_type` enum('hard','soft') DEFAULT 'soft',
  `realm` varchar(50) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile` varchar(50) NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `track_auth` tinyint(1) NOT NULL DEFAULT '0',
  `track_acct` tinyint(1) NOT NULL DEFAULT '1',
  `static_ip` varchar(50) NOT NULL DEFAULT '',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `country_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `token_reset_password` varchar(70) NOT NULL,
  `tanggal_expired_token_reset` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

--
-- Dumping data untuk tabel `permanent_users`
--

INSERT INTO `permanent_users` (`id`, `username`, `password`, `password_civitas`, `token`, `name`, `surname`, `address`, `phone`, `email`, `auth_type`, `active`, `last_accept_time`, `last_reject_time`, `last_accept_nas`, `last_reject_nas`, `last_reject_message`, `perc_time_used`, `perc_data_used`, `data_used`, `data_cap`, `time_used`, `time_cap`, `time_cap_type`, `data_cap_type`, `realm`, `realm_id`, `profile`, `profile_id`, `from_date`, `to_date`, `track_auth`, `track_acct`, `static_ip`, `extra_name`, `extra_value`, `country_id`, `language_id`, `user_id`, `created`, `modified`, `token_reset_password`, `tanggal_expired_token_reset`) VALUES
(209, 'zainal', '80a46c0b7d590d480a4d86e5e5b8fac8a2252be6', '', '57891a1c-8108-43c5-a973-20e003662c24', '', 'zainal', 'kampret', '085731419945', 'zainalarief880@gmail.com', 'sql', 1, '2016-07-27 21:57:59', NULL, '127.0.1.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Mahasiswa', 36, 'Mahasiswa', 27, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:15:08', '2016-08-02 19:59:01', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(210, 'arifin', '18366af13db2726819b42aaef5610a125f565391', '', '57891a5d-b030-4203-8cc7-1ef503662c24', '', '', '', '', '', 'sql', 1, '2016-07-16 00:27:49', NULL, '127.0.1.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Mahasiswa', 36, 'Mahasiswa', 27, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:16:13', '2016-07-16 00:16:13', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(211, 'bagus', 'a4f69a159bc59c34a6f4068b2744efadcd6f74ae', '', '57891a97-55ac-4757-b350-1ef403662c24', '', '', '', '', '', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Mahasiswa', 36, 'Mahasiswa', 27, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:17:11', '2016-07-16 00:17:11', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(212, 'hilda', '86ef628926921e56b737ff911ce3d1a9ed6ff610', 'ad31b478525413f0b1b1d8bf0aebeb7c', '57891ad0-2fc0-44aa-a6ad-1ef503662c24', 'Hilda Ayu', '', 'Magetan', '08536353566', 'hildaayu@gmail.com', 'sql', 1, '2016-07-16 00:29:48', NULL, '127.0.1.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Karyawan', 38, 'Karyawan', 26, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:18:08', '2016-07-16 00:18:08', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(213, 'ilham', 'aabcc80fac2c6971a5273bbc049cd1aec2d574ff', '', '57891b0f-dda4-4a83-9b5e-20e003662c24', '', '', '', '', 'ilhamhamid159@gmail.com', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Karyawan', 38, 'Karyawan', 26, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:19:11', '2016-08-01 13:03:26', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(214, 'susi', '5c59406808215eccaf942cd1518a9ea6590cb9cc', '', '57891b45-39a0-47b5-9f61-1ef403662c24', '', '', '', '', 'susi94937@gmail.com', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Karyawan', 38, 'Karyawan', 26, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:20:05', '2016-08-01 12:52:37', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(215, 'bayu', 'd41d8cd98f00b204e9800998ecf8427e', 'a430e06de5ce438d499c2e4063d60fd6', '57891b98-fef4-4314-9ab1-1ef503662c24', 'Riska A', '', 'Magetan', '085731333945', 'anasepti68@gmail.com', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Dosen', 37, 'Dosen', 25, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:21:28', '2016-08-01 13:23:21', '5034a5d62f91942d2a7aeaf527dfe111', '2016-08-04 09:07:22'),
(216, 'bambang', 'e95229c048e2e06fb7bb05e158ee8eedeaee1ad9', '', '57891c00-43d0-4c60-b614-1ef403662c24', '', '', '', '', '', 'sql', 1, '2016-07-16 00:28:22', NULL, '127.0.1.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Dosen', 37, 'Dosen', 25, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:23:12', '2016-07-16 00:23:12', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32'),
(217, 'jatmiko', 'e42b0fc32a598a344ab9357a7c16442cb4e201e9', '', '57891c3e-9dc8-4597-a886-20e003662c24', '', '', '', '', 'jatmikom00@gmail.com', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'Dosen', 37, 'Dosen', 25, NULL, NULL, 1, 1, '', '', '', 4, 4, 44, '2016-07-16 00:24:14', '2016-08-01 12:58:25', '853c68de7253cdd55dc37be410a45c60', '2016-07-28 23:19:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permanent_user_notes`
--

CREATE TABLE IF NOT EXISTS `permanent_user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permanent_user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permanent_user_notifications`
--

CREATE TABLE IF NOT EXISTS `permanent_user_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permanent_user_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `method` enum('whatsapp','email','sms') DEFAULT 'email',
  `type` enum('daily','usage') DEFAULT 'daily',
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `start` int(3) DEFAULT '80',
  `increment` int(3) DEFAULT '10',
  `last_value` int(3) DEFAULT NULL,
  `last_notification` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `permanent_user_notifications`
--

INSERT INTO `permanent_user_notifications` (`id`, `permanent_user_id`, `active`, `method`, `type`, `address_1`, `address_2`, `start`, `increment`, `last_value`, `last_notification`, `created`, `modified`) VALUES
(2, 187, 1, 'email', 'daily', 'dirkvanderwalt@gmail.com', '', 80, 10, NULL, NULL, '2015-07-19 19:35:19', '2015-07-20 09:26:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permanent_user_settings`
--

CREATE TABLE IF NOT EXISTS `permanent_user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permanent_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `phrase_keys`
--

CREATE TABLE IF NOT EXISTS `phrase_keys` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `phrase_keys`
--

INSERT INTO `phrase_keys` (`id`, `name`, `comment`, `created`, `modified`) VALUES
(1, 'spclCountry', 'Your Country where you are', '2012-10-04 08:23:52', '2012-10-07 21:04:56'),
(2, 'spclLanguage', 'Your language', '2012-10-04 08:24:21', '2012-10-07 04:01:48'),
(6, 'sUsername', 'Username', '2012-10-04 12:53:36', '2012-10-07 18:40:18'),
(7, 'sPassword', 'Password', '2012-10-07 21:58:45', '2012-10-07 21:58:45'),
(10, 'sEnter_username', 'Typical login screen error', '2012-11-23 22:28:25', '2012-11-23 22:28:25'),
(11, 'sEnter_password', 'Typical login screen error', '2012-11-23 22:29:29', '2012-11-23 22:29:29'),
(12, 'sOK', 'OK like a confirmation or submit button', '2012-11-23 22:42:19', '2012-11-23 22:42:19'),
(13, 'sAuthenticate_please', 'Login window''s title', '2012-11-23 22:43:46', '2012-11-23 22:43:46'),
(14, 'sChanging_language_please_wait', 'The splash message while changing the language', '2012-11-23 22:47:51', '2012-11-23 22:47:51'),
(15, 'sNew_language_selected', 'Splash heading while changing language', '2012-11-23 22:49:05', '2012-11-23 22:49:05'),
(16, 'sChoose_a_language', 'Label', '2012-11-24 00:08:24', '2012-11-24 00:08:24'),
(17, 'sAbout', 'About button', '2012-11-29 17:20:23', '2012-11-29 17:20:23'),
(18, 'sFailure', 'This is in the error messages', '2012-12-03 18:02:04', '2012-12-03 18:02:04'),
(19, 'sReload', 'CRUD buttons', '2012-12-04 16:03:35', '2012-12-04 16:03:35'),
(20, 'sAdd', 'CRUD Buttons', '2012-12-04 22:25:58', '2012-12-04 22:25:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `phrase_values`
--

CREATE TABLE IF NOT EXISTS `phrase_values` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `country_id` int(5) DEFAULT NULL,
  `language_id` int(5) DEFAULT NULL,
  `phrase_key_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `phrase_values`
--

INSERT INTO `phrase_values` (`id`, `country_id`, `language_id`, `phrase_key_id`, `name`, `created`, `modified`) VALUES
(11, 4, 4, 1, 'United Kingdom', '2012-10-05 04:55:28', '2012-10-05 04:55:28'),
(12, 4, 4, 2, 'English', '2012-10-05 04:55:28', '2012-10-05 04:55:28'),
(13, 4, 4, 6, 'Username', '2012-10-05 04:55:28', '2012-11-24 14:36:26'),
(18, 4, 4, 7, 'Password', '2012-10-07 21:58:45', '2012-10-07 21:59:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pptp_clients`
--

CREATE TABLE IF NOT EXISTS `pptp_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(13, 'unc-1hour', 1, 44, '2016-06-27 09:35:56', '2016-06-27 09:35:56'),
(15, '1G-1Day', 1, 44, '2016-06-27 09:40:04', '2016-06-27 09:40:04'),
(17, '1G-1Day-BW-1Mbs', 1, 44, '2016-06-27 09:59:00', '2016-06-27 09:59:24'),
(18, '5M-every hour', 1, 44, '2016-06-27 10:01:02', '2016-06-27 10:01:02'),
(19, '1 Hour click to connect', 1, 44, '2016-06-27 13:13:59', '2016-06-27 13:13:59'),
(20, '500M click to connect', 1, 44, '2016-06-27 13:14:34', '2016-06-27 13:14:34'),
(25, 'Dosen', 0, 44, '2016-07-15 22:45:40', '2016-07-15 22:45:40'),
(26, 'Karyawan', 0, 44, '2016-07-15 22:47:12', '2016-07-15 22:47:12'),
(27, 'Mahasiswa', 0, 44, '2016-07-15 22:48:45', '2016-07-15 22:48:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_components`
--

CREATE TABLE IF NOT EXISTS `profile_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data untuk tabel `profile_components`
--

INSERT INTO `profile_components` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(46, '250M', 1, 44, '2013-08-24 21:20:20', '2013-08-24 21:20:20'),
(48, '500M', 1, 44, '2013-08-24 21:21:09', '2013-08-24 21:21:09'),
(49, '1G', 1, 44, '2013-08-24 21:21:23', '2013-08-24 21:21:23'),
(53, '1Hour', 1, 44, '2013-08-24 21:24:08', '2013-08-24 21:24:08'),
(56, '5M-every-hour', 1, 44, '2014-05-27 19:34:26', '2014-05-27 19:34:26'),
(61, '2G', 1, 44, '2016-06-27 07:21:44', '2016-06-27 07:21:44'),
(62, '5G', 1, 44, '2016-06-27 07:52:29', '2016-06-27 07:52:29'),
(63, '1Week', 1, 44, '2016-06-27 09:03:36', '2016-06-27 09:03:36'),
(64, '1Day', 1, 44, '2016-06-27 09:06:35', '2016-06-27 09:06:35'),
(65, '1Month', 1, 44, '2016-06-27 09:15:16', '2016-06-27 09:15:16'),
(66, 'BW-1Mbs', 1, 44, '2016-06-27 09:44:24', '2016-06-27 09:44:24'),
(67, 'BW-384Kbs', 1, 44, '2016-06-27 09:49:44', '2016-06-27 09:49:44'),
(68, 'BW-512Kbs', 1, 44, '2016-06-27 09:51:38', '2016-06-27 09:51:38'),
(69, 'BW-2Mbs', 1, 44, '2016-06-27 09:53:22', '2016-06-27 09:53:22'),
(70, 'BW-4Mbs', 1, 44, '2016-06-27 09:55:00', '2016-06-27 09:55:00'),
(71, '1Hour per MAC daily', 1, 44, '2016-06-27 12:52:06', '2016-06-27 12:52:06'),
(72, '500M per MAC daily', 1, 44, '2016-06-27 13:05:57', '2016-06-27 13:05:57'),
(73, 'Dosen', 0, 44, '2016-07-14 14:57:29', '2016-07-14 14:57:29'),
(74, 'Karyawan', 0, 44, '2016-07-14 14:58:36', '2016-07-14 14:58:36'),
(75, 'Mahasiswa', 0, 44, '2016-07-14 14:59:21', '2016-07-14 14:59:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_component_notes`
--

CREATE TABLE IF NOT EXISTS `profile_component_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_component_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_notes`
--

CREATE TABLE IF NOT EXISTS `profile_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `radacct`
--

CREATE TABLE IF NOT EXISTS `radacct` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctupdatetime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctinterval` int(12) DEFAULT NULL,
  `acctsessiontime` int(12) unsigned DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) DEFAULT NULL,
  `acctstopdelay` int(12) DEFAULT NULL,
  `xascendsessionsvrkey` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`radacctid`),
  UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  KEY `username` (`username`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctsessiontime` (`acctsessiontime`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctinterval` (`acctinterval`),
  KEY `acctstoptime` (`acctstoptime`),
  KEY `nasipaddress` (`nasipaddress`),
  KEY `nasidentifier` (`nasidentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Trigger `radacct`
--
DROP TRIGGER IF EXISTS `radacct_after_update`;
DELIMITER //
CREATE TRIGGER `radacct_after_update` AFTER UPDATE ON `radacct`
 FOR EACH ROW BEGIN
INSERT INTO user_stats 
  SET 
  radacct_id        = OLD.radacctid,
  username          = OLD.username,
  realm             = OLD.realm,  
  nasipaddress      = OLD.nasipaddress,
  nasidentifier     = OLD.nasidentifier,
  framedipaddress   = OLD.framedipaddress,
  callingstationid  = OLD.callingstationid,
  acctinputoctets   = (NEW.acctinputoctets - OLD.acctinputoctets), 
  acctoutputoctets  = (NEW.acctoutputoctets - OLD.acctoutputoctets);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `radcheck`
--

CREATE TABLE IF NOT EXISTS `radcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32)),
  KEY `FK_radcheck_ref_vouchers` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10055 ;

--
-- Dumping data untuk tabel `radcheck`
--

INSERT INTO `radcheck` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(9222, '08-ed-b9-00-bc-55', 'Rd-User-Type', ':=', 'device'),
(9223, '08-ed-b9-00-bc-55', 'Rd-Realm', ':=', 'Residence Inn'),
(9224, '08-ed-b9-00-bc-55', 'Rd-Device-Owner', ':=', 'dvdwalt'),
(9225, '08-ed-b9-00-bc-55', 'User-Profile', ':=', 'Data-Standard-1G'),
(9226, '08-ed-b9-00-bc-55', 'Rd-Account-Disabled', ':=', '0'),
(9779, 'AA-BB-BB-DD-EE-F1', 'Rd-User-Type', ':=', 'voucher-device'),
(9780, 'AA-BB-BB-DD-EE-F1', 'Rd-Voucher-Device-Owner', ':=', 'cheerypet'),
(9781, 'AA-BB-BB-DD-EE-F1', 'User-Profile', ':=', 'Data-Standard-1G'),
(9782, 'AA-BB-BB-DD-EE-F1', 'Rd-Realm', ':=', 'Residence Inn'),
(10010, 'zainal', 'Cleartext-Password', ':=', 'zainal'),
(10011, 'zainal', 'Rd-User-Type', ':=', 'user'),
(10012, 'zainal', 'Rd-Realm', ':=', 'Mahasiswa'),
(10013, 'zainal', 'User-Profile', ':=', 'Mahasiswa'),
(10014, 'zainal', 'Rd-Account-Disabled', ':=', '0'),
(10015, 'arifin', 'Cleartext-Password', ':=', 'arifin'),
(10016, 'arifin', 'Rd-User-Type', ':=', 'user'),
(10017, 'arifin', 'Rd-Realm', ':=', 'Mahasiswa'),
(10018, 'arifin', 'User-Profile', ':=', 'Mahasiswa'),
(10019, 'arifin', 'Rd-Account-Disabled', ':=', '0'),
(10020, 'bagus', 'Cleartext-Password', ':=', 'bagus'),
(10021, 'bagus', 'Rd-User-Type', ':=', 'user'),
(10022, 'bagus', 'Rd-Realm', ':=', 'Mahasiswa'),
(10023, 'bagus', 'User-Profile', ':=', 'Mahasiswa'),
(10024, 'bagus', 'Rd-Account-Disabled', ':=', '0'),
(10025, 'hilda', 'Cleartext-Password', ':=', 'hilda'),
(10026, 'hilda', 'Rd-User-Type', ':=', 'user'),
(10027, 'hilda', 'Rd-Realm', ':=', 'Karyawan'),
(10028, 'hilda', 'User-Profile', ':=', 'Karyawan'),
(10029, 'hilda', 'Rd-Account-Disabled', ':=', '0'),
(10030, 'ilham', 'Cleartext-Password', ':=', 'ilham'),
(10031, 'ilham', 'Rd-User-Type', ':=', 'user'),
(10032, 'ilham', 'Rd-Realm', ':=', 'Karyawan'),
(10033, 'ilham', 'User-Profile', ':=', 'Karyawan'),
(10034, 'ilham', 'Rd-Account-Disabled', ':=', '0'),
(10035, 'susi', 'Cleartext-Password', ':=', 'susi'),
(10036, 'susi', 'Rd-User-Type', ':=', 'user'),
(10037, 'susi', 'Rd-Realm', ':=', 'Karyawan'),
(10038, 'susi', 'User-Profile', ':=', 'Karyawan'),
(10039, 'susi', 'Rd-Account-Disabled', ':=', '0'),
(10040, 'bayu', 'Cleartext-Password', ':=', 'bayu'),
(10041, 'bayu', 'Rd-User-Type', ':=', 'user'),
(10042, 'bayu', 'Rd-Realm', ':=', 'Dosen'),
(10043, 'bayu', 'User-Profile', ':=', 'Dosen'),
(10044, 'bayu', 'Rd-Account-Disabled', ':=', '0'),
(10045, 'bambang', 'Cleartext-Password', ':=', 'bambang'),
(10046, 'bambang', 'Rd-User-Type', ':=', 'user'),
(10047, 'bambang', 'Rd-Realm', ':=', 'Dosen'),
(10048, 'bambang', 'User-Profile', ':=', 'Dosen'),
(10049, 'bambang', 'Rd-Account-Disabled', ':=', '0'),
(10050, 'jatmiko', 'Cleartext-Password', ':=', 'jatmiko'),
(10051, 'jatmiko', 'Rd-User-Type', ':=', 'user'),
(10052, 'jatmiko', 'Rd-Realm', ':=', 'Dosen'),
(10053, 'jatmiko', 'User-Profile', ':=', 'Dosen'),
(10054, 'jatmiko', 'Rd-Account-Disabled', ':=', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radgroupcheck`
--

CREATE TABLE IF NOT EXISTS `radgroupcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data untuk tabel `radgroupcheck`
--

INSERT INTO `radgroupcheck` (`id`, `groupname`, `attribute`, `op`, `value`, `comment`, `created`, `modified`) VALUES
(43, '500M', 'Rd-Reset-Type-Data', ':=', 'never', '', '2013-08-24 21:34:24', '2013-08-24 21:35:25'),
(44, '500M', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2013-08-24 21:34:34', '2013-08-24 21:35:17'),
(45, '500M', 'Rd-Total-Data', ':=', '500000000', '', '2013-08-24 21:34:53', '2013-08-24 21:35:11'),
(49, '250M', 'Rd-Reset-Type-Data', ':=', 'never', '', '2013-08-24 21:38:07', '2013-08-24 21:38:48'),
(51, '250M', 'Rd-Total-Data', ':=', '250000000', '', '2013-08-24 21:38:21', '2013-08-24 21:38:33'),
(53, '1Hour', 'Rd-Reset-Type-Time', ':=', 'never', '', '2013-08-24 21:39:32', '2013-08-24 21:39:53'),
(62, '1Hour', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2013-08-24 21:44:42', '2013-08-24 21:44:49'),
(63, '5M-every-hour', 'Rd-Reset-Interval-Data', ':=', '3600', '', '2014-05-27 19:35:39', '2014-05-27 19:36:09'),
(64, '5M-every-hour', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2014-05-27 19:37:15', '2014-05-27 19:37:20'),
(65, '5M-every-hour', 'Rd-Total-Data', ':=', '5000000', '', '2014-05-27 19:37:31', '2014-05-27 19:37:38'),
(67, '5M-every-hour', 'Rd-Reset-Type-Data', ':=', 'dynamic', '', '2014-05-27 19:39:11', '2014-05-27 19:39:21'),
(68, '5M-every-hour', 'Rd-Mac-Counter-Data', ':=', '1', '', '2014-05-27 19:39:48', '2014-05-27 19:39:53'),
(69, '1G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2014-09-02 16:09:08', '2014-09-02 16:09:18'),
(85, '1G', 'Rd-Total-Data', ':=', '1000000000', '', '2016-06-27 07:23:15', '2016-06-27 07:23:44'),
(87, '2G', 'Rd-Reset-Type-Data', ':=', 'never', '', '2016-06-27 07:46:58', '2016-06-27 07:48:10'),
(88, '2G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 07:47:08', '2016-06-27 07:48:17'),
(89, '2G', 'Rd-Total-Data', ':=', '2000000000', '', '2016-06-27 07:47:33', '2016-06-27 07:48:41'),
(91, '5G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 07:53:12', '2016-06-27 07:53:17'),
(92, '5G', 'Rd-Reset-Type-Data', ':=', 'never', '', '2016-06-27 07:53:24', '2016-06-27 07:54:06'),
(93, '5G', 'Rd-Total-Data', ':=', '5000000000', '', '2016-06-27 07:54:24', '2016-06-27 07:54:32'),
(95, '1Week', 'Rd-Total-Time', ':=', '604800', '', '2016-06-27 09:05:03', '2016-06-27 09:05:15'),
(96, '1Week', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:05:35', '2016-06-27 09:05:44'),
(97, '1Week', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:05:54', '2016-06-27 09:06:01'),
(99, '1Day', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:07:15', '2016-06-27 09:11:53'),
(100, '1Day', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:07:31', '2016-06-27 09:12:00'),
(101, '1Day', 'Rd-Total-Time', ':=', '86400', '', '2016-06-27 09:12:05', '2016-06-27 09:12:10'),
(102, '1Month', 'Rd-Total-Time', ':=', '2628029', '', '2016-06-27 09:15:32', '2016-06-27 09:16:42'),
(104, '1Month', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:17:38', '2016-06-27 09:17:54'),
(105, '1Month', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:17:47', '2016-06-27 09:18:01'),
(122, '1Hour per MAC daily', 'Rd-Total-Time', ':=', '3600', '', '2016-06-27 12:57:57', '2016-06-27 13:02:14'),
(123, '1Hour', 'Rd-Total-Time', ':=', '3600', '', '2016-06-27 12:58:42', '2016-06-27 12:59:25'),
(124, '250M', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 13:00:33', '2016-06-27 13:00:40'),
(125, '1Hour per MAC daily', 'Rd-Reset-Type-Time', ':=', 'daily', '', '2016-06-27 13:02:57', '2016-06-27 13:03:06'),
(126, '1Hour per MAC daily', 'Rd-Mac-Counter-Time', ':=', '1', '', '2016-06-27 13:03:59', '2016-06-27 13:04:04'),
(127, '1Hour per MAC daily', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 13:04:20', '2016-06-27 13:04:26'),
(129, '500M per MAC daily', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 13:06:37', '2016-06-27 13:07:32'),
(131, '500M per MAC daily', 'Rd-Mac-Counter-Data', ':=', '1', '', '2016-06-27 13:07:06', '2016-06-27 13:07:44'),
(132, '500M per MAC daily', 'Rd-Total-Data', ':=', '500000000', '', '2016-06-27 13:07:23', '2016-06-27 13:11:26'),
(133, '500M per MAC daily', 'Rd-Reset-Type-Data', ':=', 'daily', '', '2016-06-27 13:11:05', '2016-06-27 13:11:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radgroupreply`
--

CREATE TABLE IF NOT EXISTS `radgroupreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data untuk tabel `radgroupreply`
--

INSERT INTO `radgroupreply` (`id`, `groupname`, `attribute`, `op`, `value`, `comment`, `created`, `modified`) VALUES
(5, '500M', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:27:46', '2013-08-24 21:27:46'),
(9, '250M', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:28:41', '2013-08-24 21:28:41'),
(10, '1Hour', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:29:07', '2013-08-24 21:29:07'),
(12, '1G', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:29:28', '2013-08-24 21:29:28'),
(18, '', '', '=', '', '', '2015-07-11 14:11:55', '2015-07-11 14:11:55'),
(28, '2G', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 07:47:44', '2016-06-28 22:10:39'),
(29, '5G', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 07:52:46', '2016-06-28 22:10:26'),
(30, '1Week', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:04:36', '2016-06-28 22:11:09'),
(31, '1Day', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:06:52', '2016-06-28 22:11:30'),
(32, '1Month', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:17:21', '2016-06-28 22:11:14'),
(33, 'BW-1Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:44:45', '2016-06-28 22:09:42'),
(34, 'BW-1Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '2016-06-27 09:48:41', '2016-06-27 09:48:41'),
(35, 'BW-1Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '2016-06-27 09:48:46', '2016-06-27 09:48:46'),
(36, 'BW-384Kbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:50:08', '2016-06-28 22:09:30'),
(37, 'BW-384Kbs', 'WISPr-Bandwidth-Max-Up', ':=', '384000', '', '2016-06-27 09:50:43', '2016-06-27 09:51:09'),
(38, 'BW-384Kbs', 'WISPr-Bandwidth-Max-Down', ':=', '384000', '', '2016-06-27 09:51:15', '2016-06-27 09:51:15'),
(39, 'BW-512Kbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:51:51', '2016-06-28 22:08:54'),
(40, 'BW-512Kbs', 'WISPr-Bandwidth-Max-Up', ':=', '512000', '', '2016-06-27 09:52:22', '2016-06-27 09:52:34'),
(41, 'BW-512Kbs', 'WISPr-Bandwidth-Max-Down', ':=', '512000', '', '2016-06-27 09:52:27', '2016-06-27 09:52:46'),
(42, 'BW-2Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:53:53', '2016-06-28 22:09:36'),
(43, 'BW-2Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '2000000', '', '2016-06-27 09:53:57', '2016-06-27 09:54:19'),
(44, 'BW-2Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '2000000', '', '2016-06-27 09:54:02', '2016-06-27 09:54:30'),
(45, 'BW-4Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:55:38', '2016-06-28 22:09:13'),
(46, 'BW-4Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '4000000', '', '2016-06-27 09:55:42', '2016-06-27 09:55:59'),
(47, 'BW-4Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '4000000', '', '2016-06-27 09:55:46', '2016-06-27 09:56:06'),
(48, '5M-every-hour', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 12:55:34', '2016-06-27 12:55:34'),
(49, '1Hour per MAC daily', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 12:56:33', '2016-06-28 22:11:19'),
(50, '500M per MAC daily', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 13:06:14', '2016-06-28 22:10:31'),
(51, 'Mahasiswa', 'Fall-Through', ':=', 'Yes', '', '2016-07-14 15:04:46', '2016-07-14 15:04:46'),
(52, 'Mahasiswa', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '2016-07-14 15:06:37', '2016-07-14 15:06:37'),
(53, 'Mahasiswa', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '2016-07-14 15:07:09', '2016-07-14 15:07:09'),
(54, 'Karyawan', 'Fall-Through', ':=', 'Yes', '', '2016-07-14 15:14:13', '2016-07-14 15:16:44'),
(55, 'Karyawan', 'WISPr-Bandwidth-Min-Up', ':=', '2000000', '', '2016-07-14 15:15:20', '2016-07-14 15:15:20'),
(56, 'Karyawan', 'WISPr-Bandwidth-Min-Down', ':=', '2000000', '', '2016-07-14 15:15:59', '2016-07-14 15:15:59'),
(57, 'Dosen', 'Fall-Through', ':=', 'Yes', '', '2016-07-14 15:18:04', '2016-07-14 15:18:04'),
(58, 'Dosen', 'WISPr-Bandwidth-Min-Up', ':=', '2000000', '', '2016-07-14 15:18:32', '2016-07-14 15:18:32'),
(59, 'Dosen', 'WISPr-Bandwidth-Min-Down', ':=', '2000000', '', '2016-07-14 15:18:48', '2016-07-14 15:18:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radippool`
--

CREATE TABLE IF NOT EXISTS `radippool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pool_name` varchar(30) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `calledstationid` varchar(30) NOT NULL,
  `callingstationid` varchar(30) NOT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pool_key` varchar(30) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `permanent_user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `radippool_poolname_expire` (`pool_name`,`expiry_time`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `radippool_nasip_poolkey_ipaddress` (`nasipaddress`,`pool_key`,`framedipaddress`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- Dumping data untuk tabel `radippool`
--

INSERT INTO `radippool` (`id`, `pool_name`, `framedipaddress`, `nasipaddress`, `calledstationid`, `callingstationid`, `expiry_time`, `username`, `pool_key`, `nasidentifier`, `extra_name`, `extra_value`, `active`, `permanent_user_id`, `created`, `modified`) VALUES
(164, 'Test', '192.168.1.1', '', '', '', NULL, 'dvdwalt', '', '', '', '', 1, 187, '2015-04-14 04:33:45', '2015-04-14 09:01:03'),
(165, 'Test', '192.168.1.2', '', '', '', NULL, '', '', '', '', '', 1, NULL, '2015-04-14 04:33:45', '2015-04-14 08:12:23'),
(166, 'Test', '192.168.1.3', '', '', '', NULL, '', '', '', '', '', 1, NULL, '2015-04-14 04:33:45', '2015-04-14 04:33:45'),
(167, 'Test', '192.168.1.4', '', '', '', NULL, '', '', '', '', '', 1, NULL, '2015-04-14 04:33:45', '2015-04-14 04:33:45'),
(168, 'Test', '192.168.1.5', '', '', '', NULL, '', '', '', '', '', 1, NULL, '2015-04-14 04:33:45', '2015-04-14 04:33:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radpostauth`
--

CREATE TABLE IF NOT EXISTS `radpostauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT NULL,
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `nasname` varchar(128) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `radpostauth`
--

INSERT INTO `radpostauth` (`id`, `username`, `realm`, `pass`, `reply`, `nasname`, `authdate`) VALUES
(8, 'zainal', NULL, 'zainal', 'Access-Accept', '', '2016-07-15 17:26:32'),
(9, 'arifin', NULL, 'arifin', 'Access-Accept', '', '2016-07-15 17:27:49'),
(10, 'bambang', NULL, 'bambang', 'Access-Accept', '', '2016-07-15 17:28:22'),
(11, 'hilda', NULL, 'hilda', 'Access-Accept', '', '2016-07-15 17:29:48'),
(12, 'zainal', NULL, 'zainal', 'Access-Accept', '', '2016-07-27 14:57:47'),
(13, 'zainal', NULL, 'zainal', 'Access-Accept', '', '2016-07-27 14:57:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `radreply`
--

CREATE TABLE IF NOT EXISTS `radreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32)),
  KEY `FK_radreply_ref_vouchers` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `radusergroup`
--

CREATE TABLE IF NOT EXISTS `radusergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data untuk tabel `radusergroup`
--

INSERT INTO `radusergroup` (`id`, `username`, `groupname`, `priority`) VALUES
(26, 'unc-1hour', '1Hour', 5),
(30, '1G-1Day', '1G', 5),
(31, '1G-1Day', '1Day', 3),
(35, '1G-1Day-BW-1Mbs', '1G', 1),
(36, '1G-1Day-BW-1Mbs', '1Day', 5),
(37, '1G-1Day-BW-1Mbs', 'BW-1Mbs', 3),
(38, '5M-every hour', '5M-every-hour', 5),
(39, '1 Hour click to connect', '1Hour per MAC daily', 5),
(40, '500M click to connect', '500M per MAC daily', 5),
(43, 'Dosen', 'Dosen', 5),
(44, 'Karyawan', 'Karyawan', 5),
(45, 'Mahasiswa', 'Mahasiswa', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `realms`
--

CREATE TABLE IF NOT EXISTS `realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `twitter` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(255) NOT NULL DEFAULT '',
  `youtube` varchar(255) NOT NULL DEFAULT '',
  `google_plus` varchar(255) NOT NULL DEFAULT '',
  `linkedin` varchar(255) NOT NULL DEFAULT '',
  `t_c_title` varchar(255) NOT NULL DEFAULT '',
  `t_c_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `realms`
--

INSERT INTO `realms` (`id`, `name`, `available_to_siblings`, `icon_file_name`, `phone`, `fax`, `cell`, `email`, `url`, `street_no`, `street`, `town_suburb`, `city`, `country`, `lat`, `lon`, `user_id`, `created`, `modified`, `twitter`, `facebook`, `youtube`, `google_plus`, `linkedin`, `t_c_title`, `t_c_content`) VALUES
(36, 'Mahasiswa', 0, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 44, '2016-07-14 14:38:20', '2016-07-14 14:38:20', '', '', '', '', '', '', ''),
(37, 'Dosen', 0, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 44, '2016-07-14 14:39:00', '2016-07-14 14:39:00', '', '', '', '', '', '', ''),
(38, 'Karyawan', 0, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 44, '2016-07-14 14:39:33', '2016-07-14 14:39:33', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `realm_notes`
--

CREATE TABLE IF NOT EXISTS `realm_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_login_users`
--

CREATE TABLE IF NOT EXISTS `social_login_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` enum('Facebook','Google','Twitter') DEFAULT 'Facebook',
  `uid` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `locale` varchar(5) NOT NULL DEFAULT '',
  `timezone` tinyint(1) NOT NULL DEFAULT '0',
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT 'male',
  `last_connect_time` datetime DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_login_user_realms`
--

CREATE TABLE IF NOT EXISTS `social_login_user_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_login_user_id` int(11) DEFAULT NULL,
  `realm_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ssids`
--

CREATE TABLE IF NOT EXISTS `ssids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ssids`
--

INSERT INTO `ssids` (`id`, `name`, `available_to_siblings`, `user_id`, `extra_name`, `extra_value`, `created`, `modified`) VALUES
(2, 'Test1', 1, 44, 'test extra name1', 'test extra value1', '2015-04-16 21:40:48', '2015-04-17 08:57:56'),
(3, 'Test2', 0, 182, '', '', '2015-04-17 08:57:21', '2015-04-17 08:58:12'),
(4, 'Test3', 0, 182, '', '', '2015-04-17 08:57:44', '2015-04-17 08:57:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(1, 'test', 1, 44, '2015-07-11 08:31:45', '2015-07-11 08:31:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag_notes`
--

CREATE TABLE IF NOT EXISTS `tag_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(19, 'Lekker', 0, 58, '2013-02-08 10:22:52', '2013-02-08 10:22:52'),
(20, 'Op die oor', 0, 44, '2013-02-08 12:55:44', '2013-02-08 12:55:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_attributes`
--

CREATE TABLE IF NOT EXISTS `template_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `attribute` varchar(128) NOT NULL,
  `type` enum('Check','Reply') DEFAULT 'Check',
  `tooltip` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `template_attributes`
--

INSERT INTO `template_attributes` (`id`, `template_id`, `attribute`, `type`, `tooltip`, `unit`, `created`, `modified`) VALUES
(2, 19, 'koos', 'Check', 'Gooi hom', 'text_string', '2013-02-09 10:50:35', '2013-02-09 12:15:04'),
(5, 19, 'koos', 'Reply', 'Hy werk lek', 'reply', '2013-02-09 10:50:44', '2013-02-09 16:26:08'),
(6, 19, 'koos', 'Check', 'Skipm dit sal bemost wees', 'text_string', '2013-02-09 10:50:45', '2013-02-09 12:03:54'),
(7, 19, 'Rd-Tag-A', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:18', '2013-02-09 16:55:18'),
(8, 19, 'Rd-Tag-B', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:26', '2013-02-09 16:55:26'),
(9, 19, 'Rd-Tag-C', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:32', '2013-02-09 16:55:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_notes`
--

CREATE TABLE IF NOT EXISTS `template_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `template_notes`
--

INSERT INTO `template_notes` (`id`, `template_id`, `note_id`, `created`, `modified`) VALUES
(20, 18, 46, '2013-02-08 06:07:59', '2013-02-08 06:07:59'),
(21, 18, 47, '2013-02-08 06:08:47', '2013-02-08 06:08:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_ups`
--

CREATE TABLE IF NOT EXISTS `top_ups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `data` bigint(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `days_to_use` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unknown_aps`
--

CREATE TABLE IF NOT EXISTS `unknown_aps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `last_contact_from_ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `new_server` varchar(255) NOT NULL DEFAULT '',
  `new_server_status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unknown_dynamic_clients`
--

CREATE TABLE IF NOT EXISTS `unknown_dynamic_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nasidentifier` varchar(128) NOT NULL DEFAULT '',
  `calledstationid` varchar(128) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_ip` varchar(128) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nasidentifier` (`nasidentifier`),
  UNIQUE KEY `calledstationid` (`calledstationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unknown_nodes`
--

CREATE TABLE IF NOT EXISTS `unknown_nodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `from_ip` varchar(15) NOT NULL DEFAULT '',
  `gateway` tinyint(1) NOT NULL DEFAULT '1',
  `last_contact` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `new_server` varchar(255) NOT NULL DEFAULT '',
  `new_server_status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `name`, `surname`, `address`, `phone`, `email`, `active`, `monitor`, `country_id`, `group_id`, `language_id`, `parent_id`, `lft`, `rght`, `created`, `modified`) VALUES
(44, 'root', '6e777080e4f15885bf6d6ff1ef63675f', '579c9c40-3104-40a6-b34e-48cf03662c24', 'root', '', '', '', '', 1, 0, 4, 8, 4, NULL, 1, 6, '2012-12-10 13:14:13', '2016-07-30 19:23:28'),
(182, 'admin_college', 'b0451947e4b0ee5b5ee981afe174e6630d72ff58', '521dc362-81a4-4a34-8a0b-052f03662c24', '', '', '', '', '', 1, 1, 4, 9, 4, 44, 2, 3, '2013-08-28 11:31:14', '2014-08-11 12:51:57'),
(190, 'admin_freddy', '6e777080e4f15885bf6d6ff1ef63675f', '579c9211-7958-4d7b-879c-48cf03662c24', '', '', '', '', '', 0, 1, 4, 9, 4, 44, 4, 5, '2013-10-25 11:22:19', '2016-07-30 18:40:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_notes`
--

CREATE TABLE IF NOT EXISTS `user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `user_notes`
--

INSERT INTO `user_notes` (`id`, `user_id`, `note_id`, `created`, `modified`) VALUES
(1, 182, 77, '2014-01-07 22:12:23', '2014-01-07 22:12:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_settings`
--

CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data untuk tabel `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `name`, `value`, `created`, `modified`) VALUES
(52, 44, 'map_zoom', '18', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(53, 44, 'map_type', 'HYBRID', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(54, 44, 'map_lat', '-25.737590494704', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(55, 44, 'map_lng', '28.30269861188', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(56, 44, 'wallpaper', '8.jpg', '2013-04-06 13:51:50', '2016-05-06 06:20:10'),
(57, 182, 'map_zoom', '18', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(58, 182, 'map_type', 'ROADMAP', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(59, 182, 'map_lat', '42.33821464661343', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(60, 182, 'map_lng', '-71.09557402167296', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(61, 182, 'wallpaper', '1.jpg', '2013-09-06 17:59:42', '2016-05-04 04:59:04'),
(62, 44, 'dynamic_client_map_zoom', '18', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(63, 44, 'dynamic_client_map_type', 'ROADMAP', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(64, 44, 'dynamic_client_map_lat', '42.33725929507717', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(65, 44, 'dynamic_client_map_lng', '-71.09232318434691', '2016-03-19 04:40:21', '2016-03-19 04:40:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_ssids`
--

CREATE TABLE IF NOT EXISTS `user_ssids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `ssidname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_stats`
--

CREATE TABLE IF NOT EXISTS `user_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radacct_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acctinputoctets` bigint(20) NOT NULL,
  `acctoutputoctets` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_stats_index` (`radacct_id`,`username`,`realm`,`nasipaddress`,`nasidentifier`,`callingstationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vouchers`
--

CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `batch` varchar(128) NOT NULL DEFAULT '',
  `status` enum('new','used','depleted','expired') DEFAULT 'new',
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `realm` varchar(50) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile` varchar(50) NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `expire` varchar(10) NOT NULL DEFAULT '',
  `time_valid` varchar(10) NOT NULL DEFAULT '',
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ak_vouchers` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
