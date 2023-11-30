/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : EREDWINJ                          //
//MODIFIED EDWINJ AND BEDWIN FOR EDWIN ROMANCE         //
/////////////////////////////////////////////////////////

ADD_STATE_TRIGGER EDWINJ 4
~!Global("EdwinRomanceActive","GLOBAL",1)~

SET_WEIGHT EDWINJ 0 #-3
SET_WEIGHT EDWINJ 1 #-2
SET_WEIGHT EDWINJ 4 #-1

/*
ADD_TRANS_TRIGGER EDWINJ 17 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM EDWINJ 17
IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN DO
~SetGlobal("EdwinKiss","GLOBAL",1) EraseJournalEntry(46840) SetGlobal("TalkedDegardan","GLOBAL",3) ActionOverride("degard",Enemy())~ SOLVED_JOURNAL #47742 EXIT
END
*/
ADD_TRANS_ACTION EDWINJ BEGIN 17 END BEGIN END ~SetGlobal("EdwinKiss","GLOBAL",1)~


APPEND EDWINJ

IF WEIGHT #0
~Global("EdwinRomanceActive","GLOBAL",1)
Global("EdwinRomanceNetherScroll","GLOBAL",1)
AreaCheck("AR0800")
Global("EdwinTalkedAboutScroll","GLOBAL",0)~ THEN BEGIN ERNETHER
   SAY @0
   IF ~~ THEN REPLY @1 DO ~SetGlobal("EdwinTalkedAboutScroll","GLOBAL",1)
SetGlobal("EdwinWantsScroll","GLOBAL",1)~ GOTO ERNETHER2
END

IF ~~ THEN BEGIN ERNETHER2
   SAY @2
   IF ~~ THEN REPLY @3 GOTO ERNETHERTORTURE
   IF ~~ THEN REPLY @4 GOTO ERNETHERSCROLL
   IF ~~ THEN REPLY @5 GOTO ERNETHERAPPROVE
END

IF ~~ THEN BEGIN ERNETHERAPPROVE
   SAY @6
   IF ~~ THEN DO ~SetGlobal("EdwinTalkedAboutScroll","GLOBAL",2)
SetGlobalTimer("EdwinComplainAboutScroll","GLOBAL",TWO_DAYS)~ UNSOLVED_JOURNAL #46839 /* ~Find the Nether Scroll for Edwin.

Edwin remembered a tale about something called 'the Nether Scroll', possibly hidden in one of the tombs in the Graveyard District of Athkatla.~ */ EXIT
END

IF ~~ THEN BEGIN ERNETHERTORTURE
   SAY @7
   IF ~~ THEN REPLY @8 GOTO ERNETHERTORTURE2
   IF ~~ THEN REPLY @9 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @10 GOTO ERNETHERSCROLL
END

IF ~~ THEN BEGIN ERNETHERTORTURE2
   SAY @11
   IF ~~ THEN REPLY @12 GOTO ERNETHERTORTURE3
   IF ~~ THEN REPLY @13 GOTO ERNETHERTORTURE3
   IF ~~ THEN REPLY @14 GOTO ERNETHEREVILFLIRT
   IF ~~ THEN REPLY @15 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @16 GOTO ERNETHERSCROLL
END

IF ~~ THEN BEGIN ERNETHERTORTURE3
   SAY @17
   IF ~~ THEN REPLY @18 GOTO ERNETHERTORTURE4
   IF ~~ THEN REPLY @19 GOTO ERNETHERDUMPED
END

IF ~~ THEN BEGIN ERNETHERTORTURE4
   SAY @20
   IF ~~ THEN REPLY @21 GOTO ERNETHERTORTURE5
END

IF ~~ THEN BEGIN ERNETHERTORTURE5
   SAY @22
   IF ~~ THEN REPLY @23 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @24 GOTO ERNETHERSCROLL
END

IF ~~ THEN BEGIN ERNETHERSCROLL
   SAY @25
   IF ~~ THEN REPLY @26 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @27 GOTO ERNETHERREFUSE
END

