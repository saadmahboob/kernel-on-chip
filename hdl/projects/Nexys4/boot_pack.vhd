library ieee;
use ieee.std_logic_1164.all;

package boot_pack is

	constant cpu_width : integer := 32;
	constant ram_size : integer := 667;
	subtype word_type is std_logic_vector(cpu_width-1 downto 0);
	type ram_type is array(0 to ram_size-1) of word_type;
	function load_hex return ram_type;

end package;

package body boot_pack is

	function load_hex return ram_type is
		variable ram_buffer : ram_type := (others=>(others=>'0'));
	begin
		ram_buffer(0) := X"3C1C0001";
		ram_buffer(1) := X"279C8A60";
		ram_buffer(2) := X"3C1D0000";
		ram_buffer(3) := X"27BD0A98";
		ram_buffer(4) := X"0C0001BC";
		ram_buffer(5) := X"00000000";
		ram_buffer(6) := X"00000000";
		ram_buffer(7) := X"00000000";
		ram_buffer(8) := X"00000000";
		ram_buffer(9) := X"00000000";
		ram_buffer(10) := X"00000000";
		ram_buffer(11) := X"00000000";
		ram_buffer(12) := X"00000000";
		ram_buffer(13) := X"00000000";
		ram_buffer(14) := X"00000000";
		ram_buffer(15) := X"23BDFF98";
		ram_buffer(16) := X"AFA10010";
		ram_buffer(17) := X"AFA20014";
		ram_buffer(18) := X"AFA30018";
		ram_buffer(19) := X"AFA4001C";
		ram_buffer(20) := X"AFA50020";
		ram_buffer(21) := X"AFA60024";
		ram_buffer(22) := X"AFA70028";
		ram_buffer(23) := X"AFA8002C";
		ram_buffer(24) := X"AFA90030";
		ram_buffer(25) := X"AFAA0034";
		ram_buffer(26) := X"AFAB0038";
		ram_buffer(27) := X"AFAC003C";
		ram_buffer(28) := X"AFAD0040";
		ram_buffer(29) := X"AFAE0044";
		ram_buffer(30) := X"AFAF0048";
		ram_buffer(31) := X"AFB8004C";
		ram_buffer(32) := X"AFB90050";
		ram_buffer(33) := X"AFBF0054";
		ram_buffer(34) := X"401A7000";
		ram_buffer(35) := X"235AFFFC";
		ram_buffer(36) := X"AFBA0058";
		ram_buffer(37) := X"0000D810";
		ram_buffer(38) := X"AFBB005C";
		ram_buffer(39) := X"0000D812";
		ram_buffer(40) := X"AFBB0060";
		ram_buffer(41) := X"0C000194";
		ram_buffer(42) := X"23A50000";
		ram_buffer(43) := X"8FA10010";
		ram_buffer(44) := X"8FA20014";
		ram_buffer(45) := X"8FA30018";
		ram_buffer(46) := X"8FA4001C";
		ram_buffer(47) := X"8FA50020";
		ram_buffer(48) := X"8FA60024";
		ram_buffer(49) := X"8FA70028";
		ram_buffer(50) := X"8FA8002C";
		ram_buffer(51) := X"8FA90030";
		ram_buffer(52) := X"8FAA0034";
		ram_buffer(53) := X"8FAB0038";
		ram_buffer(54) := X"8FAC003C";
		ram_buffer(55) := X"8FAD0040";
		ram_buffer(56) := X"8FAE0044";
		ram_buffer(57) := X"8FAF0048";
		ram_buffer(58) := X"8FB8004C";
		ram_buffer(59) := X"8FB90050";
		ram_buffer(60) := X"8FBF0054";
		ram_buffer(61) := X"8FBA0058";
		ram_buffer(62) := X"8FBB005C";
		ram_buffer(63) := X"03600011";
		ram_buffer(64) := X"8FBB0060";
		ram_buffer(65) := X"03600013";
		ram_buffer(66) := X"23BD0068";
		ram_buffer(67) := X"341B0001";
		ram_buffer(68) := X"03400008";
		ram_buffer(69) := X"409B6000";
		ram_buffer(70) := X"40026000";
		ram_buffer(71) := X"03E00008";
		ram_buffer(72) := X"40846000";
		ram_buffer(73) := X"3C050000";
		ram_buffer(74) := X"24A50150";
		ram_buffer(75) := X"8CA60000";
		ram_buffer(76) := X"AC06003C";
		ram_buffer(77) := X"8CA60004";
		ram_buffer(78) := X"AC060040";
		ram_buffer(79) := X"8CA60008";
		ram_buffer(80) := X"AC060044";
		ram_buffer(81) := X"8CA6000C";
		ram_buffer(82) := X"03E00008";
		ram_buffer(83) := X"AC060048";
		ram_buffer(84) := X"3C1A0000";
		ram_buffer(85) := X"375A003C";
		ram_buffer(86) := X"03400008";
		ram_buffer(87) := X"00000000";
		ram_buffer(88) := X"00850019";
		ram_buffer(89) := X"00001012";
		ram_buffer(90) := X"00002010";
		ram_buffer(91) := X"03E00008";
		ram_buffer(92) := X"ACC40000";
		ram_buffer(93) := X"0000000C";
		ram_buffer(94) := X"03E00008";
		ram_buffer(95) := X"00000000";
		ram_buffer(96) := X"AC900000";
		ram_buffer(97) := X"AC910004";
		ram_buffer(98) := X"AC920008";
		ram_buffer(99) := X"AC93000C";
		ram_buffer(100) := X"AC940010";
		ram_buffer(101) := X"AC950014";
		ram_buffer(102) := X"AC960018";
		ram_buffer(103) := X"AC97001C";
		ram_buffer(104) := X"AC9E0020";
		ram_buffer(105) := X"AC9C0024";
		ram_buffer(106) := X"AC9D0028";
		ram_buffer(107) := X"AC9F002C";
		ram_buffer(108) := X"03E00008";
		ram_buffer(109) := X"34020000";
		ram_buffer(110) := X"8C900000";
		ram_buffer(111) := X"8C910004";
		ram_buffer(112) := X"8C920008";
		ram_buffer(113) := X"8C93000C";
		ram_buffer(114) := X"8C940010";
		ram_buffer(115) := X"8C950014";
		ram_buffer(116) := X"8C960018";
		ram_buffer(117) := X"8C97001C";
		ram_buffer(118) := X"8C9E0020";
		ram_buffer(119) := X"8C9C0024";
		ram_buffer(120) := X"8C9D0028";
		ram_buffer(121) := X"8C9F002C";
		ram_buffer(122) := X"03E00008";
		ram_buffer(123) := X"34A20000";
		ram_buffer(124) := X"27BDFFC0";
		ram_buffer(125) := X"AFBF003C";
		ram_buffer(126) := X"AFB70034";
		ram_buffer(127) := X"AFB5002C";
		ram_buffer(128) := X"AFB1001C";
		ram_buffer(129) := X"AFB00018";
		ram_buffer(130) := X"AFBE0038";
		ram_buffer(131) := X"AFB60030";
		ram_buffer(132) := X"AFB40028";
		ram_buffer(133) := X"AFB30024";
		ram_buffer(134) := X"AFB20020";
		ram_buffer(135) := X"0C000109";
		ram_buffer(136) := X"3C15F0F0";
		ram_buffer(137) := X"3C100000";
		ram_buffer(138) := X"24040001";
		ram_buffer(139) := X"0C000186";
		ram_buffer(140) := X"3C110000";
		ram_buffer(141) := X"36B5F0F0";
		ram_buffer(142) := X"24170003";
		ram_buffer(143) := X"26100988";
		ram_buffer(144) := X"26310354";
		ram_buffer(145) := X"0C000177";
		ram_buffer(146) := X"00000000";
		ram_buffer(147) := X"1455FFFD";
		ram_buffer(148) := X"00000000";
		ram_buffer(149) := X"0C000149";
		ram_buffer(150) := X"24040001";
		ram_buffer(151) := X"0C000186";
		ram_buffer(152) := X"24040002";
		ram_buffer(153) := X"3C131000";
		ram_buffer(154) := X"00009025";
		ram_buffer(155) := X"3C141000";
		ram_buffer(156) := X"241600E6";
		ram_buffer(157) := X"0C000177";
		ram_buffer(158) := X"00000000";
		ram_buffer(159) := X"0C000153";
		ram_buffer(160) := X"AFA20014";
		ram_buffer(161) := X"0C000153";
		ram_buffer(162) := X"AFA20010";
		ram_buffer(163) := X"8FA30014";
		ram_buffer(164) := X"8FA40010";
		ram_buffer(165) := X"16C00002";
		ram_buffer(166) := X"0076001B";
		ram_buffer(167) := X"0007000D";
		ram_buffer(168) := X"305E00FF";
		ram_buffer(169) := X"308400FF";
		ram_buffer(170) := X"00001010";
		ram_buffer(171) := X"14820025";
		ram_buffer(172) := X"00000000";
		ram_buffer(173) := X"AE630000";
		ram_buffer(174) := X"16570020";
		ram_buffer(175) := X"26730004";
		ram_buffer(176) := X"02802825";
		ram_buffer(177) := X"24060010";
		ram_buffer(178) := X"0C000211";
		ram_buffer(179) := X"24040004";
		ram_buffer(180) := X"0260A025";
		ram_buffer(181) := X"00009025";
		ram_buffer(182) := X"0C000149";
		ram_buffer(183) := X"24040001";
		ram_buffer(184) := X"24020002";
		ram_buffer(185) := X"17C2FFE3";
		ram_buffer(186) := X"24060010";
		ram_buffer(187) := X"02802825";
		ram_buffer(188) := X"0C000211";
		ram_buffer(189) := X"24040004";
		ram_buffer(190) := X"0C00013C";
		ram_buffer(191) := X"00000000";
		ram_buffer(192) := X"0C000186";
		ram_buffer(193) := X"24040003";
		ram_buffer(194) := X"2404000C";
		ram_buffer(195) := X"0C000227";
		ram_buffer(196) := X"AE110004";
		ram_buffer(197) := X"2404000C";
		ram_buffer(198) := X"0C000227";
		ram_buffer(199) := X"AE110008";
		ram_buffer(200) := X"0C000186";
		ram_buffer(201) := X"24040004";
		ram_buffer(202) := X"3C021000";
		ram_buffer(203) := X"00400008";
		ram_buffer(204) := X"00000000";
		ram_buffer(205) := X"1000FFC3";
		ram_buffer(206) := X"00000000";
		ram_buffer(207) := X"1000FFE6";
		ram_buffer(208) := X"26520001";
		ram_buffer(209) := X"0C000149";
		ram_buffer(210) := X"24040002";
		ram_buffer(211) := X"1000FFE5";
		ram_buffer(212) := X"24020002";
		ram_buffer(213) := X"3C021000";
		ram_buffer(214) := X"00400008";
		ram_buffer(215) := X"00000000";
		ram_buffer(216) := X"03E00008";
		ram_buffer(217) := X"00000000";
		ram_buffer(218) := X"27BDFFE0";
		ram_buffer(219) := X"AFBF001C";
		ram_buffer(220) := X"AFB10018";
		ram_buffer(221) := X"AFB00014";
		ram_buffer(222) := X"3C030000";
		ram_buffer(223) := X"8C620CB0";
		ram_buffer(224) := X"3C110000";
		ram_buffer(225) := X"8C420004";
		ram_buffer(226) := X"00608025";
		ram_buffer(227) := X"26310CB4";
		ram_buffer(228) := X"2C430008";
		ram_buffer(229) := X"14600006";
		ram_buffer(230) := X"00000000";
		ram_buffer(231) := X"8FBF001C";
		ram_buffer(232) := X"8FB10018";
		ram_buffer(233) := X"8FB00014";
		ram_buffer(234) := X"03E00008";
		ram_buffer(235) := X"27BD0020";
		ram_buffer(236) := X"000210C0";
		ram_buffer(237) := X"02221021";
		ram_buffer(238) := X"8C430000";
		ram_buffer(239) := X"8C440004";
		ram_buffer(240) := X"0060F809";
		ram_buffer(241) := X"00000000";
		ram_buffer(242) := X"8E020CB0";
		ram_buffer(243) := X"00000000";
		ram_buffer(244) := X"8C420004";
		ram_buffer(245) := X"1000FFEF";
		ram_buffer(246) := X"2C430008";
		ram_buffer(247) := X"8F828018";
		ram_buffer(248) := X"00000000";
		ram_buffer(249) := X"8C440004";
		ram_buffer(250) := X"8F828010";
		ram_buffer(251) := X"8F83800C";
		ram_buffer(252) := X"24420001";
		ram_buffer(253) := X"304201FF";
		ram_buffer(254) := X"10430008";
		ram_buffer(255) := X"00000000";
		ram_buffer(256) := X"8F838010";
		ram_buffer(257) := X"3C050000";
		ram_buffer(258) := X"24A50AB0";
		ram_buffer(259) := X"308400FF";
		ram_buffer(260) := X"00651821";
		ram_buffer(261) := X"A0640000";
		ram_buffer(262) := X"AF828010";
		ram_buffer(263) := X"03E00008";
		ram_buffer(264) := X"00000000";
		ram_buffer(265) := X"3C022004";
		ram_buffer(266) := X"AF828018";
		ram_buffer(267) := X"3C022003";
		ram_buffer(268) := X"AF828014";
		ram_buffer(269) := X"3C030000";
		ram_buffer(270) := X"3C022001";
		ram_buffer(271) := X"AC620CB0";
		ram_buffer(272) := X"3C040000";
		ram_buffer(273) := X"3C020000";
		ram_buffer(274) := X"24420CB4";
		ram_buffer(275) := X"24840CF4";
		ram_buffer(276) := X"24420008";
		ram_buffer(277) := X"1444FFFE";
		ram_buffer(278) := X"AC40FFF8";
		ram_buffer(279) := X"3C020000";
		ram_buffer(280) := X"24640CB0";
		ram_buffer(281) := X"244203DC";
		ram_buffer(282) := X"AC820014";
		ram_buffer(283) := X"AC800018";
		ram_buffer(284) := X"3C06F000";
		ram_buffer(285) := X"8CC40004";
		ram_buffer(286) := X"3C050000";
		ram_buffer(287) := X"00041100";
		ram_buffer(288) := X"00441021";
		ram_buffer(289) := X"00021080";
		ram_buffer(290) := X"3C040000";
		ram_buffer(291) := X"248409A0";
		ram_buffer(292) := X"24420004";
		ram_buffer(293) := X"00821021";
		ram_buffer(294) := X"24A50368";
		ram_buffer(295) := X"AC450008";
		ram_buffer(296) := X"AC40000C";
		ram_buffer(297) := X"8C630CB0";
		ram_buffer(298) := X"00000000";
		ram_buffer(299) := X"8C620000";
		ram_buffer(300) := X"00000000";
		ram_buffer(301) := X"34420004";
		ram_buffer(302) := X"AC620000";
		ram_buffer(303) := X"8CC30004";
		ram_buffer(304) := X"00000000";
		ram_buffer(305) := X"00031100";
		ram_buffer(306) := X"00431021";
		ram_buffer(307) := X"00021080";
		ram_buffer(308) := X"00441021";
		ram_buffer(309) := X"8C430000";
		ram_buffer(310) := X"24040001";
		ram_buffer(311) := X"8C620000";
		ram_buffer(312) := X"00000000";
		ram_buffer(313) := X"34420002";
		ram_buffer(314) := X"08000046";
		ram_buffer(315) := X"AC620000";
		ram_buffer(316) := X"27BDFFE8";
		ram_buffer(317) := X"AFBF0014";
		ram_buffer(318) := X"0C000046";
		ram_buffer(319) := X"00002025";
		ram_buffer(320) := X"3C020000";
		ram_buffer(321) := X"8C430CB0";
		ram_buffer(322) := X"8FBF0014";
		ram_buffer(323) := X"8C620000";
		ram_buffer(324) := X"2404FFFB";
		ram_buffer(325) := X"00441024";
		ram_buffer(326) := X"AC620000";
		ram_buffer(327) := X"03E00008";
		ram_buffer(328) := X"27BD0018";
		ram_buffer(329) := X"8F838018";
		ram_buffer(330) := X"00000000";
		ram_buffer(331) := X"8C620000";
		ram_buffer(332) := X"00000000";
		ram_buffer(333) := X"30420002";
		ram_buffer(334) := X"1040FFFC";
		ram_buffer(335) := X"00000000";
		ram_buffer(336) := X"AC640008";
		ram_buffer(337) := X"03E00008";
		ram_buffer(338) := X"00000000";
		ram_buffer(339) := X"40046000";
		ram_buffer(340) := X"40806000";
		ram_buffer(341) := X"8F838010";
		ram_buffer(342) := X"8F82800C";
		ram_buffer(343) := X"00000000";
		ram_buffer(344) := X"14620004";
		ram_buffer(345) := X"00000000";
		ram_buffer(346) := X"40846000";
		ram_buffer(347) := X"1000FFF7";
		ram_buffer(348) := X"00000000";
		ram_buffer(349) := X"8F82800C";
		ram_buffer(350) := X"3C030000";
		ram_buffer(351) := X"24630AB0";
		ram_buffer(352) := X"00431021";
		ram_buffer(353) := X"90420000";
		ram_buffer(354) := X"8F83800C";
		ram_buffer(355) := X"304200FF";
		ram_buffer(356) := X"24630001";
		ram_buffer(357) := X"306301FF";
		ram_buffer(358) := X"AF83800C";
		ram_buffer(359) := X"40846000";
		ram_buffer(360) := X"03E00008";
		ram_buffer(361) := X"00000000";
		ram_buffer(362) := X"27BDFFE8";
		ram_buffer(363) := X"00803025";
		ram_buffer(364) := X"24050004";
		ram_buffer(365) := X"AFBF0014";
		ram_buffer(366) := X"0C000149";
		ram_buffer(367) := X"30C400FF";
		ram_buffer(368) := X"24A5FFFF";
		ram_buffer(369) := X"14A0FFFC";
		ram_buffer(370) := X"00063202";
		ram_buffer(371) := X"8FBF0014";
		ram_buffer(372) := X"00000000";
		ram_buffer(373) := X"03E00008";
		ram_buffer(374) := X"27BD0018";
		ram_buffer(375) := X"27BDFFE8";
		ram_buffer(376) := X"00002825";
		ram_buffer(377) := X"00003025";
		ram_buffer(378) := X"AFBF0014";
		ram_buffer(379) := X"24070020";
		ram_buffer(380) := X"0C000153";
		ram_buffer(381) := X"00000000";
		ram_buffer(382) := X"00A21004";
		ram_buffer(383) := X"24A50008";
		ram_buffer(384) := X"14A7FFFB";
		ram_buffer(385) := X"00C23025";
		ram_buffer(386) := X"8FBF0014";
		ram_buffer(387) := X"00C01025";
		ram_buffer(388) := X"03E00008";
		ram_buffer(389) := X"27BD0018";
		ram_buffer(390) := X"8F828014";
		ram_buffer(391) := X"00000000";
		ram_buffer(392) := X"03E00008";
		ram_buffer(393) := X"AC440008";
		ram_buffer(394) := X"3C02F000";
		ram_buffer(395) := X"8C420004";
		ram_buffer(396) := X"3C030000";
		ram_buffer(397) := X"24630994";
		ram_buffer(398) := X"00021080";
		ram_buffer(399) := X"00431021";
		ram_buffer(400) := X"8C420000";
		ram_buffer(401) := X"24030002";
		ram_buffer(402) := X"03E00008";
		ram_buffer(403) := X"AC430000";
		ram_buffer(404) := X"27BDFFE0";
		ram_buffer(405) := X"AFBF001C";
		ram_buffer(406) := X"AFB20018";
		ram_buffer(407) := X"AFB10014";
		ram_buffer(408) := X"AFB00010";
		ram_buffer(409) := X"3C02F000";
		ram_buffer(410) := X"8C430004";
		ram_buffer(411) := X"00000000";
		ram_buffer(412) := X"00031100";
		ram_buffer(413) := X"00431021";
		ram_buffer(414) := X"00021080";
		ram_buffer(415) := X"24520004";
		ram_buffer(416) := X"3C110000";
		ram_buffer(417) := X"263109A0";
		ram_buffer(418) := X"02221021";
		ram_buffer(419) := X"8C430000";
		ram_buffer(420) := X"00408025";
		ram_buffer(421) := X"8C630004";
		ram_buffer(422) := X"00000000";
		ram_buffer(423) := X"2C620008";
		ram_buffer(424) := X"14400007";
		ram_buffer(425) := X"00000000";
		ram_buffer(426) := X"8FBF001C";
		ram_buffer(427) := X"8FB20018";
		ram_buffer(428) := X"8FB10014";
		ram_buffer(429) := X"8FB00010";
		ram_buffer(430) := X"03E00008";
		ram_buffer(431) := X"27BD0020";
		ram_buffer(432) := X"000318C0";
		ram_buffer(433) := X"00721821";
		ram_buffer(434) := X"02231821";
		ram_buffer(435) := X"8C620000";
		ram_buffer(436) := X"8C640004";
		ram_buffer(437) := X"0040F809";
		ram_buffer(438) := X"00000000";
		ram_buffer(439) := X"8E020000";
		ram_buffer(440) := X"00000000";
		ram_buffer(441) := X"8C430004";
		ram_buffer(442) := X"1000FFED";
		ram_buffer(443) := X"2C620008";
		ram_buffer(444) := X"27BDFFE0";
		ram_buffer(445) := X"AFBF001C";
		ram_buffer(446) := X"AFB20018";
		ram_buffer(447) := X"AFB10014";
		ram_buffer(448) := X"AFB00010";
		ram_buffer(449) := X"3C05F000";
		ram_buffer(450) := X"8CA20004";
		ram_buffer(451) := X"00000000";
		ram_buffer(452) := X"00021240";
		ram_buffer(453) := X"244301E8";
		ram_buffer(454) := X"3C020000";
		ram_buffer(455) := X"24420CF4";
		ram_buffer(456) := X"00431021";
		ram_buffer(457) := X"0040E825";
		ram_buffer(458) := X"8CB00004";
		ram_buffer(459) := X"8CA70004";
		ram_buffer(460) := X"00000000";
		ram_buffer(461) := X"00072100";
		ram_buffer(462) := X"8CA20004";
		ram_buffer(463) := X"3C030000";
		ram_buffer(464) := X"24630994";
		ram_buffer(465) := X"00021080";
		ram_buffer(466) := X"00431021";
		ram_buffer(467) := X"3C03F002";
		ram_buffer(468) := X"AC430000";
		ram_buffer(469) := X"00871021";
		ram_buffer(470) := X"3C030000";
		ram_buffer(471) := X"00021080";
		ram_buffer(472) := X"246309A0";
		ram_buffer(473) := X"00432821";
		ram_buffer(474) := X"24420004";
		ram_buffer(475) := X"3C06F001";
		ram_buffer(476) := X"00621021";
		ram_buffer(477) := X"ACA60000";
		ram_buffer(478) := X"24A60044";
		ram_buffer(479) := X"00402825";
		ram_buffer(480) := X"14C50014";
		ram_buffer(481) := X"24A50008";
		ram_buffer(482) := X"3C050000";
		ram_buffer(483) := X"24A50628";
		ram_buffer(484) := X"AC450000";
		ram_buffer(485) := X"AC400004";
		ram_buffer(486) := X"00872021";
		ram_buffer(487) := X"00042080";
		ram_buffer(488) := X"00641821";
		ram_buffer(489) := X"8C620000";
		ram_buffer(490) := X"24030001";
		ram_buffer(491) := X"AC430000";
		ram_buffer(492) := X"1600000C";
		ram_buffer(493) := X"2782800C";
		ram_buffer(494) := X"27838894";
		ram_buffer(495) := X"14430007";
		ram_buffer(496) := X"24420004";
		ram_buffer(497) := X"0C00007C";
		ram_buffer(498) := X"00000000";
		ram_buffer(499) := X"1000FFFF";
		ram_buffer(500) := X"00000000";
		ram_buffer(501) := X"1000FFEA";
		ram_buffer(502) := X"ACA0FFF8";
		ram_buffer(503) := X"1000FFF7";
		ram_buffer(504) := X"AC40FFFC";
		ram_buffer(505) := X"0C000227";
		ram_buffer(506) := X"2404000C";
		ram_buffer(507) := X"00101080";
		ram_buffer(508) := X"3C100000";
		ram_buffer(509) := X"26100988";
		ram_buffer(510) := X"02028021";
		ram_buffer(511) := X"02008825";
		ram_buffer(512) := X"2412FFFF";
		ram_buffer(513) := X"24060004";
		ram_buffer(514) := X"02002825";
		ram_buffer(515) := X"0C000211";
		ram_buffer(516) := X"00002025";
		ram_buffer(517) := X"8E220000";
		ram_buffer(518) := X"00000000";
		ram_buffer(519) := X"1052FFFA";
		ram_buffer(520) := X"24060004";
		ram_buffer(521) := X"0C000237";
		ram_buffer(522) := X"00000000";
		ram_buffer(523) := X"8E220000";
		ram_buffer(524) := X"00000000";
		ram_buffer(525) := X"0040F809";
		ram_buffer(526) := X"00000000";
		ram_buffer(527) := X"1000FFE3";
		ram_buffer(528) := X"00000000";
		ram_buffer(529) := X"10C00013";
		ram_buffer(530) := X"00C51821";
		ram_buffer(531) := X"2406FFF0";
		ram_buffer(532) := X"00661024";
		ram_buffer(533) := X"0043182B";
		ram_buffer(534) := X"00031900";
		ram_buffer(535) := X"24420010";
		ram_buffer(536) := X"00A62824";
		ram_buffer(537) := X"00431821";
		ram_buffer(538) := X"40076000";
		ram_buffer(539) := X"40806000";
		ram_buffer(540) := X"10A30007";
		ram_buffer(541) := X"2484FF00";
		ram_buffer(542) := X"00A61024";
		ram_buffer(543) := X"AC820000";
		ram_buffer(544) := X"AC400000";
		ram_buffer(545) := X"24A50010";
		ram_buffer(546) := X"14A3FFFC";
		ram_buffer(547) := X"00A61024";
		ram_buffer(548) := X"40876000";
		ram_buffer(549) := X"03E00008";
		ram_buffer(550) := X"00000000";
		ram_buffer(551) := X"40066000";
		ram_buffer(552) := X"40806000";
		ram_buffer(553) := X"00001025";
		ram_buffer(554) := X"2483FF00";
		ram_buffer(555) := X"24050200";
		ram_buffer(556) := X"AC620000";
		ram_buffer(557) := X"AC400000";
		ram_buffer(558) := X"34440200";
		ram_buffer(559) := X"AC640000";
		ram_buffer(560) := X"AC800000";
		ram_buffer(561) := X"24420010";
		ram_buffer(562) := X"1445FFF9";
		ram_buffer(563) := X"00000000";
		ram_buffer(564) := X"40866000";
		ram_buffer(565) := X"03E00008";
		ram_buffer(566) := X"00000000";
		ram_buffer(567) := X"40066000";
		ram_buffer(568) := X"40806000";
		ram_buffer(569) := X"00000000";
		ram_buffer(570) := X"40076000";
		ram_buffer(571) := X"40806000";
		ram_buffer(572) := X"00001025";
		ram_buffer(573) := X"2403FF0C";
		ram_buffer(574) := X"24050200";
		ram_buffer(575) := X"AC620000";
		ram_buffer(576) := X"AC400000";
		ram_buffer(577) := X"34440200";
		ram_buffer(578) := X"AC640000";
		ram_buffer(579) := X"AC800000";
		ram_buffer(580) := X"24420010";
		ram_buffer(581) := X"1445FFF9";
		ram_buffer(582) := X"00000000";
		ram_buffer(583) := X"40876000";
		ram_buffer(584) := X"00000000";
		ram_buffer(585) := X"40076000";
		ram_buffer(586) := X"40806000";
		ram_buffer(587) := X"00001025";
		ram_buffer(588) := X"2403FF08";
		ram_buffer(589) := X"24050200";
		ram_buffer(590) := X"AC620000";
		ram_buffer(591) := X"AC400000";
		ram_buffer(592) := X"34440200";
		ram_buffer(593) := X"AC640000";
		ram_buffer(594) := X"AC800000";
		ram_buffer(595) := X"24420010";
		ram_buffer(596) := X"1445FFF9";
		ram_buffer(597) := X"00000000";
		ram_buffer(598) := X"40876000";
		ram_buffer(599) := X"00000000";
		ram_buffer(600) := X"40866000";
		ram_buffer(601) := X"03E00008";
		ram_buffer(602) := X"00000000";
		ram_buffer(603) := X"00000000";
		ram_buffer(604) := X"00000100";
		ram_buffer(605) := X"01010001";
		ram_buffer(606) := X"00000000";
		ram_buffer(607) := X"00000000";
		ram_buffer(608) := X"00000000";
		ram_buffer(609) := X"00000000";
		ram_buffer(610) := X"FFFFFFFF";
		ram_buffer(611) := X"FFFFFFFF";
		ram_buffer(612) := X"FFFFFFFF";
		ram_buffer(613) := X"FFFFFFFF";
		ram_buffer(614) := X"FFFFFFFF";
		ram_buffer(615) := X"FFFFFFFF";
		ram_buffer(616) := X"FFFFFFFF";
		ram_buffer(617) := X"00000000";
		ram_buffer(618) := X"00000000";
		ram_buffer(619) := X"00000000";
		ram_buffer(620) := X"00000000";
		ram_buffer(621) := X"00000000";
		ram_buffer(622) := X"00000000";
		ram_buffer(623) := X"00000000";
		ram_buffer(624) := X"00000000";
		ram_buffer(625) := X"00000000";
		ram_buffer(626) := X"00000000";
		ram_buffer(627) := X"00000000";
		ram_buffer(628) := X"00000000";
		ram_buffer(629) := X"00000000";
		ram_buffer(630) := X"00000000";
		ram_buffer(631) := X"00000000";
		ram_buffer(632) := X"00000000";
		ram_buffer(633) := X"FFFFFFFF";
		ram_buffer(634) := X"00000000";
		ram_buffer(635) := X"00000000";
		ram_buffer(636) := X"00000000";
		ram_buffer(637) := X"00000000";
		ram_buffer(638) := X"00000000";
		ram_buffer(639) := X"00000000";
		ram_buffer(640) := X"00000000";
		ram_buffer(641) := X"00000000";
		ram_buffer(642) := X"00000000";
		ram_buffer(643) := X"00000000";
		ram_buffer(644) := X"00000000";
		ram_buffer(645) := X"00000000";
		ram_buffer(646) := X"00000000";
		ram_buffer(647) := X"00000000";
		ram_buffer(648) := X"00000000";
		ram_buffer(649) := X"00000000";
		ram_buffer(650) := X"FFFFFFFF";
		ram_buffer(651) := X"00000000";
		ram_buffer(652) := X"00000000";
		ram_buffer(653) := X"00000000";
		ram_buffer(654) := X"00000000";
		ram_buffer(655) := X"00000000";
		ram_buffer(656) := X"00000000";
		ram_buffer(657) := X"00000000";
		ram_buffer(658) := X"00000000";
		ram_buffer(659) := X"00000000";
		ram_buffer(660) := X"00000000";
		ram_buffer(661) := X"00000000";
		ram_buffer(662) := X"00000000";
		ram_buffer(663) := X"00000000";
		ram_buffer(664) := X"00000000";
		ram_buffer(665) := X"00000000";
		ram_buffer(666) := X"00000000";
		return ram_buffer;
	end;
end;
