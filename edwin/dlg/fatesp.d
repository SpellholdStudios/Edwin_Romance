EXTEND_BOTTOM FATESP 6 #1
+ ~!Dead("Edwin")
   Global("EdwinSummoned","GLOBAL",0)
   Gender(Player1,FEMALE)
   CheckStatGT(Player1,13,INT)
   !Global("EdwinRomanceActive","GLOBAL",3)
   !Global("AnomenRomanceActive","GLOBAL",2)
   !Global("DornRomanceActive","GLOBAL",2)
   !Global("HexxatRomanceActive","GLOBAL",2)
   !Global("RasaadRomanceActive","GLOBAL",2)
   %NO_ACTIVE_MOD_NPC_ROMANCE%
   OR(5)
     Race(Player1,HUMAN)
     Race(Player1,HALF_ELF)
     Race(Player1,ELF)
     Race(Player1,HALFLING)
     Race(Player1,GNOME)~ + @0 DO ~SetGlobal("EdwinSummoned", "GLOBAL", 1) SetGlobal("EdwinRomanceActive","GLOBAL",2) SetGlobal("EdwinMatch", "GLOBAL", 1)~ + 8
END