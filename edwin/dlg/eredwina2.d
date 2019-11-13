/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : EREDWINA2                         //
//MODIFIED BEDWIN FOR EDWIN ROMANCE                    //
/////////////////////////////////////////////////////////

///Edwina vs male PC banter
/* THIS IS ADDED TO THE EDWINJ DIALOG, THE WEIGHT MEANS IT IS PROCESSED AND ACTIVATED RANDOMLY IF CERTAIN CONDITIONS ARE SPECIFIED - SEE SCRIPT FILE FOR DETAILS */
APPEND EDWINJ

IF WEIGHT #18 ~!Gender("Edwin",MALE) Global("EdwinaFlirt","GLOBAL",2) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN EDWINAFLIRT
   SAY @0
   IF ~~ THEN REPLY @1 DO ~SetGlobal("EdwinaFlirt","GLOBAL",3)~ GOTO EDWINAFLIRT2
END

IF ~~ THEN BEGIN EDWINAFLIRT2
   SAY @2
   IF ~~ THEN GOTO EDWINAFLIRT3
END

IF ~~ THEN BEGIN EDWINAFLIRT3
   SAY @3
   IF ~~ THEN GOTO EDWINAFLIRT4
END

IF ~~ THEN BEGIN EDWINAFLIRT4
   SAY @4
IF ~~ THEN REPLY @5 GOTO EDWINAFLIRT5
IF ~~ THEN REPLY @6 GOTO EDWINAFLIRT5
IF ~~ THEN REPLY @7 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @8 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @9 GOTO EDWINAFLIRT5
IF ~IsValidForPartyDialogue("Viconia")
    !IsValidForPartyDialogue("Jaheira")
    !IsValidForPartyDialogue("Aerie")
    OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ EXTERN BVICONI EdwinaViconiachain
IF ~IsValidForPartyDialogue("Jaheira")
    !IsValidForPartyDialogue("Aerie")
    OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ EXTERN BJAHEIR EdwinaJaheirachain
IF ~IsValidForPartyDialogue("Aerie")
    OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ EXTERN BAERIE EdwinaAeriechain
END

IF ~~ THEN BEGIN EDWINA_AERIE_EXIT
   SAY @10
IF ~~ THEN REPLY @5 EXTERN BAERIE AERIE_TERMINATE
IF ~~ THEN REPLY @6 EXTERN BAERIE AERIE_TERMINATE
IF ~~ THEN REPLY @7 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @8 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @9 EXTERN BAERIE AERIE_TERMINATE
END

IF ~~ THEN BEGIN EDWINA_JAHEIRA_EXIT
   SAY @11
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @5 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")~ + @5 EXTERN BJAHEIR JAHEIRA_TERMINATE
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @6 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")~ + @6 EXTERN BJAHEIR JAHEIRA_TERMINATE
IF ~~ THEN REPLY @7 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @8 GOTO EDWINAFLIRT6
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @9 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")~ + @9 EXTERN BJAHEIR JAHEIRA_TERMINATE
END
/*Yes, these look scary, just.. just don't ask.. It's a paint to have characters optionally comment to player's
  dialogue choise. Oh and they *do* work, so no complaining please. -Nebukad */
IF ~~ THEN BEGIN EDWINA_VICONIA_EXIT
   SAY @12
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @5 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Jaheira")~ + @5 EXTERN BJAHEIR JAHEIRA_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(3) Global("JaheiraRomanceActive","GLOBAL",0) Global("JaheiraRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Jaheira")~ + @5 EXTERN BVICONI VICONIA_TERMINATE
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @6 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Jaheira")~ + @6  EXTERN BJAHEIR JAHEIRA_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(3) Global("JaheiraRomanceActive","GLOBAL",0) Global("JaheiraRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Jaheira")~ + @6  EXTERN BVICONI VICONIA_TERMINATE
IF ~~ THEN REPLY @7 GOTO EDWINAFLIRT6
IF ~~ THEN REPLY @8 GOTO EDWINAFLIRT6
+ ~OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Aerie")~ + @9 EXTERN BAERIE AERIE_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Jaheira")~ + @9 EXTERN BJAHEIR JAHEIRA_TERMINATE
+ ~OR(3) Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Aerie")
   OR(3) Global("JaheiraRomanceActive","GLOBAL",0) Global("JaheiraRomanceActive","GLOBAL",3) !IsValidForPartyDialogue("Jaheira")~ + @9 EXTERN BVICONI VICONIA_TERMINATE
END

IF ~~ THEN BEGIN EDWINAFLIRT5
   SAY @13
IF ~~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT6
   SAY @14
IF ~~ THEN EXIT
END


// Second Edwina Male PC banter
// Adjusted these to set EdwinaFlirt to 5 instead of 2 as I couldn't come up with a single rational reason of setting them back to 2 - Nebukad
IF WEIGHT #19 ~!Gender("Edwin",MALE) Global("EdwinaFlirt","GLOBAL",4) See(Player1) !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN EDWINAFLIRT7
   SAY @15