IF ~~ THEN BEGIN ERNETHERREFUSE
   SAY @28
   IF ~~ THEN REPLY @29 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @30 GOTO ERNETHERDUMPED
END

IF ~~ THEN BEGIN ERNETHERDUMPED
   SAY @31
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ERNETHEREVILFLIRT
   SAY @32
   IF ~~ THEN REPLY @33 GOTO ERNETHERSCROLL
   IF ~~ THEN REPLY @34 GOTO ERNETHERAPPROVE
   IF ~~ THEN REPLY @35 GOTO ERNETHERREFUSE
END

END


REPLACE_ACTION_TEXT_REGEXP EDWINJ ~SetGlobalTimer("EdwinScroll","GLOBAL",\(FOUR\|TWO\)_DAYS)~ ~SetGlobalTimer("EdwinScroll","GLOBAL",2000)~ 
REPLACE_ACTION_TEXT_REGEXP EDWINJ ~SetGlobalTimer("EdwinScroll","GLOBAL",ONE_DAY)~ ~SetGlobalTimer("EdwinScroll","GLOBAL",3000)~ 

REPLACE_ACTION_TEXT_REGEXP EDWINJ ~ForceSpell(Myself,EDWIN_CHANGE)~ ~ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)~ 


ADD_TRANS_ACTION EDWINJ BEGIN 7 END BEGIN END ~GiveItemCreate("scrlnet",Myself,0,0,0)~ 
ADD_TRANS_ACTION EDWINJ BEGIN 8 END BEGIN END ~GiveItemCreate("scrlnet",Myself,0,0,0)~
ADD_TRANS_ACTION EDWINJ BEGIN 12 END BEGIN END ~TakePartyItem("scrlnet") DestroyItem("scrlnet")~
ADD_TRANS_ACTION EDWINJ BEGIN 13 END BEGIN END ~TakePartyItem("scrlnet") DestroyItem("scrlnet")~
ADD_TRANS_ACTION EDWINJ BEGIN 14 END BEGIN END ~TakePartyItem("scrlnet") DestroyItem("scrlnet")~

/* other transactions moved to edwin.baf */


/*
REPLACE EDWINJ

IF ~~ THEN BEGIN 7
  SAY #6518
  IF ~~ THEN DO ~SetGlobalTimer("EdwinScroll","GLOBAL",2000)
GiveItemCreate("scrlnet",Myself,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #6519
  IF ~~ THEN DO ~SetGlobalTimer("EdwinScroll","GLOBAL",2000)
GiveItemCreate("scrlnet",Myself,0,0,0)~ EXIT
END

IF WEIGHT #5 ~GlobalTimerExpired("EdwinScroll","GLOBAL")
Global("ScrollStudy","LOCALS",1)
!AreaType(DUNGEON)
CombatCounter(0)~ THEN BEGIN 9
  SAY #6879
  IF ~~ THEN DO ~SetGlobal("ScrollStudy","LOCALS",2)
SetGlobalTimer("EdwinScroll","GLOBAL",3000)
AddXPObject("Edwin",50000)
ApplySpell(Myself,NETHER_SCROLL)~ GOTO 22
END

IF ~~ THEN BEGIN 12
  SAY #6894
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinFlirt","GLOBAL",TWO_DAYS)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobal("EdwinRomanceNetherScroll", "GLOBAL", 2)
RealSetGlobalTimer("EdwinRomance","GLOBAL",2800)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #6902
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinFlirt","GLOBAL",TWO_DAYS)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobal("EdwinRomanceNetherScroll", "GLOBAL", 2)
RealSetGlobalTimer("EdwinRomance","GLOBAL",2800)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #6903
  IF ~~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
SetGlobalTimer("EdwinFlirt","GLOBAL",TWO_DAYS)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("AfterChange","LOCALS",1)
RealSetGlobalTimer("EdwinRomance","GLOBAL",2800)
SetGlobal("EdwinRomanceNetherScroll", "GLOBAL", 2)
SetGlobalTimer("EdwinComplain","GLOBAL",5)
MakeUnselectable(5000)
TakePartyItem("scrlnet")
DestroyItem("scrlnet")
ForceSpell(Myself,EDWIN_CHANGE)
Wait(1)
ChangeGender(Myself,FEMALE)
Polymorph(MAGE_FEMALE_HUMAN)
Wait(3)
~ EXIT
END

END   // END REPLACE EDWINJ
*/

