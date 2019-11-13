/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : ERMAZZY                         //
//MODIFIED BMAZZY AND BEDWIN FOR EDWIN ROMANCE         //
/////////////////////////////////////////////////////////

ADD_STATE_TRIGGER BEDWIN 6 ~!Global("EdwinRomanceActive","GLOBAL",2) Global("EdwinMazzyRomanceFlirt","GLOBAL",0)~

ADD_TRANS_TRIGGER BMAZZY 81 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM BMAZZY 81
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN maz_edwin_flirt1
END

APPEND BEDWIN
IF ~~ THEN BEGIN maz_edwin_flirt1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("EdwinMazzyRomanceFlirt","GLOBAL",1)~ GOTO maz_edwin_flirt2
  IF ~~ THEN REPLY @2 DO ~SetGlobal("EdwinMazzyRomanceFlirt","LOCALS",1)~ GOTO maz_edwin_flirt2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("EdwinMazzyRomanceFlirt","LOCALS",1)~ GOTO maz_edwin_flirt2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("EdwinMazzyRomanceFlirt","LOCALS",1)~ GOTO endromance
  IF ~~ THEN REPLY @5 DO ~SetGlobal("EdwinMazzyRomanceFlirt","LOCALS",1)~ EXTERN BMAZZY edwin1
END

IF ~~ THEN BEGIN maz_edwin_flirt3
  SAY@6
  IF ~~ THEN REPLY @7 GOTO maz_edwin_flirt4
  IF ~~ THEN REPLY @8 GOTO maz_edwin_flirt5
  IF ~~ THEN REPLY @9 GOTO maz_edwin_flirt6
  IF ~~ THEN REPLY @10 GOTO maz_edwin_flirt7
END

IF ~~ THEN BEGIN maz_edwin_flirt4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maz_edwin_flirt5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maz_edwin_flirt6
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maz_edwin_flirt7
  SAY @14
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment()
  EscapeArea()~
  EXIT
END

IF ~~ THEN BEGIN endromance
  SAY @15
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ GOTO 7
END

END //END APPEND BEDWIN

CHAIN BEDWIN maz_edwin_flirt2
@16
  =
@17
  == BMAZZY
@18
  == BEDWIN
@19
  == BMAZZY
@20
  == BEDWIN
@21
EXTERN BEDWIN maz_edwin_flirt3
//EXIT

APPEND BMAZZY
IF ~~ THEN BEGIN edwin1
  SAY @22
  IF ~~ THEN REPLY @23
EXIT
  IF ~~ THEN REPLY @24
EXIT
  IF ~~ THEN REPLY @25 GOTO edwin2
END

IF ~~ THEN BEGIN edwin2
  SAY @26
  IF ~~ THEN DO ~GivePartyAllEquipment() EscapeArea()~
  EXIT
END
END //END APPEND BMAZZY
