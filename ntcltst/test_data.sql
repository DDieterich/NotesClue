
spool test_data

execute clue.delete_game;
execute clue.delete_user;

execute clue.init_user('Duane');
execute clue.init_game('Test1');

update players_act
    set  total_cards = 3
   where games_nk1 = clue.get('USER')
    and  games_nk2 = clue.get('GAME')
    and  name      = 'ME';
insert into players_act (games_nk1, games_nk2, name, seq, total_cards)
   values (clue.get('USER'), clue.get('GAME'), 'Michiet', 1, 3);
insert into players_act (games_nk1, games_nk2, name, seq, total_cards)
   values (clue.get('USER'), clue.get('GAME'), 'Elizabeth', 2, 3);
insert into players_act (games_nk1, games_nk2, name, seq, total_cards)
   values (clue.get('USER'), clue.get('GAME'), 'Zachary', 3, 3);
insert into players_act (games_nk1, games_nk2, name, seq, total_cards)
   values (clue.get('USER'), clue.get('GAME'), 'Nina', 5, 3);
insert into players_act (games_nk1, games_nk2, name, seq, total_cards)
   values (clue.get('USER'), clue.get('GAME'), 'Olympia', 7, 3);

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'MUSTARD';
   card_aa(2) := 'CONSERVATORY';
   card_aa(3) := 'ROPE';
   clue.add_rev ('ME', card_aa);
end;
/

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'GREEN';
   card_aa(2) := 'BILLIARD';
   card_aa(3) := 'KNIFE';
   clue.add_sugg ('Elizabeth', 'Michiet', null, card_aa);
end;
/

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'WHITE';
   card_aa(2) := 'LIBRARY';
   card_aa(3) := 'ROPE';
   clue.add_acc ('Zachary', card_aa);
end;
/

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'SCARLET';
   card_aa(2) := 'KITCHEN';
   card_aa(3) := 'REVOLVER';
   clue.add_sugg ('ME', 'Elizabeth', 3, card_aa);
end;
/

execute clue.undo_action;
execute clue.undo_action;

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'WHITE';
   card_aa(2) := 'LIBRARY';
   card_aa(3) := 'PIPE';
   clue.add_sugg ('ME', 'Elizabeth', 3, card_aa);
end;
/

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'GREEN';
   card_aa(2) := 'BILLIARD';
   card_aa(3) := 'REVOLVER';
   clue.add_sugg ('Nina', 'Zachary', null, card_aa);
end;
/

declare
   card_aa  clue.card_aa_type;
begin
   card_aa(1) := 'MUSTARD';
   card_aa(2) := 'BALL';
   card_aa(3) := 'WRENCH';
   clue.add_sugg ('ME', 'Olympia', 3, card_aa);
end;
/

-- Accusations:
select players_nk3           accuser
      ,clue.get_acards(id)   card_list
 from  accusation_act
 where players_nk1 = clue.get('USER')
  and  players_nk2 = clue.get('GAME');

-- Missing Cards:
select card_type
      ,clue.get_missing(ctype_id)    missing_cards
 from  (select ct.name  card_type
              ,ct.id    ctype_id
              ,ct.sort_ord
         from  card_types_act ct
         where ct.users_nk1 = clue.get('USER')
          and  exists (select 'X' from cards_act ca
                        where ca.games_nk2 = clue.get('GAME')
                         and  ca.ctype_id  = ct.id)
       )
 order by sort_ord;

-- Candidates:
select c.card_types_nk2    card_type
      ,c.name              card_name
 from  card_types  ct
      ,cards_act   c
 where ct.id       = c.ctype_id
  and  c.games_nk1 = clue.get('USER')
  and  c.games_nk2 = clue.get('GAME')
  and  not exists
      (select p.id from players p where p.game_id = c.game_id
       minus
       select p.id
        from  pcard_actions  pca
             ,players        p
        where pca.disposition like 'L%'
         and  pca.player_id   = p.id
         and  pca.card_id     = c.id
         and  p.game_id       = c.game_id )
 order by ct.sort_ord, c.name;

-- Last "last_act_num" Actions (with 1 UNDO Button)
select seq
      ,player
      ,act
      ,res
      ,(select seq from actions where id = res_id) rseq
      ,clue.get_acards(act_id) card_list
 from  (select id                act_id
              ,seq
              ,players_nk3       player
              ,substr(actions_sub_type,1,3)
                                 act
              ,resolved          res
              ,res_action_id     res_id
         from  actions_act
         where players_nk1 = clue.get('USER')
          and  players_nk2 = clue.get('GAME')
          and  resolved   != 'UND'
         order by seq desc )
 where rownum <= (select last_act_num
                    from games
                   where name = clue.get('GAME'))
 order by seq;

-- Suggestions made by ME:
select seq
      ,clue.get_acards(id)   card_list
 from  suggestion_act
 where players_nk1 = clue.get('USER')
  and  players_nk2 = clue.get('GAME')
  and  players_nk3 = 'ME'
  and  resolved != 'UND'
 order by seq;

-- Player Cards
select clue.get_pdisp_hdr player_list from dual;
select ct.name        type
      ,c.name         card
      ,clue.get_pdisp_list(c.id)
                      player_list
 from  card_types  ct
      ,cards_act   c
 where ct.id = c.ctype_id
  and  games_nk1 = clue.get('USER')
  and  games_nk2 = clue.get('GAME')
 order by ct.sort_ord;

-- Undo Actions
select seq
      ,players_nk3          player
      ,substr(actions_sub_type,1,3)
                            act
      ,clue.get_acards(id)  card_list
      ,rev_players_nk3      revealed
 from  actions_act
 where players_nk1 = clue.get('USER')
  and  players_nk2 = clue.get('GAME')
  and  resolved    = 'UND'
 order by seq;

-- Suggestion History
select seq
      ,players_nk3           player
      ,clue.get_acards(id)   card_list
      ,resolved              res
      ,rev_players_nk3       revealed
 from  suggestion_act
 where players_nk1 = clue.get('USER')
  and  players_nk2 = clue.get('GAME')
  and  resolved != 'UND'
 order by seq;

execute dbms_output.put_line(clue.check_game);

spool off
