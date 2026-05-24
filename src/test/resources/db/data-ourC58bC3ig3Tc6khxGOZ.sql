USE testdb;


DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `currency` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Jolene Hubbard","(526) 798-1130","Brazil","$6.27"),
  ("Hiram Blair","1-218-665-6734","Germany","$19.12"),
  ("Eric Morris","(758) 858-2137","Vietnam","$31.44"),
  ("Lee Knight","(372) 213-3177","Costa Rica","$85.79"),
  ("Gareth Blanchard","(856) 595-5567","Philippines","$70.36"),
  ("Jerome Summers","1-720-548-2149","Norway","$4.21"),
  ("Beatrice William","(831) 931-4130","New Zealand","$84.04"),
  ("Daria Pate","1-539-957-6345","Ireland","$84.33"),
  ("Noelani Harris","1-544-243-1120","Poland","$8.97"),
  ("Isabelle Buckley","(260) 814-3897","France","$10.44");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Ruby Romero","1-669-708-2071","Peru","$98.51"),
  ("Oleg Elliott","(548) 272-2645","Canada","$67.04"),
  ("Adara Sherman","(447) 346-4342","Pakistan","$34.37"),
  ("Josephine Solomon","1-507-526-6335","Indonesia","$42.27"),
  ("Baxter Castaneda","1-832-450-5826","Norway","$48.96"),
  ("Chastity Nash","(486) 482-8810","Belgium","$31.77"),
  ("Orli Brooks","(637) 863-6267","Turkey","$94.62"),
  ("Dale West","(570) 254-3892","Spain","$79.84"),
  ("Adara Sparks","1-516-270-4741","Colombia","$95.04"),
  ("Aphrodite Berg","(850) 822-0753","Indonesia","$47.41");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Ila Rutledge","1-233-533-8933","Canada","$9.58"),
  ("Vera Valdez","1-868-498-2711","Russian Federation","$22.50"),
  ("Paloma Henderson","1-861-686-9554","Chile","$34.94"),
  ("Cameran Combs","1-958-266-8646","South Africa","$67.29"),
  ("Keith Ray","(296) 455-5241","Austria","$95.05"),
  ("Fuller Ramos","1-948-892-6365","Ireland","$55.40"),
  ("Adena Cameron","1-860-380-0532","Spain","$96.89"),
  ("Audrey Flores","1-566-316-4188","Ireland","$56.80"),
  ("Bruno Richardson","1-746-451-7518","Colombia","$0.36"),
  ("Kenyon Gibbs","(872) 853-5854","South Korea","$13.16");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Buckminster Kramer","1-936-644-4505","South Africa","$65.41"),
  ("Octavia Mccoy","(816) 643-6378","Spain","$13.85"),
  ("Bryar Steele","(402) 676-9422","Nigeria","$82.36"),
  ("Kasimir Mckenzie","(697) 739-8302","Colombia","$18.93"),
  ("Grant Mcneil","1-731-602-7181","Brazil","$66.68"),
  ("Judah Russell","1-682-433-4888","South Africa","$2.28"),
  ("Adara Rosa","(212) 880-8875","Turkey","$28.24"),
  ("Cadman Wright","(453) 246-6204","Sweden","$53.16"),
  ("Destiny Sellers","(572) 676-4643","Pakistan","$66.15"),
  ("Jillian Gamble","(384) 198-6967","Brazil","$91.85");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Natalie Rasmussen","1-449-331-1472","Ukraine","$5.09"),
  ("Macy Summers","(663) 305-8931","Ukraine","$64.61"),
  ("Piper Zimmerman","1-685-611-2835","Peru","$32.67"),
  ("Lucas Hester","(415) 356-0330","Austria","$11.75"),
  ("Savannah Crawford","1-381-385-6505","South Korea","$73.46"),
  ("Avram Willis","1-452-799-9356","Italy","$16.78"),
  ("Jared James","(370) 401-8979","Nigeria","$31.16"),
  ("Jameson Koch","1-472-397-4326","Turkey","$78.37"),
  ("Camden Everett","1-476-748-7022","Austria","$90.69"),
  ("Gabriel Shaw","(625) 782-6402","Netherlands","$50.31");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Yasir Mercer","(475) 173-6874","Singapore","$38.47"),
  ("Ulric Hartman","(514) 211-1817","United Kingdom","$0.57"),
  ("Laith Gray","(227) 362-6154","Norway","$55.35"),
  ("Flynn Richards","(356) 341-2843","South Africa","$44.52"),
  ("Madonna Lynch","(685) 370-2153","Colombia","$46.65"),
  ("Hermione Pennington","(432) 977-1833","Brazil","$27.46"),
  ("Cheryl Miller","(233) 821-4426","Singapore","$58.75"),
  ("Meredith Bush","(959) 828-8391","Indonesia","$98.43"),
  ("Shea Stein","(345) 546-6092","Italy","$15.52"),
  ("Cora Park","1-351-378-4377","South Korea","$10.14");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Demetrius Marshall","(608) 509-8972","China","$61.62"),
  ("Axel Mayo","1-864-223-7151","Indonesia","$12.23"),
  ("Beau Sanders","1-647-728-6734","France","$54.55"),
  ("Eagan Moreno","1-384-933-3221","Ukraine","$3.05"),
  ("Hope Henry","(846) 513-2673","Colombia","$16.75"),
  ("Whoopi Fischer","(775) 813-4402","France","$99.27"),
  ("Maia Warner","(627) 660-2262","Germany","$70.53"),
  ("Marcia Neal","(216) 734-8546","United States","$78.43"),
  ("Cole Buchanan","(512) 748-8463","Singapore","$9.59"),
  ("Wallace Sparks","(201) 525-2171","Poland","$73.54");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Karleigh Woods","1-664-826-4621","Germany","$39.80"),
  ("Ferris Greer","1-723-225-5553","Brazil","$79.57"),
  ("Macaulay Robles","1-729-671-1265","Russian Federation","$58.87"),
  ("Alvin Farmer","(478) 242-2754","Belgium","$72.73"),
  ("Tatyana Hurst","1-266-179-9414","Pakistan","$46.46"),
  ("Scott Barker","1-405-590-9637","Austria","$67.75"),
  ("Brennan Rice","(755) 685-4758","South Africa","$18.47"),
  ("Doris Sheppard","(473) 240-0879","Ukraine","$88.10"),
  ("Jarrod Ramirez","1-731-856-8216","South Korea","$83.33"),
  ("Debra Mcpherson","1-332-582-7802","Brazil","$47.36");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Blake Farmer","(471) 933-5804","France","$24.01"),
  ("Murphy Barr","1-402-537-6423","Ukraine","$63.79"),
  ("Randall Carey","1-767-476-5065","Ukraine","$68.73"),
  ("Alfonso Hays","1-508-574-8067","Indonesia","$36.88"),
  ("Meghan Landry","(433) 927-2401","Nigeria","$57.95"),
  ("Jena Mcmahon","(561) 608-2254","Ukraine","$32.11"),
  ("Cameron Knowles","(312) 601-2883","South Korea","$78.37"),
  ("Mari White","1-858-655-5961","China","$13.79"),
  ("Donna Irwin","(660) 568-9126","Brazil","$8.11"),
  ("Xena Pugh","(438) 164-0558","United States","$25.86");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Laith Ramos","(776) 714-3157","Colombia","$37.51"),
  ("Irma Olsen","1-162-683-6376","Philippines","$98.62"),
  ("Curran Cantu","1-948-727-4210","South Korea","$25.94"),
  ("Medge Lowery","1-887-731-2683","Indonesia","$34.43"),
  ("Keefe Cline","1-728-461-8432","United States","$4.41"),
  ("Reuben Bishop","1-471-340-4112","Sweden","$25.51"),
  ("Tarik Calhoun","(732) 987-4826","Canada","$55.15"),
  ("Stella Key","1-333-868-7947","Philippines","$30.18"),
  ("Jolene Bolton","1-210-588-9198","Germany","$38.98"),
  ("Benjamin Beach","(827) 312-6304","Indonesia","$87.77");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Kadeem Britt","(543) 732-1377","Russian Federation","$14.77"),
  ("Henry Castaneda","(568) 824-8562","Spain","$65.45"),
  ("Orla Spence","1-311-662-2460","Russian Federation","$63.36"),
  ("Forrest Harvey","(648) 204-0611","Costa Rica","$30.95"),
  ("Mannix Chen","1-153-354-8112","Norway","$54.05"),
  ("Kevin Santos","(621) 155-4863","Chile","$56.04"),
  ("TaShya Holland","1-897-412-4699","South Korea","$9.82"),
  ("Sybill Lucas","1-581-556-7656","India","$16.15"),
  ("Timon Mejia","1-654-927-6878","New Zealand","$66.97"),
  ("Marsden Waters","1-375-674-2824","Turkey","$73.90");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Camden Barry","(557) 385-5586","Poland","$26.46"),
  ("Kellie Allison","1-817-433-1786","Colombia","$33.85"),
  ("Virginia Nielsen","1-330-213-8336","Austria","$40.45"),
  ("Abraham Briggs","1-472-709-1712","Germany","$14.30"),
  ("Noble Franks","1-762-274-7583","Australia","$30.80"),
  ("Scott Norman","(384) 450-6815","Turkey","$15.30"),
  ("Alec Stone","(480) 186-6238","New Zealand","$25.29"),
  ("Dexter Burnett","1-820-839-7277","Norway","$82.40"),
  ("Leonard Slater","(818) 783-2168","Ukraine","$11.83"),
  ("Sharon Robbins","1-272-481-3926","Vietnam","$96.39");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Nash Paul","1-637-906-4703","Turkey","$1.62"),
  ("Nerea Larson","(329) 783-2853","Indonesia","$10.24"),
  ("Skyler Mccray","1-666-373-5735","Pakistan","$57.44"),
  ("Ori Mcmahon","(173) 227-2157","Costa Rica","$0.45"),
  ("Steel Stark","(786) 522-9626","Vietnam","$47.00"),
  ("Ariana Mclaughlin","(366) 312-2254","Sweden","$2.00"),
  ("Maxwell Ford","1-827-757-9664","Norway","$94.99"),
  ("Piper Wall","1-473-774-6217","South Africa","$12.22"),
  ("Inga Hardy","(616) 673-7684","Italy","$15.89"),
  ("Elvis Martin","1-773-292-6131","Peru","$83.13");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Shellie Wagner","1-121-878-7557","Norway","$26.94"),
  ("Bernard Mccarthy","1-115-663-3126","South Korea","$57.34"),
  ("Preston Parker","(462) 824-7711","Austria","$38.15"),
  ("Hamish Harmon","1-987-726-7217","Mexico","$75.24"),
  ("Palmer Lewis","(763) 137-0119","Chile","$11.54"),
  ("Simon Carpenter","1-885-548-6242","Ukraine","$88.24"),
  ("Daria Myers","1-467-772-3334","United Kingdom","$78.57"),
  ("Jenette Buckner","1-958-778-2777","Philippines","$66.68"),
  ("Callum Ramirez","(421) 864-9898","Singapore","$4.71"),
  ("Mason Dalton","(125) 655-5319","Chile","$79.93");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Dalton Flores","(773) 767-9346","Australia","$20.94"),
  ("Gavin Francis","(118) 427-5286","South Korea","$67.63"),
  ("Ray Harmon","1-848-587-1396","Vietnam","$15.81"),
  ("Brady Cross","1-486-644-8623","South Korea","$10.26"),
  ("Stacy Warner","(594) 285-5153","Canada","$29.85"),
  ("Montana Gaines","1-823-542-3006","Brazil","$9.33"),
  ("Maia Russo","(411) 955-4567","Nigeria","$8.30"),
  ("Deirdre Baldwin","(987) 214-3661","Turkey","$26.62"),
  ("Rhiannon Gibbs","1-737-706-5735","China","$83.76"),
  ("Kimberly Hardy","(744) 427-1104","Belgium","$34.59");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Ila Skinner","(573) 245-6138","Australia","$94.24"),
  ("Amos Hunter","1-420-178-4936","Indonesia","$8.51"),
  ("Neil Lucas","1-475-348-0985","Ukraine","$43.03"),
  ("Giacomo Mcguire","1-811-709-2231","United States","$62.86"),
  ("Deacon Sanders","(152) 610-7451","Brazil","$83.86"),
  ("Lawrence Poole","1-649-282-7196","Mexico","$95.71"),
  ("Fatima Meadows","1-712-285-3833","United Kingdom","$32.29"),
  ("Jorden Vincent","1-732-533-6318","Vietnam","$52.30"),
  ("Denise Maxwell","(463) 890-8681","China","$22.46"),
  ("Thaddeus Richmond","(467) 968-3870","Philippines","$37.08");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Hedy Vang","(567) 137-8136","Germany","$52.27"),
  ("Signe Marks","(474) 807-9278","Pakistan","$83.19"),
  ("Xaviera Zamora","1-527-734-1104","Peru","$5.67"),
  ("Kyle Holloway","(173) 648-9200","New Zealand","$89.07"),
  ("Bevis Moran","(865) 306-7484","Brazil","$70.39"),
  ("Reed Blevins","1-432-362-3351","Spain","$47.89"),
  ("Inez Medina","(776) 638-0107","Brazil","$77.01"),
  ("Mercedes Williamson","1-326-316-4310","Italy","$31.02"),
  ("Judah Sloan","(652) 212-0695","Spain","$47.02"),
  ("Ross Gross","(113) 401-3675","Spain","$55.43");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Anthony Mcintyre","1-755-666-8531","Netherlands","$38.91"),
  ("Marvin O'brien","(566) 846-6339","Mexico","$55.26"),
  ("Lani Collier","1-152-873-8226","Peru","$56.47"),
  ("Halee Vincent","1-229-441-1846","Austria","$83.80"),
  ("Brennan Small","(852) 437-5668","Russian Federation","$6.65"),
  ("Elvis Luna","(595) 877-1126","United States","$54.30"),
  ("Steel Shaw","(720) 617-4558","Colombia","$58.40"),
  ("Shoshana Wilson","1-210-401-7444","France","$33.39"),
  ("Victoria Gilliam","1-376-295-8521","Ireland","$79.40"),
  ("Barry Mckay","1-139-964-9538","Belgium","$37.03");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Raven Rodriguez","1-762-416-2573","Brazil","$67.51"),
  ("Phelan Harrison","1-771-366-5998","Russian Federation","$57.42"),
  ("Richard Garrett","(291) 364-2443","Chile","$99.54"),
  ("Chastity Price","(812) 296-2775","Pakistan","$11.90"),
  ("Dean Joyner","(760) 383-8282","India","$64.44"),
  ("Holmes Bradley","(516) 511-9814","Singapore","$91.50"),
  ("Wylie Shannon","1-458-473-3886","Netherlands","$93.55"),
  ("Aline Wilder","(571) 525-3311","Vietnam","$4.09"),
  ("Yvette Manning","(847) 256-2780","New Zealand","$46.67"),
  ("Kameko Henry","1-885-772-2624","France","$98.83");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Orli Hess","(915) 532-7014","Ireland","$8.18"),
  ("Bevis Barry","(610) 323-2545","Nigeria","$90.01"),
  ("Madonna Holt","(373) 611-2412","Canada","$15.54"),
  ("Desiree Potts","(755) 228-3302","Australia","$35.38"),
  ("Brian Chambers","(239) 758-4505","Turkey","$45.43"),
  ("Lisandra Watkins","(628) 740-9453","Italy","$91.93"),
  ("Courtney Frazier","1-966-602-3861","Belgium","$35.31"),
  ("Stewart Kemp","1-211-540-7412","Germany","$53.08"),
  ("Wade Cooley","(276) 755-7522","New Zealand","$5.52"),
  ("Gary Frazier","(707) 666-5752","China","$70.42");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Keefe Clements","(914) 745-7474","Turkey","$92.06"),
  ("Ivan Conley","(235) 215-4925","Canada","$2.78"),
  ("Andrew Webb","(651) 834-5113","Pakistan","$42.69"),
  ("Randall Cox","(230) 923-8440","Italy","$33.44"),
  ("Logan Stephenson","1-872-524-5278","New Zealand","$47.08"),
  ("Tarik Wagner","1-175-664-9782","Brazil","$9.38"),
  ("Kelsey Rodriguez","1-578-478-5193","Ireland","$35.74"),
  ("Jack Martin","(325) 280-7202","Indonesia","$91.93"),
  ("Shafira Mccoy","1-104-552-3220","Russian Federation","$24.57"),
  ("Sylvester Tillman","(445) 488-6676","South Africa","$47.36");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Samuel Harris","(110) 621-4667","Australia","$83.25"),
  ("Howard Ayala","1-380-841-2534","Canada","$87.78"),
  ("Yasir Emerson","(355) 345-2745","Netherlands","$10.60"),
  ("Luke Carson","1-699-354-2882","South Korea","$70.26"),
  ("Bethany Gentry","1-586-168-1655","New Zealand","$87.92"),
  ("Alvin Chaney","1-457-211-8686","Vietnam","$74.84"),
  ("Buffy Cherry","(977) 695-4406","Netherlands","$78.61"),
  ("Tatum Gibson","1-238-758-5578","New Zealand","$42.67"),
  ("Kareem Shepherd","1-247-691-5645","Russian Federation","$50.14"),
  ("Ayanna Clark","(542) 259-7107","Ireland","$29.69");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Leilani Willis","(378) 285-5501","Ukraine","$84.53"),
  ("Hall Ramsey","1-506-382-2786","South Korea","$44.62"),
  ("Tara Buchanan","1-331-974-6124","Costa Rica","$53.77"),
  ("Emily Davidson","1-238-378-5110","Austria","$64.22"),
  ("Tad Clark","1-874-653-4708","United States","$67.30"),
  ("Ila Strickland","1-473-424-9886","Peru","$91.56"),
  ("Evangeline Walter","1-733-755-9863","Netherlands","$15.86"),
  ("Amela Shaw","1-231-128-1822","New Zealand","$92.16"),
  ("Cheryl Murray","(768) 475-3384","Canada","$25.12"),
  ("Donovan Boyd","1-452-684-5188","Colombia","$97.52");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Lawrence Brewer","(222) 501-8880","Brazil","$20.06"),
  ("Ria Cline","1-530-273-8016","Brazil","$97.70"),
  ("Kirestin Browning","(733) 942-5959","Colombia","$95.40"),
  ("Hedwig Manning","(719) 732-4285","South Korea","$29.57"),
  ("Jamal Jackson","1-119-545-8598","Poland","$47.91"),
  ("Aurora Holland","1-451-569-3581","Brazil","$43.49"),
  ("Wyatt Day","1-160-686-1128","Nigeria","$24.42"),
  ("Erich Morin","(776) 253-3856","Mexico","$83.06"),
  ("Mohammad Jordan","1-682-696-7426","Costa Rica","$85.93"),
  ("Breanna Tillman","(487) 969-8437","Austria","$9.71");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Skyler Weeks","(230) 733-1885","Philippines","$78.70"),
  ("Kieran Bradshaw","1-388-486-3333","Austria","$41.08"),
  ("MacKenzie Vasquez","(463) 574-1060","Germany","$39.67"),
  ("Ferdinand Wooten","1-254-205-8380","Peru","$7.15"),
  ("Hayden Waters","1-841-207-8957","Poland","$60.90"),
  ("Tamekah Serrano","1-573-294-3184","Pakistan","$35.42"),
  ("Benjamin Morse","1-840-406-1262","Austria","$49.76"),
  ("Hall Britt","1-442-703-1883","Colombia","$91.50"),
  ("Raphael Warren","(368) 211-2831","India","$42.53"),
  ("Cain Cleveland","1-304-562-2595","Vietnam","$49.85");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Aurora Hester","(966) 401-7942","Costa Rica","$68.31"),
  ("Meghan Owens","(785) 572-2888","Turkey","$18.35"),
  ("Hayes Hill","(721) 885-6422","Singapore","$89.67"),
  ("Lois Rowe","(914) 668-3636","Colombia","$42.66"),
  ("Keith Christensen","1-123-588-4815","Spain","$74.46"),
  ("Daphne Foreman","(174) 522-8535","Netherlands","$2.43"),
  ("Victoria Mccarthy","1-415-424-1486","Turkey","$66.90"),
  ("Vivien Macias","(559) 390-8527","Philippines","$19.64"),
  ("Jeanette Andrews","(882) 157-7126","Ukraine","$61.25"),
  ("Kaitlin Wynn","1-306-667-2281","Belgium","$66.99");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Elliott Mcbride","(619) 623-8493","South Korea","$15.43"),
  ("Jacqueline Spencer","1-386-186-9257","Colombia","$74.26"),
  ("Beatrice Bentley","(534) 811-5121","New Zealand","$4.95"),
  ("Vivien Dale","1-458-461-3734","Netherlands","$30.63"),
  ("Aphrodite Skinner","1-983-540-6526","New Zealand","$32.12"),
  ("Moses West","(691) 102-5156","Mexico","$74.04"),
  ("Megan Kirk","(586) 293-9420","Norway","$13.29"),
  ("Emerson Patton","1-468-214-4965","Australia","$32.60"),
  ("Sacha Acevedo","1-854-794-6156","United States","$36.68"),
  ("Wang Lawrence","(671) 117-7146","Pakistan","$38.74");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Brenna Richards","(528) 437-3342","Sweden","$35.34"),
  ("Finn Carver","(647) 712-4856","Austria","$38.24"),
  ("Quemby Craig","1-277-237-7361","Russian Federation","$36.06"),
  ("Pamela Wiley","1-556-998-7116","Nigeria","$71.96"),
  ("Savannah Logan","(855) 732-7931","Spain","$84.02"),
  ("Jessica Duke","1-182-482-5228","Philippines","$56.96"),
  ("Rana Middleton","1-744-307-3844","Belgium","$29.87"),
  ("Zorita Navarro","1-219-879-1952","Russian Federation","$86.66"),
  ("Eliana Sanford","1-377-517-1503","Brazil","$77.70"),
  ("Perry Wyatt","1-671-298-2774","Spain","$70.93");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Colorado Meyers","(651) 915-4361","Ireland","$83.64"),
  ("Charissa Morgan","1-686-259-4486","Nigeria","$36.26"),
  ("Jacqueline Blair","(181) 420-3878","China","$95.56"),
  ("Norman Hampton","1-215-340-8774","South Korea","$57.86"),
  ("Shellie Beck","(515) 855-8353","Spain","$10.41"),
  ("Jason Tyson","(505) 497-1785","Philippines","$56.70"),
  ("Porter Emerson","(245) 402-8789","Chile","$36.25"),
  ("Dane Albert","(875) 224-9427","India","$55.73"),
  ("Donovan Harrell","1-124-419-1684","Ireland","$40.04"),
  ("Yoshio Nunez","1-284-271-7184","South Africa","$69.52");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Xander Riley","1-811-575-1688","Ukraine","$7.27"),
  ("Jack Guerrero","(757) 831-8227","Norway","$96.94"),
  ("Talon Strong","1-708-681-3688","Sweden","$35.24"),
  ("Jael Sharp","(515) 261-1854","Costa Rica","$42.94"),
  ("Jameson Tran","1-287-572-3061","Poland","$9.36"),
  ("Vance Nolan","(825) 614-4322","Austria","$81.24"),
  ("Anne Lopez","1-355-413-1642","Turkey","$63.61"),
  ("Celeste Lamb","1-555-347-2065","United States","$18.22"),
  ("Dillon Fulton","1-531-965-1054","Brazil","$60.33"),
  ("Holly Osborn","1-421-347-1678","Pakistan","$99.58");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Martha Carlson","1-684-741-3813","Nigeria","$70.49"),
  ("Shellie Rodriguez","1-285-618-4868","Nigeria","$88.47"),
  ("Tad Hewitt","1-620-452-3808","Philippines","$73.31"),
  ("Michael Wyatt","1-248-262-7316","Poland","$40.65"),
  ("Xander Sargent","(348) 583-3859","Singapore","$26.64"),
  ("Adria Cameron","1-840-551-6322","Australia","$58.72"),
  ("Hakeem Wall","(689) 206-0238","Austria","$48.54"),
  ("Shannon Casey","1-248-763-8067","United States","$43.53"),
  ("Cara Kline","(113) 585-4696","Austria","$11.13"),
  ("Nero Shaw","1-290-210-3621","Ireland","$22.62");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Daryl Woodward","(537) 623-2342","Poland","$14.09"),
  ("Emerson Briggs","1-444-732-3881","Russian Federation","$12.81"),
  ("Tucker Christensen","(837) 746-9821","Ukraine","$19.65"),
  ("Julian Ortega","1-457-369-2203","United States","$81.38"),
  ("Ruby Fields","(206) 251-0857","Germany","$40.44"),
  ("Ebony Knight","(750) 871-4538","Indonesia","$1.77"),
  ("Yvette Guy","(932) 526-9546","France","$2.42"),
  ("Tatum Booth","1-322-152-2764","Nigeria","$37.23"),
  ("Donna Webster","1-446-417-2436","Netherlands","$21.72"),
  ("Ezra Chambers","(567) 934-7327","Austria","$86.05");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Elizabeth Burks","(889) 682-2576","Pakistan","$72.49"),
  ("Ferdinand Mejia","(124) 224-7165","India","$91.97"),
  ("Janna King","1-530-419-6772","China","$70.21"),
  ("Hedy Rollins","(561) 384-5887","Colombia","$89.58"),
  ("Barclay Kirkland","1-387-311-8374","India","$82.60"),
  ("Vanna Berg","(656) 444-6402","Ukraine","$3.12"),
  ("Alyssa Gonzales","1-295-892-6740","Norway","$4.79"),
  ("Kathleen Joyner","(462) 888-5770","Austria","$25.06"),
  ("Brooke Lindsay","1-818-608-4131","Chile","$32.80"),
  ("Malcolm Sexton","(295) 231-6139","United Kingdom","$52.44");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Louis Walter","1-821-331-6735","Ireland","$29.07"),
  ("Madonna Love","1-585-277-6538","Belgium","$70.21"),
  ("Hilary Leonard","(597) 612-6757","Poland","$76.38"),
  ("Ezra Rocha","(200) 209-4345","Netherlands","$11.99"),
  ("Ruby Orr","(228) 339-0760","Norway","$42.60"),
  ("Rama Thompson","1-400-592-7465","Vietnam","$12.87"),
  ("Demetria Patton","1-446-628-5720","India","$35.04"),
  ("Tashya Green","1-801-153-1703","Turkey","$86.93"),
  ("Clark Elliott","(726) 934-4278","Poland","$65.89"),
  ("Fallon Lara","(863) 277-9263","Nigeria","$10.16");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Daquan Bartlett","(769) 729-8494","Austria","$8.11"),
  ("Tarik Hayes","1-516-552-1318","Brazil","$53.14"),
  ("Indira Ewing","1-821-728-1186","Belgium","$93.39"),
  ("Dorian Talley","(337) 133-8839","Sweden","$87.36"),
  ("Emmanuel Perkins","1-612-526-3154","Sweden","$4.21"),
  ("Austin Franklin","1-887-437-7218","Australia","$22.83"),
  ("Germaine Rivers","1-528-173-6571","Sweden","$61.55"),
  ("Ava Deleon","1-826-401-0156","Nigeria","$64.87"),
  ("Jelani Mullen","(587) 142-5820","Brazil","$74.22"),
  ("Erich Mendez","1-295-317-6914","Canada","$91.08");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Reuben Bruce","1-537-302-9000","Chile","$22.70"),
  ("Bryar Mathis","(523) 821-7474","United States","$69.80"),
  ("Boris Lindsay","1-705-626-7373","Russian Federation","$4.60"),
  ("Hillary Vega","1-816-534-5542","Austria","$78.02"),
  ("Armando Harmon","(270) 223-6381","Peru","$93.85"),
  ("Quinn Dean","1-587-532-8459","Norway","$15.07"),
  ("Driscoll Hayes","(258) 329-8446","Mexico","$73.82"),
  ("Dillon Rosario","(518) 538-1745","Netherlands","$73.49"),
  ("Tad Mcguire","1-563-863-2338","Singapore","$39.38"),
  ("Cassandra Powers","1-491-940-6438","South Korea","$61.64");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Melinda Barrera","1-276-229-6665","Norway","$27.76"),
  ("Lesley Landry","(212) 348-7887","Belgium","$33.79"),
  ("Ashely Webb","(123) 579-8859","Ukraine","$94.51"),
  ("Roth Russell","(660) 671-5528","New Zealand","$35.74"),
  ("Tate Decker","(742) 276-0202","United States","$58.31"),
  ("Yen Bird","(430) 752-1684","Ireland","$55.97"),
  ("Karina Mcmillan","1-273-211-3855","Canada","$47.79"),
  ("Dillon Porter","1-669-200-3852","Canada","$94.47"),
  ("Hedley Haney","1-647-641-6218","South Africa","$60.94"),
  ("Russell Wilder","1-495-411-3643","Italy","$79.06");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Gregory Mills","(474) 309-0195","Indonesia","$51.52"),
  ("Zorita Garrett","1-265-952-4937","Ukraine","$14.72"),
  ("Alan Hurley","(296) 755-8975","Peru","$87.77"),
  ("Maia Pearson","1-924-867-9227","Vietnam","$77.72"),
  ("Keith Abbott","(465) 715-3395","Ireland","$40.20"),
  ("Coby Mckay","1-547-624-8852","France","$86.03"),
  ("Garrett Rivas","1-169-786-2139","Ukraine","$40.51"),
  ("Hamilton Bender","(702) 564-7273","Ireland","$53.11"),
  ("Neve Owen","1-577-866-8853","France","$61.09"),
  ("Claire Gould","1-151-461-2323","Pakistan","$15.34");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Simone Sandoval","(814) 796-4488","Austria","$34.54"),
  ("Camden Winters","(851) 378-3186","Nigeria","$35.89"),
  ("Delilah Russo","1-953-540-8537","Indonesia","$87.52"),
  ("Shad Abbott","1-340-859-3781","Australia","$27.36"),
  ("Hamish Leblanc","(934) 639-8672","Italy","$81.02"),
  ("Talon Duncan","1-177-882-4344","Singapore","$92.14"),
  ("Fleur Schmidt","1-461-602-1321","Vietnam","$11.90"),
  ("Sawyer Miranda","1-413-763-1643","India","$10.63"),
  ("Ingrid Pitts","(925) 729-1461","Canada","$97.24"),
  ("Chester Wise","1-640-588-2807","Chile","$74.94");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Gil Nixon","1-728-209-1614","Canada","$69.45"),
  ("Ignatius Barron","(697) 188-1482","Vietnam","$26.04"),
  ("Warren Kidd","(621) 691-7485","South Korea","$38.25"),
  ("Mufutau Holmes","1-599-745-4105","Spain","$98.04"),
  ("Kiara Branch","1-968-205-8736","Mexico","$76.55"),
  ("Chelsea Harris","(931) 842-5878","Colombia","$32.93"),
  ("Amos Knight","1-787-624-3235","Turkey","$94.39"),
  ("Malik Clayton","(694) 717-5776","Germany","$68.34"),
  ("Halla Bradley","(551) 933-4916","Indonesia","$51.68"),
  ("Arden Harvey","(881) 588-8347","Netherlands","$42.24");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Scarlett Acevedo","1-169-562-7580","Italy","$34.46"),
  ("Thomas Ingram","1-254-186-8965","Poland","$6.93"),
  ("Haley Hahn","1-635-745-2684","Ireland","$39.90"),
  ("Tiger Castro","(596) 788-2891","France","$65.55"),
  ("Rooney Nguyen","(734) 730-2123","Poland","$96.42"),
  ("Steven Shannon","(238) 672-6674","Russian Federation","$5.81"),
  ("Xanthus Yates","(479) 774-6847","India","$98.84"),
  ("Hu Carpenter","1-429-478-1815","South Africa","$31.80"),
  ("Geraldine Savage","(584) 436-7568","Canada","$40.85"),
  ("Philip Kirkland","1-651-427-6335","Indonesia","$53.67");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Sylvester Casey","1-835-636-3161","Norway","$73.83"),
  ("Ayanna Horne","1-673-634-7974","Belgium","$82.96"),
  ("Marsden Sheppard","(574) 856-5098","China","$47.43"),
  ("Vera Sexton","(919) 572-5836","South Korea","$94.47"),
  ("Macey Whitley","(642) 254-1402","Austria","$32.55"),
  ("Cain Davenport","1-572-121-5492","Indonesia","$27.22"),
  ("Tobias Dixon","(755) 488-6837","Netherlands","$44.92"),
  ("Aileen Horton","(972) 423-3913","Austria","$25.65"),
  ("Natalie Duffy","(817) 721-9160","New Zealand","$66.76"),
  ("Mona Deleon","(263) 662-2436","Vietnam","$30.96");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Breanna Henderson","(624) 655-5706","Nigeria","$78.11"),
  ("Emily Harmon","(885) 366-4756","Colombia","$7.84"),
  ("Jakeem Davidson","1-723-632-6021","Brazil","$69.44"),
  ("Kenneth Scott","1-840-856-7325","Philippines","$85.85"),
  ("Rina Ryan","1-110-246-0070","Italy","$29.24"),
  ("Grace Harper","1-666-313-0731","Vietnam","$70.65"),
  ("Eric Owens","1-541-229-5834","Ireland","$8.13"),
  ("Odette Moore","(370) 525-3943","Singapore","$32.29"),
  ("Beau Powers","(825) 903-7101","Australia","$58.83"),
  ("Germaine Barry","(581) 224-1913","South Africa","$52.47");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Clark Walton","(595) 829-3173","Australia","$14.94"),
  ("Rashad Vaughan","(333) 480-4861","United Kingdom","$26.31"),
  ("Duncan Kaufman","1-525-557-5968","New Zealand","$95.88"),
  ("Mannix Talley","(383) 789-3716","Vietnam","$95.45"),
  ("Ryder Frank","1-239-178-7546","Germany","$41.86"),
  ("Sierra Lucas","1-891-544-8454","France","$57.89"),
  ("Samson Morton","1-415-179-7312","New Zealand","$90.68"),
  ("Laura Vincent","(118) 428-4314","Ukraine","$69.74"),
  ("Ima Vaughn","1-364-880-1880","Colombia","$18.70"),
  ("Ella Padilla","(760) 826-8037","Turkey","$17.34");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Whitney Morrison","(141) 161-5217","Netherlands","$81.41"),
  ("Hanae Nolan","(288) 820-5674","China","$66.32"),
  ("Jenna Patterson","1-326-227-6813","China","$5.08"),
  ("Heather Powers","1-940-525-7352","Pakistan","$50.19"),
  ("Cheryl Farrell","1-477-350-9129","Brazil","$41.04"),
  ("Nash Tanner","(925) 178-8775","United States","$30.60"),
  ("Daniel Anthony","1-548-448-9756","Chile","$52.71"),
  ("Petra Mckenzie","(243) 337-5066","Vietnam","$35.67"),
  ("Arden Wong","1-570-654-4754","United States","$2.72"),
  ("Alika Harris","1-395-885-5229","Spain","$66.55");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Tanya Washington","(700) 359-7693","South Korea","$69.23"),
  ("Anthony Blackburn","1-171-371-8641","Sweden","$61.30"),
  ("Destiny Guerra","1-683-871-1343","Ukraine","$35.04"),
  ("Gregory Vaughn","(260) 643-3033","Belgium","$43.95"),
  ("Orla Moon","(986) 268-2169","South Korea","$16.41"),
  ("Ryder Dudley","(232) 497-2667","Peru","$26.83"),
  ("Brent Greer","1-904-720-5527","Turkey","$28.33"),
  ("Luke Hayes","1-201-756-5457","Germany","$2.20"),
  ("Wendy Pruitt","1-438-575-2925","Sweden","$26.65"),
  ("Thor Klein","1-335-365-5494","France","$55.98");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Marny Jimenez","1-165-753-3435","South Korea","$55.03"),
  ("Celeste Garza","(526) 816-7826","Norway","$38.47"),
  ("Dora Neal","(547) 957-0217","New Zealand","$98.99"),
  ("Isaiah Sykes","1-972-843-8348","Costa Rica","$84.50"),
  ("Jacob Huber","1-485-954-3822","Mexico","$0.57"),
  ("Larissa Larson","1-364-813-2832","Italy","$97.48"),
  ("Boris Chapman","(158) 960-9824","Indonesia","$29.12"),
  ("Rhiannon Irwin","1-316-732-4489","South Korea","$84.31"),
  ("Theodore Perry","1-517-537-1253","Norway","$35.59"),
  ("Erica Riggs","1-257-518-4480","Netherlands","$39.75");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Amery Weaver","1-613-214-7127","Canada","$50.25"),
  ("Amethyst Christensen","1-576-868-6787","Italy","$54.05"),
  ("Harper Buckner","1-607-714-9313","Spain","$41.25"),
  ("Quinn Kennedy","(246) 565-1916","United States","$31.94"),
  ("Kimberly Leon","(379) 634-8428","Canada","$3.69"),
  ("Ebony Hendrix","(811) 362-1458","Canada","$99.49"),
  ("Carla Eaton","(754) 775-1243","Mexico","$6.33"),
  ("Zachery Snyder","(263) 342-7537","Poland","$59.02"),
  ("Bertha Bowen","(119) 389-9675","China","$2.46"),
  ("Nasim Cannon","1-152-913-1199","Germany","$82.65");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Piper Silva","1-512-879-7784","Norway","$43.88"),
  ("Jade Garner","(772) 160-8184","Philippines","$37.98"),
  ("Mannix Mckay","(875) 182-4972","Russian Federation","$81.10"),
  ("Ulysses Newman","(837) 868-0447","France","$86.83"),
  ("Raphael Terrell","1-688-294-2214","Turkey","$91.11"),
  ("May Mccarty","(857) 738-7181","Norway","$83.82"),
  ("Summer Lloyd","(879) 886-6641","China","$63.31"),
  ("Bert Gonzales","1-771-842-5376","Mexico","$9.94"),
  ("Damon Mcgee","(757) 474-8134","China","$38.55"),
  ("Carolyn Fowler","1-883-701-6678","Sweden","$51.45");
INSERT INTO `myTable` (`name`,`phone`,`country`,`currency`)
VALUES
  ("Avye Camacho","1-741-571-7137","Costa Rica","$8.44"),
  ("Dennis Estrada","1-356-335-2731","Nigeria","$20.15"),
  ("Ivor Rich","(462) 128-7837","India","$21.56"),
  ("Lee Ruiz","(650) 883-8314","New Zealand","$57.39"),
  ("Stewart Mcfadden","1-488-709-8311","Sweden","$78.38"),
  ("Ori Solis","(745) 644-2095","Sweden","$4.32"),
  ("Kylie Clayton","1-766-776-5781","Mexico","$3.30"),
  ("Martin Jacobs","1-463-217-1701","China","$44.76"),
  ("Evelyn Evans","(276) 376-7464","Belgium","$32.80"),
  ("Herrod Gentry","1-571-852-3282","Poland","$89.27");