IF ~~ THEN REPLY @16 DO ~SetGlobal("EdwinaFlirt","GLOBAL",5)~ GOTO EDWINAFLIRT8
IF ~~ THEN REPLY @17 DO ~SetGlobal("EdwinaFlirt","GLOBAL",5)~ GOTO EDWINAFLIRT8
IF ~~ THEN REPLY @18 DO ~SetGlobal("EdwinaFlirt","GLOBAL",5)~ GOTO EDWINAFLIRT8
IF ~~ THEN REPLY @19 DO ~SetGlobal("EdwinaFlirt","GLOBAL",5)~ GOTO EDWINAFLIRT8
END

IF ~~ THEN BEGIN EDWINAFLIRT8
   SAY @20
IF ~~ THEN REPLY @21 GOTO EDWINAFLIRT9
IF ~~ THEN REPLY @22 GOTO EDWINAFLIRT9
IF ~~ THEN REPLY @23 GOTO EDWINAFLIRT9
IF ~~ THEN REPLY @24 GOTO EDWINAFLIRT9
END

IF ~~ THEN BEGIN EDWINAFLIRT9
   SAY @25
IF ~~ THEN REPLY @26 GOTO EDWINAFLIRT10
IF ~~ THEN REPLY @27 GOTO EDWINAFLIRT11
IF ~~ THEN REPLY @28 GOTO EDWINAFLIRT12
IF ~~ THEN REPLY @29 GOTO EDWINAFLIRT13
END

IF ~~ THEN BEGIN EDWINAFLIRT10
   SAY @30
IF ~~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT11
   SAY @31
IF ~~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT12
   SAY @32
IF ~~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT13
   SAY @33
IF ~~ EXIT
END

//Third Edwina/Male PC banter, to take place after Degardan's first appearance

IF ~!Gender("Edwin",MALE) !Global("EdwinaFlirt","GLOBAL",0) Global("TalkedDegardan","GLOBAL",1) See(Player1) !StateCheck(Player1,STATE_SLEEPING) !Global("PainfullBurns","LOCALS",1) Global("Edwinahaddegdia","LOCALS",1)~ THEN BEGIN EDWINAFLIRT14
  SAY @34
IF ~~ THEN REPLY @35 GOTO EDWINAFLIRT15
IF ~~ THEN REPLY @36 GOTO EDWINAFLIRT16
IF ~~ THEN REPLY @37 GOTO EDWINAFLIRT17
+ ~OR(3) !IsValidForPartyDialogue("Aerie") Global("AerieRomanceActive","GLOBAL",0) Global("AerieRomanceActive","GLOBAL",3)
   OR(3) !IsValidForPartyDialogue("Jaheira") Global("JaheiraRomanceActive","GLOBAL",0) Global("JaheiraRomanceActive","GLOBAL",3)
   OR(3) !IsValidForPartyDialogue("Viconia") Global("ViconiaRomanceActive","GLOBAL",0) Global("ViconiaRomanceActive","GLOBAL",3)~ + @38 + EDWINAFLIRT18
