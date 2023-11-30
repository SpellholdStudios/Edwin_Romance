
//The Final

INTERJECT EDWIN25J 0 erfinalsol_nr
  == EDWIN25J IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
   @17
END
COPY_TRANS EDWIN25J 0

INTERJECT EDWIN25J 0 erfinalsol
  == EDWIN25J IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN
   @0
END + ~Alignment("Edwin",MASK_EVIL)~ + @1 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @1 EXTERN Edwin25j FETN1
    + ~Alignment("Edwin",MASK_EVIL)~ + @2 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @2 EXTERN Edwin25j FETN1
    + ~Alignment("Edwin",MASK_EVIL)~ + @3 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @3 EXTERN Edwin25j FETN1

EXTEND_BOTTOM FINSOL01 29
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN EDWIN25J FELEAVE_29
END

EXTEND_BOTTOM FINSOL01 30
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN EDWIN25J FELEAVE_30
END

EXTEND_BOTTOM FINSOL01 31
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN EDWIN25J FELEAVE_31
END

EXTEND_BOTTOM FINSOL01 32
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN EDWIN25J FESTAY
END

APPEND EDWIN25J
IF ~~ FETN1
  SAY @4
     =
      @5
     =
      @6
IF ~~ + FELETN
END

IF ~~ FELE1
  SAY @4
     =
      @7
     =
      @6
IF ~~ + FELETN
END

IF ~~ FELETN
  SAY @8
  COPY_TRANS EDWIN25J 0
END

IF ~~ FELEAVE_29
  SAY @9
  COPY_TRANS FINSOL01 29
END

IF ~~ FELEAVE_30
  SAY @9
  COPY_TRANS FINSOL01 30
END

IF ~~ FELEAVE_31
  SAY @9
  COPY_TRANS FINSOL01 31
END

IF ~~ FESTAY
  SAY @11
  ++ @12 + FESTAY2
  ++ @13 + FESTAY2
  ++ @14 + FESTAY2
END

IF ~~ FESTAY2
  SAY @15
  COPY_TRANS FINSOL01 32
END
END
