INTERJECT Player1 39 er_tolcom
  == Player1 IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @0
END ++ @1 EXTERN Edwinj ERTOLL

APPEND Edwinj
IF ~~ ERTOLL
  SAY @2
	=
	@3
	=
	@4
  IF ~~ + ERTOLL2
END

IF ~~ ERTOLL2
  SAY @5
  COPY_TRANS EDWINJ 160
END
END