+ ~!IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Aerie")
   IsValidForPartyDialogue("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ + @38
   DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN BVICONI VICONIABREAK
+ ~!IsValidForPartyDialogue("Aerie")
   IsValidForPartyDialogue("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ + @38
   DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN BJAHEIR JAHEIRABREAK
+ ~IsValidForPartyDialogue("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ + @38
   DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BAERIE AERIEBREAK
END

IF ~~ THEN BEGIN EDWINAFLIRT15
   SAY @39
IF ~~ DO ~SetGlobal("Edwinahaddegdia","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT16
   SAY @40
IF ~~ DO ~SetGlobal("Edwinahaddegdia","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT17
   SAY @41
IF ~~ DO ~SetGlobal("Edwinahaddegdia","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT18
   SAY @42
IF ~~ THEN DO ~SetGlobal("PainfullBurns","LOCALS",1)
		   ClearAllActions()
		   StartCutSceneMode()
		   StartCutScene("Edarrow")~ EXIT
END

IF ~Global("PainfullBurns","LOCALS",1)~ THEN BEGIN EDWINAFLIRT19
   SAY @43
IF ~~ THEN DO ~SetGlobal("PainfullBurns","LOCALS",2) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT20
   SAY @44
IF ~~ THEN DO ~SetGlobal("PainfullBurns","LOCALS",1)
		   ClearAllActions()
		   StartCutSceneMode()
		   StartCutScene("Edarrow")~ EXIT
END

//Fourth Edwin(a)/Male PC dialogue, to take place after Edwin is restored to normal. (Yes, I know I'm still calling them 'EdwinaFlirt - it's just to easier keep track of them.) :)

IF ~Gender("Edwin",MALE) !Global("EdwinaFlirt","GLOBAL",0) See(Player1) !StateCheck(Player1,STATE_SLEEPING) Global("Edwinahaddegdia","LOCALS",3) Global("TalkedDegardan","GLOBAL",4)~ THEN BEGIN EDWINAFLIRT21
   SAY @45
IF ~~ THEN REPLY @46 GOTO EDWINAFLIRT22
IF ~~ THEN REPLY @47 GOTO EDWINAFLIRT22
IF ~~ THEN REPLY @48 GOTO EDWINAFLIRT23
IF ~~ THEN REPLY @49 GOTO EDWINAFLIRT24
IF ~~ THEN REPLY @50 GOTO EDWINAFLIRT25
END

IF ~~ THEN BEGIN EDWINAFLIRT22
   SAY @51
IF ~~ THEN REPLY @52 GOTO EDWINAFLIRT26
IF ~~ THEN REPLY @53 GOTO EDWINAFLIRT26
IF ~~ THEN REPLY @54 GOTO EDWINAFLIRT27
END

IF ~~ THEN BEGIN EDWINAFLIRT23
   SAY @55
IF ~~ THEN DO ~SetGlobal("Edwinahaddegdia","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT24
   SAY @56
IF ~~ THEN REPLY @46 GOTO EDWINAFLIRT22
IF ~~ THEN REPLY @50 GOTO EDWINAFLIRT25
IF ~~ THEN REPLY @47 GOTO EDWINAFLIRT22
IF ~~ THEN REPLY @57 GOTO EDWINAFLIRT25
END

IF ~~ THEN BEGIN EDWINAFLIRT25
   SAY @58
IF ~~ THEN DO ~SetGlobal("Edwinahaddegdia","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT26
   SAY @59
IF ~~ THEN DO ~SetGlobal("EdwinFriend","GLOBAL",1) SetGlobal("Edwinahaddegdia","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN EDWINAFLIRT27
   SAY @60
IF ~~ THEN DO ~SetGlobal("Edwinahaddegdia","LOCALS",4)~ EXIT
END

IF ~~ EDWINA_AERIE_BRANCH
SAY @61
IF ~!IsValidForPartyDialogue("Jaheira") !IsValidForPartyDialogue("Viconia")~ + EDWINA_AERIE_EXIT
IF ~!IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Viconia")
    OR(2) Global("ViconiaRomanceActive","GLOBAL",2) Global("ViconiaRomanceActive","GLOBAL",1)~ EXTERN BVICONI EdwinaViconiachain
IF ~IsValidForPartyDialogue("Jaheira")
    OR(2) Global("JaheiraRomanceActive","GLOBAL",2) Global("JaheiraRomanceActive","GLOBAL",1)~ EXTERN BJAHEIR EdwinaJaheirachain
END

END    //END APPEND EDWINJ


/********************** CHAINS! LOVELY CHAINS! ********************************************************************/

CHAIN BAERIE EdwinaAeriechain
@62
== EDWINJ
@63
== BAERIE
@64
== EDWINJ
@65
== BAERIE
@66
END EDWINJ EDWINA_AERIE_BRANCH

CHAIN BJAHEIR EdwinaJaheirachain
@67
== EDWINJ
@68
== BJAHEIR
@69
== EDWINJ
@70
END BJAHEIR EDWINA_JAHEIRA_BRANCH

CHAIN BVICONI EdwinaViconiachain
@71
=
@72
=
@73
== EDWINJ
@74
== BVICONI
@75
END EDWINJ EDWINA_VICONIA_EXIT

APPEND BAERIE
IF ~~ AERIEBREAK
SAY @76
IF ~~ EXTERN EDWINJ EDWINAFLIRT20
IF ~IsValidForPartyDialog("Viconia")
    !IsValidForPartyDialogue("Jaheira")
    OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~
    DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN BVICONI VICONIABREAK
IF ~IsValidForPartyDialogue("Jaheira")
    OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~
    DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN BJAHEIR JAHEIRABREAK
END

IF ~~ AERIE_TERMINATE
SAY @77
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN EDWINJ EDWINAFLIRT5
IF ~OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2) !IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Viconia")~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BVICONI VICONIA_TERMINATE
IF ~OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Jaheira")~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BJAHEIR JAHEIRA_TERMINATE
END
END

APPEND BJAHEIR
IF ~~ JAHEIRABREAK
SAY @78
IF ~~ EXTERN EDWINJ EDWINAFLIRT20
IF ~IsValidForPartyDialogue("Viconia")
    OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~
    DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN BVICONI VICONIABREAK
END

IF ~~ EDWINA_JAHEIRA_BRANCH
SAY @79
IF ~~ EXTERN EDWINJ EDWINA_JAHEIRA_EXIT
IF ~IsValidForPartyDialogue("Viconia")
    OR(2) Global("ViconiaRomanceActive","GLOBAL",2) Global("ViconiaRomanceActive","GLOBAL",1)~ EXTERN BVICONI EdwinaViconiachain
END

IF ~~ JAHEIRA_TERMINATE
SAY @80
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN EDWINJ EDWINAFLIRT5
IF ~OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2) IsValidForPartyDialogue("Viconia")~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN BVICONI VICONIA_TERMINATE
END
END

APPEND BVICONI
IF ~~ VICONIABREAK
SAY @81
IF ~~ EXTERN EDWINJ EDWINAFLIRT20
END

IF ~~ VICONIA_TERMINATE
SAY @82
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN EDWINJ EDWINAFLIRT5
END
END

