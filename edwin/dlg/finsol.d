
//The Final

INTERJECT FINSOL01 27 erfinalsol
  == EDWIN25J IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ THEN
   @0
END + ~Alignment("Edwin",MASK_EVIL)~ + @1 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @1 EXTERN Edwin25j FETN1
    + ~Alignment("Edwin",MASK_EVIL)~ + @2 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @2 EXTERN Edwin25j FETN1
    + ~Alignment("Edwin",MASK_EVIL)~ + @3 EXTERN Edwin25j FELE1
    + ~!Alignment("Edwin",MASK_EVIL)~ + @3 EXTERN Edwin25j FETN1

EXTEND_BOTTOM FINSOL01 29
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ EXTERN EDWIN25J FELEAVE
END

EXTEND_BOTTOM FINSOL01 30
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ EXTERN EDWIN25J FELEAVE
END

EXTEND_BOTTOM FINSOL01 31
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ EXTERN EDWIN25J FELEAVE
END

EXTEND_BOTTOM FINSOL01 32
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ EXTERN EDWIN25J FESTAY
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
  COPY_TRANS FINSOL01 27
END

IF ~~ FELEAVE
  SAY @9
  + ~!InParty("Imoen2") !InParty("Sarevok")~ + @10 EXTERN FINSOL01 33
  + ~InParty("Imoen2") !InParty("Sarevok")~ + @10 EXTERN IMOEN25J 18
  + ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ + @10 EXTERN SAREV25J 4
  + ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ + @10 EXTERN SAREV25J 6
END

IF ~~ FESTAY
  SAY @11
  ++ @12 + FESTAY2
  ++ @13 + FESTAY2
  ++ @14 + FESTAY2
END

IF ~~ FESTAY2
  SAY @15
  + ~!InParty("Imoen2") !InParty("Sarevok")~ + @16 EXTERN FINSOL01 33
  + ~InParty("Imoen2") !InParty("Sarevok")~ + @16 EXTERN IMOEN25J 19
  + ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ + @16 EXTERN SAREV25J 5
  + ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ + @16 EXTERN SAREV25J 7
END
END

ADD_TRANS_TRIGGER EDWIN25J FELETN ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 20
ADD_TRANS_TRIGGER FINSOL01 27 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 20
ADD_TRANS_TRIGGER KORGA25J 3 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 20
ADD_TRANS_TRIGGER KELDO25J 1 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 20
