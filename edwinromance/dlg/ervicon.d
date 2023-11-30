/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : ERVICON                          //
//MODIFIED BVICONI AND BEDWIN FOR EDWIN ROMANCE        //
/////////////////////////////////////////////////////////

ADD_STATE_TRIGGER BEDWIN 31 ~!Global("EdwinRomanceActive","GLOBAL",2) Global("EdwinVicRomanceFlirt","GLOBAL",0)~

ADD_TRANS_TRIGGER BVICONI 4 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM BVICONI 4
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("EdwinVicRomanceFlirt","GLOBAL",1)~ GOTO vic_edwin_flirt1
END

// Edwin's Banter with Viconia - Romance version
APPEND BVICONI

IF ~~ THEN BEGIN vic_edwin_flirt1
  SAY @0
  IF ~~ THEN EXTERN BEDWIN vic_edwin_flirt2
END

IF ~~ THEN BEGIN vic_edwin_flirt3
SAY @1
  IF ~~ THEN REPLY @2 GOTO displeased
  IF ~~ THEN REPLY @3 GOTO displeased
END

END  // END APPEND BVICONI

CHAIN BEDWIN vic_edwin_flirt2
@4
  == BVICONI
@5
  == BEDWIN
@6
EXTERN BVICONI vic_edwin_flirt3

CHAIN BVICONI displeased
@7
  == BEDWIN
@8
  == BVICONI
@9
  == BEDWIN
@10
  == BVICONI
@11
  == BEDWIN
@12
  =
@13
  == BVICONI
@14
  == BEDWIN
@15
  == BVICONI
@16
EXIT


