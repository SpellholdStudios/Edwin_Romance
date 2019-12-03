/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : ERANOMEN                         //
//MODIFIED BANOMEN AND BEDWIN FOR EDWIN ROMANCE        //
/////////////////////////////////////////////////////////


I_C_T BANOMEN 106 ER_BANOMEN_106
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @0
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @1
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @2
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @15
END

I_C_T BANOMEN 173 ER_BANOMEN_173
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @3
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @4
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @5
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @6
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @7
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @16
END

I_C_T BANOMEN 311 ER_BANOMEN_311
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @8
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @9
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @10
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1)~ THEN
      @11
=     @17
END


INTERJECT BANOMEN 409 ER_BANOMEN_409
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @12
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @13
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @22
END
   IF ~~ THEN REPLY @23 EXTERN BEDWIN ANO_EDWIN42
   IF ~~ THEN REPLY @24 EXTERN BEDWIN ANO_EDWIN43
   IF ~~ THEN REPLY @25 EXTERN BANOMEN ANO_EDWIN423
   IF ~~ THEN REPLY @26 EXTERN BANOMEN ANO_EDWIN424

APPEND BEDWIN
IF ~~ THEN BEGIN ANO_EDWIN42
   SAY @27
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN BANOMEN ANO_EDWIN422
END

IF ~~ THEN BEGIN ANO_EDWIN43
   SAY @28
   IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXTERN BANOMEN ANO_EDWIN422
END
END //APPEND

APPEND BANOMEN

IF ~~ THEN BEGIN ANO_EDWIN422
    SAY @18
    COPY_TRANS BANOMEN 409
END

IF ~~ THEN BEGIN ANO_EDWIN423
    SAY @19
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ANO_EDWIN424
    SAY @20
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXIT
END

END //APPEND




INTERJECT BANOMEN 341 ER_BANOMEN_341
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @14
== BANOMEN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @13
== BEDWIN IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinIgnoreRomances","GLOBAL",0)~ THEN
      @22
END
   IF ~~ THEN REPLY @23 EXTERN BEDWIN ANO_EDWIN52
   IF ~~ THEN REPLY @24 EXTERN BEDWIN ANO_EDWIN53
   IF ~~ THEN REPLY @25 EXTERN BANOMEN ANO_EDWIN523
   IF ~~ THEN REPLY @29 EXTERN BANOMEN ANO_EDWIN524

APPEND BEDWIN

IF ~~ THEN BEGIN ANO_EDWIN52
   SAY @30
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN BANOMEN ANO_EDWIN522
END

IF ~~ THEN BEGIN ANO_EDWIN53
   SAY @31
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXTERN BANOMEN ANO_EDWIN522
END

END //APPEND

APPEND BANOMEN

IF ~~ THEN BEGIN ANO_EDWIN522
    SAY @21
    COPY_TRANS BANOMEN 341
END

IF ~~ THEN BEGIN ANO_EDWIN523
    SAY @19
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ANO_EDWIN524
    SAY @20
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXIT
END

END //APPEND


/*




/*
ADD_TRANS_TRIGGER  BANOMEN 106 ~!Global("EdwinRomanceActive","GLOBAL",1)~
ADD_TRANS_TRIGGER  BANOMEN 173 ~!Global("EdwinRomanceActive","GLOBAL",1)~
ADD_TRANS_TRIGGER  BANOMEN 311 ~!Global("EdwinRomanceActive","GLOBAL",1)~
ADD_TRANS_TRIGGER  BANOMEN 409 ~!Global("EdwinRomanceActive","GLOBAL",1)~
ADD_TRANS_TRIGGER  BANOMEN 341 ~!Global("EdwinRomanceActive","GLOBAL",1)~ */

EXTEND_BOTTOM BANOMEN 106
  IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN ANO_EDWIN1
END

EXTEND_BOTTOM BANOMEN 173
  IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN ANO_EDWIN2
END

EXTEND_BOTTOM BANOMEN 311
  IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN ANO_EDWIN3
END

EXTEND_BOTTOM BANOMEN 409
  IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN ANO_EDWIN4
END

EXTEND_BOTTOM BANOMEN 341
  IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",1)~ THEN EXTERN BEDWIN ANO_EDWIN5
END


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~CHAINS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

CHAIN BEDWIN ANO_EDWIN1
      @0
== BANOMEN
      @1
== BEDWIN
      @2
END BANOMEN 106_E

CHAIN BEDWIN ANO_EDWIN2
      @3
== BANOMEN
      @4
== BEDWIN
      @5
== BANOMEN
      @6
== BEDWIN
      @7
END BANOMEN 173_E

