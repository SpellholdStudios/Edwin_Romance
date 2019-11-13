//The Slayer Change Dialogue
EXTEND_BOTTOM Player1 7
IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",2)~ EXTERN EDWINJ ERSLAYER1
END

EXTEND_BOTTOM Player1 10
IF ~InParty("Edwin") Global("ER_EndangeredEdwin","GLOBAL",1)~ DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN EDWINJ ERSLAYER3
END

A_T_T FIRKRA02 25 ~!Global("EdwinRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",1)~ DO 2

A_T_T KELDORJ 100 ~!Global("EdwinRomanceActive","GLOBAL",2) !Global("EdwinRomanceActive","GLOBAL",1)~ DO 1

EXTEND_TOP FIRKRA02 25
IF ~OR(2) Global("EdwinRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",1)~ DO ~ActionOverride("firmag01",Enemy()) Enemy()~ UNSOLVED_JOURNAL #22917 EXIT
END

EXTEND_TOP KELDORJ 100
IF ~OR(2) Global("EdwinRomanceActive","GLOBAL",2) Global("EdwinRomanceActive","GLOBAL",1)~ EXIT
END

APPEND EDWINJ
IF ~~ ERSLAYER1
SAY @0
++ @1 DO ~SetGlobal("ER_EndangeredEdwin","GLOBAL",1)~ + ERSLAYER2
++ @2 DO ~SetGlobal("ER_EndangeredEdwin","GLOBAL",1)~ + ERSLAYER2
++ @3 DO ~SetGlobal("ER_EndangeredEdwin","GLOBAL",1)~ + ERSLAYER2
END

IF ~~ ERSLAYER2
SAY @4
IF ~~ DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ ERSLAYER3
SAY @5
++ @6 + ERSLAYER4A
++ @7 + ERSLAYER4B
++ @8 + ERSLAYER4C
END

IF ~~ ERSLAYER4A
SAY @9
++ @10 + ERSLAYER5A
END

IF ~~ ERSLAYER4B
SAY @11
++ @12 + ERSLAYER5B
END

IF ~~ ERSLAYER4C
SAY @13
++ @14 + ERSLAYER5C
END

IF ~~ ERSLAYER5A
SAY @15
IF ~~ EXIT
END

IF ~~ ERSLAYER5B
SAY @16
++ @17 + ERSLAYER4A
END

IF ~~ ERSLAYER5C
SAY @18
++ @19 + ERSLAYER4A
END
END
