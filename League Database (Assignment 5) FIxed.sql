drop database if exists league;
create database league;
use league;

CREATE TABLE Stats (
    Playerstats_ID 	INT 		PRIMARY KEY 		AUTO_INCREMENT,
    Kills 			INT 				NOT NULL,
    Deaths 			INT					NOT NULL,
    Total_CS 		INT					NOT NULL,
    Elo_Rank 	VARCHAR(10)				NOT NULL,
    Win_Rate 	INT					NOT NULL
);
Create TABLE Player(
	PlayerID 		INT 		PRIMARY KEY		NOT NULL		auto_increment,
    Main_Pos		VARCHAR(7)	NOT NULL,
    Sec_Pos 		VARCHAR(7)	NOT NULL,
    Playerstats_ID	int			NOT NULL,
    constraint Playerstat
		foreign key (Playerstats_ID)
        references Stats(Playerstats_ID)
);
create TABLE Champions(
	Champion_ID		int		primary KEY 	not null,
    Champ_Name 		varchar(35)		not null,
    Champ_Region	varchar(35)		not null
);

create TABLE Item(
	Item_Num int		primary key		not null,
    item_1	int		not null,
    item_2	int		not null,
    item_3	int		not null,
    item_4	int		not null,
    item_5	int		not null,
    item_6	int		not null
);

Create table Rune(
	Rune_Num int 	primary key		not null,
    rune_1 int 	not null,
    rune_2 int 	not null,
    rune_3 int 	not null,
    rune_4 int 	not null,
    rune_5 int 	not null,
    rune_6 int 	not null,
    rune_7 int 	not null,
    rune_8 int 	not null,
    rune_9 int 	not null
);
create table Champ_Stats(
	WinRate dec		not null,
    BanRate dec		not null,
    PickRate dec	not null,
    Champion_ID int not null,
    Item_num int not null,
    Rune_Num int not null,
    constraint Champ_Stat
		foreign key (Champion_ID)
        references Champions(Champion_ID),
	constraint Item_num
		foreign key (Item_num)
        references Item(Item_num),
	constraint Rune_num
		foreign key (Rune_Num)
        references Rune(Rune_Num)
);
create table PlayerChampStats(
	Champ_Kills		int		not null,
    Champ_Deaths		int		not null,
    Champ_CS		int		not null,
    Champ_Gold		int		not null,
    Champ_WinRate		dec		not null,
    PlayerID int not null,
    Champion_ID int not null,
    constraint PlayerID
		foreign key (PlayerID)
        references Player(PlayerID),
	constraint Champ_ID
		foreign key (Champion_ID)
        references Champions(Champion_ID)
);

insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (1, 15, 20, 150, "Gold", 65);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (2, 35, 25, 130, "Diamond", 75);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (3, 53, 36, 120, "Iron", 34);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (4, 12, 42, 155, "Sliver", 86);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (5, 7, 22, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (6, 7, 8, 90, "Gold", 25);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (7, 75, 20, 90, "Gold", 34);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (8, 73, 22, 90, "Master", 24);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (9, 7, 22, 90, "Gold", 12);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (10, 7, 23, 90, "Gold", 68);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (11, 72, 22, 90, "Challenger", 24);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (12, 7, 22, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (13, 71, 43, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (14, 7, 22, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (15, 70, 22, 90, "Bronze", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (16, 7, 23, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (17, 5, 22, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (18, 7, 21, 90, "Sliver", 10);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (19, 2, 2, 90, "Gold", 32);
insert into Stats (Playerstats_ID, Kills, Deaths, Total_CS, Elo_Rank, Win_Rate) values (20, 7, 22, 90, "Gold", 32);

insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (1, "Top", "Jungle", 1);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (2, "Jungle", "Support", 2);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (3, "Mid", "ADC", 3);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (4, "ADC", "Top", 4);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (5, "ADC", "ADC", 5);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (6, "Support", "ADC", 6);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (7, "Top", "ADC", 7);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (8, "Support", "ADC", 8);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (9, "Mid", "ADC", 9);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (10, "Support", "Top", 10);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (11, "Support", "Mid", 11);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (12, "Jungle", "Support", 12);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (13, "Support", "Top", 13);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (14, "Mid", "Jungle", 14);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (15, "ADC", "Support", 15);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (16, "Support", "ADC", 16);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (17, "Mid", "ADC", 17);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (18, "Support", "ADC", 18);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (19, "Top", "ADC", 19);
insert into Player(PlayerID, Main_Pos,Sec_Pos, PlayerStats_ID) values (20, "Support", "ADC", 20);

insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(1, "Ahri","Ionia");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(2, "Akali","Ionia");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(3, "Irelia","Ionia");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(4, "Ivern","Ionia");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(5, "Jhin","Ionia");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(6, "Fizz","BligeWater");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(7, "Gangplank","BligeWater");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(8, "Graves","BligeWater");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(9, "Illaoi","BligeWater");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(10, "Miss Fortune","BligeWater");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(11, "Cassopeia","Noxus");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(12, "Darius","Noxus");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(13, "Draven","Noxus");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(14, "Kled","Noxus");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(15, "Katarina","Noxus");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(16, "Cho'Gath","The Void");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(17, "Kai'Sa","The Void");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(18, "Kassadin","The Void");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(19, "Kha'Zix","The Void");
insert into Champions(Champion_ID, Champ_Name, Champ_Region) values(20, "Kog'Maw","The Void");

insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(123456, 1, 2, 3, 4, 5, 6);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(234567, 2, 3, 4, 5, 6, 7);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(345678, 3, 4, 5, 6, 7, 8);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(456789, 4, 5, 6, 7, 8, 9);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678910, 5, 6, 7, 8, 9, 10);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678912, 5, 6, 7, 8, 9, 12);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678913, 5, 6, 7, 8, 9, 13);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678914, 5, 6, 7, 8, 9, 14);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678915, 5, 6, 7, 8, 9, 15);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678916, 5, 6, 7, 8, 9, 16);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678917, 5, 6, 7, 8, 9, 17);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678918, 5, 6, 7, 8, 9, 18);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678919, 5, 6, 7, 8, 9, 19);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678920, 5, 6, 7, 8, 9, 20);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678921, 5, 6, 7, 8, 9, 21);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678922, 5, 6, 7, 8, 9, 22);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678923, 5, 6, 7, 8, 9, 23);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678924, 5, 6, 7, 8, 9, 24);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678925, 5, 6, 7, 8, 9, 25);
insert into Item(Item_Num, Item_1, Item_2, Item_3, Item_4, Item_5, Item_6) values(5678926, 5, 6, 7, 8, 9, 26);

insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123456789, 1, 2, 3, 4, 5, 6, 7, 8, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234767810, 1, 2, 3, 4, 7, 6, 7, 8, 10);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234367812, 1, 2, 3, 4, 3, 6, 7, 8, 12);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234867811, 1, 2, 3, 4, 8, 6, 7, 8, 11);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267813, 1, 2, 3, 4, 2, 6, 7, 8, 13);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267814, 1, 2, 3, 4, 2, 6, 7, 8, 14);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267815, 1, 2, 3, 4, 2, 6, 7, 8, 15);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267816, 1, 2, 3, 4, 2, 6, 7, 8, 16);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267817, 1, 2, 3, 4, 2, 6, 7, 8, 17);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(1234267818, 1, 2, 3, 4, 2, 6, 7, 8, 18);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(523426729, 5, 2, 3, 4, 2, 6, 7, 2, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(193426739, 1, 9, 3, 4, 2, 6, 7, 3, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(823426749, 8, 2, 3, 4, 2, 6, 7, 4, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426759, 1, 2, 3, 4, 2, 6, 7, 5, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426769, 1, 2, 3, 4, 2, 6, 7, 6, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426779, 1, 2, 3, 4, 2, 6, 7, 7, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(223426789, 2, 2, 3, 4, 2, 6, 7, 8, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426729, 1, 2, 3, 4, 2, 6, 7, 2, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426739, 1, 2, 3, 4, 2, 6, 7, 3, 9);
insert into Rune(Rune_Num, Rune_1, Rune_2, Rune_3, Rune_4, Rune_5, Rune_6, Rune_7, Rune_8, Rune_9) values(123426749, 1, 2, 3, 4, 2, 6, 7, 4, 9);

insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(25, 36, 15, 1, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(75, 35, 35, 2, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(2, 6, 5, 3, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(5, 26, 55, 4, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 5, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 6, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 7, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 8, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 9, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 10, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 11, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 12, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 13, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 14, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 15, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 16, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 17, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 18, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 19, 123456, 123456789);
insert into Champ_Stats(WinRate, BanRate, PickRate, Champion_ID, Item_Num, Rune_Num) values(15, 16, 25, 20, 123456, 123456789);

insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (15, 5, 200, 100000, 45, 1, 1);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (25, 46, 124, 200000, 34, 2, 2);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (35, 16, 147, 10000, 32, 3, 3);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (65, 52, 57, 102000, 21, 4, 4);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100500, 34, 5, 5);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 102000, 34, 6, 6);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100500, 34, 7, 7);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 8, 8);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 9, 9);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 10, 10);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100100, 34, 11, 11);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 102000, 34, 12, 12);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 13, 13);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 14, 14);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100050, 34, 15, 15);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 16, 16);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 10000, 34, 17, 17);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 101000, 34, 18, 18);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 100000, 34, 19, 19);
insert into PlayerChampStats(Champ_Kills, Champ_Deaths, Champ_CS, Champ_Gold, Champ_WinRate, PlayerID, Champion_ID) values (2, 56, 127, 12000, 34, 20, 20);