CHAIN BEDWIN ANO_EDWIN3
      @8
== BANOMEN
      @9
== BEDWIN
      @10
== BANOMEN
      @11
END BANOMEN 311_E

CHAIN BEDWIN ANO_EDWIN4
      @12
== BANOMEN
      @13
END BEDWIN ANO_EDWIN41

CHAIN BEDWIN ANO_EDWIN5
      @14
== BANOMEN
      @13
END BEDWIN ANO_EDWIN51

APPEND BANOMEN

IF ~~ THEN BEGIN 106_E
  SAY @15
  IF ~~ THEN REPLY #35022 /* ~Not very much, I'm afraid.~ */ GOTO 107
  IF ~~ THEN REPLY #35023 /* ~A little.~ */ GOTO 112
  IF ~~ THEN REPLY #35025 /* ~All I know is that it is full of arrogant and pompous knights like yourself.~ */ GOTO 113
  IF ~~ THEN REPLY #35026 /* ~I don't care to discuss this right now, Anomen.~ */ GOTO 114
END

IF ~~ THEN BEGIN 173_E
  SAY @16
  IF ~~ THEN REPLY #35254 /* ~No, but I'd like to hear the tale.~ */ GOTO 174
  IF ~~ THEN REPLY #35255 /* ~No, and I've no interest in hearing about it.~ */ GOTO 179
  IF ~~ THEN REPLY #35256 /* ~I thought you were trying to become a knight.~ */ GOTO 180
END

IF ~~ THEN BEGIN 311_E
  SAY @17
  IF ~~ THEN REPLY #35559 /* ~Why not?  Are they not fair?~ */ GOTO 312
  IF ~~ THEN REPLY #35560 /* ~I think I understand.~ */ GOTO 313
  IF ~~ THEN REPLY #35561 /* ~I'm tired of hearing about your Test, Anomen.  Talk to someone who cares.~ */ GOTO 317
  IF ~~ THEN REPLY #35562 /* ~This is not a good time to speak, Anomen.~ */ GOTO 318
END

IF ~~ THEN BEGIN ANO_EDWIN422
    SAY @18
    IF ~~ THEN REPLY #35802 /* ~What of it?~ */ GOTO 410
    IF ~~ THEN REPLY #35803 /* ~It's a pretty enough flower.~ */ GOTO 410
    IF ~~ THEN REPLY #35804 /* ~Do you always go around picking flowers, Anomen?~ */ GOTO 412
END

IF ~~ THEN BEGIN ANO_EDWIN423
    SAY @19
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ANO_EDWIN424
    SAY @20
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANO_EDWIN522
    SAY @21
    IF ~~ THEN REPLY #35635 /* ~A conclusion about me?  What kind of conclusion?~ */ GOTO 342
    IF ~~ THEN REPLY #35636 /* ~If you must.~ */ GOTO 342
    IF ~~ THEN REPLY #35638 /* ~I'm not interested, Anomen.~ */ GOTO 348
END

IF ~~ THEN BEGIN ANO_EDWIN523
    SAY @19
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ANO_EDWIN524
    SAY @20
    IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXIT
END

END


APPEND BEDWIN

IF ~~ THEN BEGIN ANO_EDWIN41
   SAY @22
   IF ~~ THEN REPLY @23 EXTERN BEDWIN ANO_EDWIN52
   IF ~~ THEN REPLY @24 EXTERN BEDWIN ANO_EDWIN53
   IF ~~ THEN REPLY @25 EXTERN BANOMEN ANO_EDWIN423
   IF ~~ THEN REPLY @26 EXTERN BANOMEN ANO_EDWIN424
END

IF ~~ THEN BEGIN ANO_EDWIN42
   SAY @27
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN BANOMEN ANO_EDWIN422
END

IF ~~ THEN BEGIN ANO_EDWIN43
   SAY @28
   IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXTERN BANOMEN ANO_EDWIN422
END

IF ~~ THEN BEGIN ANO_EDWIN51
   SAY @22
   IF ~~ THEN REPLY @23 GOTO ANO_EDWIN52
   IF ~~ THEN REPLY @24 GOTO ANO_EDWIN53
   IF ~~ THEN REPLY @25 EXTERN BANOMEN ANO_EDWIN523
   IF ~~ THEN REPLY @29 EXTERN BANOMEN ANO_EDWIN524
END

IF ~~ THEN BEGIN ANO_EDWIN52
   SAY @30
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN BANOMEN ANO_EDWIN522
END

IF ~~ THEN BEGIN ANO_EDWIN53
   SAY @31
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() EscapeArea()~ EXTERN BANOMEN ANO_EDWIN522
END

END

*/