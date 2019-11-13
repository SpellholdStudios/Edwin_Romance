//And yes, they're chains, but I'm not going start to fuss over it.
//Imoen doesn't have a B file, so these have to be added to IMOEN2J file.
//I'll propably have to adjust Imoen's script to get these to work.

EXTEND_BOTTOM IMOEN2J 16
IF ~Global("EdwinRomanceActive","GLOBAL",2) GlobalGT("EdwinVampire","GLOBAL",0)~ SOLVED_JOURNAL #7243 + CommentEdwin2
END

APPEND IMOEN2J
IF ~GlobalGT("EdwinVampire","GLOBAL",0)
    See(Player1)
    Global("CommentEdvamp","LOCALS",0)~ CommentEdwin
  SAY @15 = @16
  IF ~~ DO ~SetGlobal("CommentEdvamp","LOCALS",1)~ EXIT
END

IF ~~ CommentEdwin2
  SAY @17
  ++ @18 + CommentEdwin3
  ++ @19 + CommentEdwin3
  ++ @20 + CommentEdwin3
  ++ @21 + CommentEdwin3
  ++ @22 + CommentEdwin3
END

IF ~~ CommentEdwin3
  SAY @23
  IF ~~ EXIT
END
END

CHAIN
IF
~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("EdwinRomanceActive","GLOBAL",2)
Global("Beddim1","LOCALS",2)~ THEN IMOEN2J Imoeddiechain1
@0
DO ~SetGlobal("Beddim1","LOCALS",3)~
== BEDWIN
@1
== IMOEN2J
@2
== BEDWIN
@3
=
@4
== IMOEN2J
@5
== BEDWIN
@6
== IMOEN2J
@7
== BEDWIN
@8
EXIT

CHAIN
IF
~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("EdwinRomanceActive","GLOBAL",2)
Global("Beddim1","LOCALS",4)~ THEN IMOEN2J Imoeddiechain2
@9
DO ~SetGlobal("Beddim1","LOCALS",5)~
== BEDWIN
@10
== IMOEN2J
@11
== BEDWIN
@12
== IMOEN2J
@13
== BEDWIN
@14
EXIT