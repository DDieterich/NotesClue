
insert into users_act (name) values ('Default');

insert into card_types_act (users_nk1, name, sort_ord) values ('Default', 'CHARACTER', 1);
insert into card_types_act (users_nk1, name, sort_ord) values ('Default', 'ROOM', 2);
insert into card_types_act (users_nk1, name, sort_ord) values ('Default', 'WEAPON', 3);

insert into games_act (users_nk1, name) values ('Default', 'Default');

insert into players_act (games_nk1, games_nk2, seq, name)
   values ('Default', 'Default', 0, 'ME');

insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'SCARLET', 'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'MUSTARD', 'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'WHITE',   'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'GREEN',   'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'PEACOCK', 'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'PLUM',    'Default', 'CHARACTER');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'HALL',         'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'LOUNGE',       'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'DINING',       'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'KITCHEN',      'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'BALL',         'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'CONSERVATORY', 'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'BILLIARD',     'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'LIBRARY',      'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'STUDY',        'Default', 'ROOM');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'ROPE',        'Default', 'WEAPON');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'PIPE',        'Default', 'WEAPON');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'KNIFE',       'Default', 'WEAPON');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'WRENCH',      'Default', 'WEAPON');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'CANDLESTICK', 'Default', 'WEAPON');
insert into cards_act (games_nk1, games_nk2, name, card_types_nk1, card_types_nk2)
   values ('Default', 'Default', 'REVOLVER',    'Default', 'WEAPON');
