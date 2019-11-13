INTERJECT Player1 33 er_tolcom
  == Player1 IF ~Global("EdwinRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Edwin")~ THEN @0
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
  COPY_TRANS Player1 33
END

IF ~~ ERTOLF
  SAY @6
  COPY_TRANS Edwinj 160
END
END

A_T_T Player1 33 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T Imoen2J 38 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T MinscJ 209 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T ValygarJ 106 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T MazzyJ 199 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T JanJ 181 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T Edwinj ERTOLL2 ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO 14
A_T_T Player1 39 ~!Global("EdwinFriend","GLOBAL",1)~

EXTEND_BOTTOM Player1 39
  + ~Global("EdwinFriend","GLOBAL",1)~ + #58054 EXTERN EdwinJ ERTOLF
  + ~Global("EdwinFriend","GLOBAL",1)~ + #58055 EXTERN EdwinJ ERTOLF
  + ~Global("EdwinFriend","GLOBAL",1)~ + #58057 EXTERN EdwinJ ERTOLF
END