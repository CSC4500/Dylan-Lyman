use league;

CREATE TABLE Stats (
    Playerstats_ID 	INT 		PRIMARY KEY 		AUTO_INCREMENT,
    Kills 			INT 				NOT NULL,
    Deaths 			INT					NOT NULL,
    Total_CS 		INT					NOT NULL,
    Elo_Rank 	VARCHAR(5)				NOT NULL,
    Win_Rate 	DECIMAL					NOT NULL
);
Create TABLE Player(
	PlayerID 		INT 		PRIMARY KEY		NOT NULL		auto_increment,
    Main_Pos		VARCHAR(7)	NOT NULL,
    Sec_Pos 		VARCHAR(7)	NOT NULL,
    Playerstats_ID	int			NOT NULL,
    constraint Playerstat
		foreign key (Playerstats_ID)
        references Stats
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
	constraint Champ_Stat
		foreign key (Champion_ID)
        references Champions,
	WinRate dec		not null,
    BanRate dec		not null,
    PickRate dec	not null,
	constraint Item_num
		foreign key (Item_num)
        references Item,
	constraint Rune_num
		foreign key (Rune_ID)
        references Rune
);

create table PlayerChampStats(
	constraint Player_ID
		foreign key (Player_ID)
        references Player,
	constraint Champ_Stat
		foreign key (Champion_ID)
        references Champ_Stats,
	Champ_Kills		int		not null,
    Champ_Deaths		int		not null,
    Champ_CS		int		not null,
    Champ_Gold		int		not null,
    Champ_WinRate		dec		not null,
	constraint Champ_ID
		foreign key (Champion_ID)
        references Champions
);