APPEND EDWINJ

IF WEIGHT #1 ~!Dead("Nevaziah") Global("EdwinRomanceWarning", "GLOBAL", 1) Global("EdwinRomanceNetherScroll", "GLOBAL", 1) Global("EdwinMatch","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",3)~ THEN BEGIN EDWIN_NSCROLL1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO EDWIN_NSCROLL2
  IF ~~ THEN REPLY @38 GOTO EDWIN_NSCROLL2
  IF ~~ THEN REPLY @39 GOTO EDWIN_NSCROLL3
END

IF ~~ THEN BEGIN EDWIN_NSCROLL2
  SAY @40
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceWarning", "GLOBAL", 2) RealSetGlobalTimer("EdwinWantsToBeFeminine","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN BEGIN EDWIN_NSCROLL3
  SAY @41
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #2 ~!Dead("Nevaziah") Global("EdwinRomanceWarning", "GLOBAL", 2) Global("EdwinRomanceNetherScroll", "GLOBAL", 1) Global("EdwinMatch","GLOBAL",1) !Global("EdwinRomanceActive","GLOBAL",3)~ THEN BEGIN EDWIN_NSCROLL4
  SAY @42
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NOWAY
  SAY @43
  IF ~~ THEN REPLY @44 GOTO NOWAY1
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @45 GOTO NOWAY2
  IF ~~ THEN REPLY @46 GOTO NOWAY3
END

IF ~~ THEN BEGIN NOWAY1
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NOWAY2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO NOWAY1
  IF ~~ THEN REPLY @46 GOTO NOWAY3
END

IF ~~ THEN BEGIN NOWAY3
  SAY @50
  IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

END // END APPEND EDWINJ

ADD_TRANS_TRIGGER DEGARD 0 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM DEGARD 0
IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7428 /* ~Sorry, we have no time to speak with you at the moment.~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",1)
SetGlobalTimer("DegardanSpawn","GLOBAL",TWO_DAYS) SetGlobal("EdwinRomanceDegardan","GLOBAL",2)~ GOTO 1
IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7429 /* ~What is it that you wish to know?~ */ DO ~SetGlobal("TalkedDegardan","GLOBAL",1)
SetGlobalTimer("DegardanSpawn","GLOBAL",TWO_DAYS) SetGlobal("EdwinRomanceDegardan","GLOBAL",2)~ GOTO 3
END

ADD_TRANS_TRIGGER DEGARD 1 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM DEGARD 1 IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7433 GOTO 3
END

ADD_TRANS_TRIGGER DEGARD 3 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM DEGARD 3
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7438 /* ~Why exactly are you seeking Edwin?~ */ GOTO 11
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7439 /* ~Sorry, I have no idea who this Edwin is, or where he might be.~ */ GOTO 4
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7440 /* ~See that woman over there? That's your man, though he is now a she through the effects of a curse. ~ */ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN ~EDWINJ~ 176
END

ADD_TRANS_TRIGGER DEGARD 4 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM DEGARD 4
IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7446 DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN ~EDWINJ~ 176
IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7447 DO ~EscapeArea()~ EXIT
END

ADD_TRANS_TRIGGER DEGARD 5 ~!Global("EdwinRomanceActive","GLOBAL",1)~
EXTEND_BOTTOM DEGARD 5
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7449 DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)~ EXTERN ~EDWINJ~ 176
  IF ~Global("EdwinRomanceActive","GLOBAL",1)~ THEN REPLY #7451 UNSOLVED_JOURNAL #46840 GOTO 4
END



REPLACE_ACTION_TEXT_REGEXP DEGARD ~ForceSpell("[^)]+",EDWIN_CHANGE_BACK)~ ~ForceSpell("edwin",EDWIN_CHANGE_BACK)
Wait(1)
ChangeGender("edwin",MALE)
ActionOverride("edwin",Polymorph(MAGE_MALE_HUMAN))~ 

