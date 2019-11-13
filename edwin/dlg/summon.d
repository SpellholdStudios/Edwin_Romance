EXTEND_BOTTOM FATESP 6 #1
+ ~!Dead("Edwin")
   Global("EdwinSummoned","GLOBAL",0)
   Gender(Player1,FEMALE)
   CheckStatGT(Player1,13,INT)
   !Global("AnomenRomanceActive","GLOBAL",2)
   !Global("EdwinRomanceActive","GLOBAL",3)
   !Global("E3FadeRomanceActive","GLOBAL",2)
   !Global("ChloeRomanceActiveCR","GLOBAL",2)
   !Global("J#KelseyRomanceActive","GLOBAL",2)
   !Global("TsujathaRomanceActive","GLOBAL",2)
   !Global("imoenromanceactive","GLOBAL",2)
   !Global("H#ValygarRomanceActive","GLOBAL",2)
   !GlobalGT("SolaTalk","GLOBAL",8)
   OR(5)
     Race(Player1,HUMAN)
     Race(Player1,HALF_ELF)
     Race(Player1,ELF)
     Race(Player1,HALFLING)
     Race(Player1,GNOME)~ + @0 DO ~SetGlobal("EdwinSummoned", "GLOBAL", 1) SetGlobal("EdwinRomanceActive","GLOBAL",2) SetGlobal("EdwinMatch", "GLOBAL", 1)~ + 8
END

ADD_STATE_TRIGGER Edwin25a 0 ~!Global("EdwinRomanceActive","GLOBAL",2)~ 7

APPEND Edwin25a
IF ~Global("EdwinSummoned","GLOBAL",1) Global("EdwinRomanceActive", "GLOBAL", 2)~ Summon1
  SAY @1
  ++ @2 DO ~SetGlobal("EdwinSummoned","GLOBAL",2)~ + Summon1A
  ++ @3 DO ~SetGlobal("EdwinSummoned","GLOBAL",2)~ + Summon1B
  ++ @4 DO ~SetGlobal("EdwinSummoned","GLOBAL",2)~ + Summon1C
END

IF ~~ Summon1A
  SAY @5
  ++ @6 + Summon2
  ++ @7 + Summon2
  ++ @8 + Summon1C
END

IF ~~ Summon1B
  SAY @9
  ++ @10 + Summon2
  ++ @11 + Summon2
  ++ @12 + Summon1C
END

IF ~~ Summon1C
  SAY @13
  IF ~~ DO ~MoveToPointNoInterrupt([2552.1445]) Face(2)~ EXIT
END

IF ~~ Summon2
  SAY @14
  IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("EdwinSummoned", "GLOBAL", 2) Global("EdwinRomanceActive", "GLOBAL", 2)~ Summon3
  SAY @15
  ++ @16 + Summon3A
  ++ @17 + Summon3B
END

IF ~~ Summon3A
  SAY @18
  IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ Summon3B
  SAY @19
  IF ~~ EXIT
END
END

