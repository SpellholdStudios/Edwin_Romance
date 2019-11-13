//The Abduction File

BEGIN VAMPEDD //This is just to make sure that the CHAIN works.

APPEND Player1
IF ~Global("CleanseVampire","AR1401",1)~ Altar1
SAY @0
IF ~!PartyHasItem("edhair")~ + Altar2b
IF ~PartyHasItem("edhair")~ + Altar2a
END

IF ~~ Altar2a
SAY @1
++ @2
    DO ~CreateVisualEffect("SPMETSW2",[2592.1701])
	  CreateVisualEffect("SPMETSW2",[2645.1742])
	  Wait(1)
	  CreateVisualEffect("SPFLESHS",[2565.1677])
	  Wait(1)
	  MoveGlobal("AR1401","Edwin",[2565.1677])
	  ActionOverride("Edwin",TakePartyItem("edhair"))
	  ActionOverride("Edwin",DestroyItem("edhair"))
	  SetGlobal("CleanseVampire","AR1401",2)
	  EraseJournalEntry(@20)~ EXIT
++ @3 + Altar2b
END

IF ~~ Altar2b
SAY @4
++ @5
        DO ~CreateVisualEffect("SPMETSW2",[2592.1701])
	  CreateVisualEffect("SPMETSW2",[2645.1742])
	  Wait(1)
	  CreateVisualEffect("SPFLESHS",[2565.1677])
	  Wait(1)
	  MoveGlobal("AR1401","Edwin",[2565.1677])
	  SetGlobal("CleanseVampire","AR1401",2)
	  ActionOverride(Player1,ReallyForceSpell(Player1,ONE_CON))
	  EraseJournalEntry(@20)~ EXIT
++ @6 EXIT
END
END

ADD_TRANS_TRIGGER Bodhiamb 5 ~OR(2) !InParty("Edwin") !Global("EdwinRomanceActive","GLOBAL",2)~ DO 0
ADD_TRANS_TRIGGER C6bodhi 21 ~!Global("EdwinVampire","GLOBAL",2)~ DO 0

ADD_STATE_TRIGGER Edwinp 4 ~!Global("EdwinVampire","GLOBAL",5)~

EXTEND_BOTTOM C6bodhi 21
IF ~Global("EdwinVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM Bodhiamb 5
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ + BODAMB_EDWIN1
END

EXTEND_BOTTOM C6bodhi 23
+ ~Global("EdwinVampire","GLOBAL",2)~ + @7 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @8 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @9 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @10 + C6EBODHI1B
+ ~Global("EdwinVampire","GLOBAL",2)~ + @11 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @12 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @13 + C6EBODHI1
+ ~Global("EdwinVampire","GLOBAL",2)~ + @14 + C6EBODHI1
END

APPEND Bodhiamb
IF ~~ BODAMB_EDWIN1
  SAY @15
  IF ~OR(2)
      !InPartyAllowDead("Edwin")
      Dead("Edwin")~ + 6
  IF ~InPartyAllowDead("Edwin")
      !Dead("Edwin")~ + BODAMB_EDWIN_CHAIN
END

IF ~~ BODAMB_EDWIN2
  SAY @16
  IF ~~ DO ~ClearAllActions()
		StartCutSceneMode()
		StartCutScene("Er_Edabd")~
  UNSOLVED_JOURNAL @17 EXIT
END
END

APPEND C6bodhi
IF ~~ C6EBODHI1B
  SAY @18
  IF ~~ + C6EBODHI1
END

IF ~~ C6EBODHI2
  SAY @19
  IF ~~ UNSOLVED_JOURNAL @20 + 28
END
END

APPEND EDWINP
IF ~Global("EdwinVampire","GLOBAL",5)~ EDWIN_RESTORED
  SAY @21
	=
	@22
  ++ @23 DO ~SetGlobal("EdwinVampire","GLOBAL",6)~ + EDWIN_REST1
  ++ @24 DO ~SetGlobal("EdwinVampire","GLOBAL",6)~ + EDWIN_REST1
  ++ @25 DO ~SetGlobal("EdwinVampire","GLOBAL",6)~ + EDWIN_REST1B
END

IF ~~ EDWIN_REST1
  SAY @26
	=
	@27
	=
	@28
  ++ @29 DO ~ChangeAlignment("Edwin",NEUTRAL)~ + EDWIN_REST2
  ++ @30 DO ~ChangeAlignment("Edwin",NEUTRAL)~ + EDWIN_REST2
  ++ @31 + EDWIN_REST2B
END

IF ~~ EDWIN_REST1B
  SAY @32
  ++ @33
      DO ~SetGlobal("EdwinRomance","GLOBAL",3) JoinParty()~ SOLVED_JOURNAL @34 EXIT
  ++ @35 + EDWIN_REST1C
END

IF ~~ EDWIN_REST1C
  SAY @36
  IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",689,1127,0)~ SOLVED_JOURNAL @34 EXIT
END

IF ~~ EDWIN_REST2
  SAY @37
  ++ @38 + EDWIN_REST3
  ++ @39 + EDWIN_REST3
  ++ @40 + EDWIN_NOROOM
END

IF ~~ EDWIN_REST2B
  SAY @41
  ++ @38 + EDWIN_REST3
  ++ @39 + EDWIN_REST3
  ++ @40 + EDWIN_NOROOM
END

IF ~~ EDWIN_REST3
  SAY @42
  IF ~~ DO ~JoinParty()~ SOLVED_JOURNAL @34 EXIT
END

IF ~~ EDWIN_NOROOM
  SAY @43
  IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",689,1127,0)~ SOLVED_JOURNAL @34 EXIT
END

END

CHAIN
IF ~~ THEN Bodhiamb BODAMB_EDWIN_CHAIN
@45
== EdwinJ
@46
EXTERN Bodhiamb BODAMB_EDWIN2

CHAIN
IF ~~ THEN C6bodhi C6EBODHI1
@47
=
@48
== VAMPEDD
@49
EXTERN C6Bodhi C6EBODHI2