/*
REPLACE DEGARD

IF ~~ THEN BEGIN 9
  SAY #7464
  IF ~~ THEN DO ~
ForceSpell("edwin",EDWIN_CHANGE_BACK)
Wait(1)
ChangeGender("edwin",MALE)
ActionOverride("edwin",Polymorph(MAGE_MALE_HUMAN))
Wait(1)
SetGlobal("TalkedDegardan","GLOBAL",2)~ EXIT
END

END /* END REPLACE DEGARD */
*/


EXTEND_BOTTOM ARAN 43
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #43067 + 47
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #43067 EXTERN ~EDWINJ~ NOWAY
END

A_T_T ARAN 43 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 1


EXTEND_BOTTOM ARAN 45
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #43076 + 47
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #43076 EXTERN ~EDWINJ~ NOWAY
END

A_T_T ARAN 45 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 0


EXTEND_BOTTOM ARAN 48
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #43083 + 47
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #43083 EXTERN ~EDWINJ~ NOWAY
END

A_T_T ARAN 48 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 1


EXTEND_BOTTOM BODHI 109
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #42901 + 112
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #42901 EXTERN ~EDWINJ~ NOWAY
END

A_T_T BODHI 109 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 1

EXTEND_BOTTOM BODHI 110
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #42904 + 112
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #42904 EXTERN ~EDWINJ~ NOWAY
END

A_T_T BODHI 110 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 0

EXTEND_BOTTOM BODHI 113
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) OR(2) !GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) Global("BancoDead", "GLOBAL", 1)~ + #42910 + 112
  + ~Global("EdwinRomanceActive", "GLOBAL", 2) GlobalGT("EdwinDekkieLetter", "GLOBAL", 0) !Global("BancoDead", "GLOBAL", 1)~ + #42910 EXTERN ~EDWINJ~ NOWAY
END

A_T_T BODHI 113 ~!Global("EdwinRomanceActive", "GLOBAL", 2)~ DO 1


 /*
REPLACE ARAN

IF ~~ THEN BEGIN 43
  SAY #43064
  IF ~~ THEN REPLY #43066 GOTO 44
  IF ~~ THEN REPLY #43068 GOTO 46
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #43067 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #43067 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #43067 EXTERN ~EDWINJ~ NOWAY
END

IF ~~ THEN BEGIN 45
  SAY #43075
  IF ~~ THEN REPLY #43077 GOTO 46
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #43076 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #43076 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #43076 EXTERN ~EDWINJ~ NOWAY
END

IF ~Global("AranJob","GLOBAL",3) Global("LassalVampires","GLOBAL",3) Global("spokeTrip","LOCALS",1) !Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN BEGIN 48
  SAY #43081
  IF ~~ THEN REPLY #43082 GOTO 46
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #43083 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #43083 GOTO 47
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #43083 EXTERN ~EDWINJ~ NOWAY
END

END  /* END REPLACE ARAN */       */
/*
REPLACE BODHI

IF ~~ THEN BEGIN 109
  SAY #42899
  IF ~~ THEN REPLY #42900 GOTO 110
  IF ~~ THEN REPLY #42902 GOTO 111
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #42901 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #42901 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #42901 EXTERN ~EDWINJ~ NOWAY
END

IF ~~ THEN BEGIN 110
  SAY #42903
  IF ~~ THEN REPLY #42905 GOTO 111
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #42904 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #42904 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #42904 EXTERN ~EDWINJ~ NOWAY
END

IF ~Global("BodhiNotReady","GLOBAL",1)~ THEN BEGIN 113
  SAY #42908
  IF ~~ THEN REPLY #42909 GOTO 111
  IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY #42910 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) Global("BancoDead","GLOBAL",1)~ THEN REPLY #42910 GOTO 112
  IF ~Global("EdwinRomanceActive","GLOBAL",2) !Global("BancoDead","GLOBAL",1)~ THEN REPLY #42910 EXTERN ~EDWINJ~ NOWAY
END

END */ /* END REPLACE BODHI */
