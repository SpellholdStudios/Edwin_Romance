/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : DEKARAS, DEKARAS2                           //
//NEW DIALOG FROM SCRATCH FOR EDWIN ROMANCE            //
/////////////////////////////////////////////////////////

BEGIN ~DEKARAS~

IF ~~ THEN BEGIN DEKKIE1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO DEKKIE2
END

IF ~~ THEN BEGIN DEKKIE2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO DEKKIE3
END

IF ~~ THEN BEGIN DEKKIE3
  SAY @4
  IF ~~ THEN GOTO DEKKIE4
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN BHAERDA HAER_DEKKIE1
END

IF ~~ THEN BEGIN DEKKIE4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO DEKKIE_ADVICE
  IF ~~ THEN REPLY @7 GOTO DEKKIE_ADVICE
  IF ~~ THEN REPLY @8 GOTO DEKKIE_ADVICE
  IF ~~ THEN REPLY @9 GOTO DEKKIE_COURAGE
  IF ~~ THEN REPLY @10 GOTO DEKKIE_LIE1
  IF ~~ THEN REPLY @11 GOTO DEKKIE_COURAGE
END

IF ~~ THEN BEGIN DEKKIE_COURAGE
  SAY @12
=
  @13
=
  @14
=
  @15
  IF ~~ THEN GOTO DEKKIE_ADVICE
END

IF ~~ THEN BEGIN DEKKIE_LIE1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO DEKKIE_LIE2
END

IF ~~ THEN BEGIN DEKKIE_LIE2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO DEKKIE_LIE3
END

IF ~~ THEN BEGIN DEKKIE_LIE3
  SAY @20
  IF ~~ THEN GOTO DEKKIE_ADVICE
END

IF ~~ THEN BEGIN DEKKIE_ADVICE
  SAY @21
  =
    @22
  IF ~~ THEN EXTERN BEDWIN EDWIN_DEKKIE1
END

IF ~~ THEN BEGIN DEKKIE5
 SAY @23
 IF ~~ THEN REPLY @24 EXTERN BEDWIN EDWIN_DEKKIE2
END

IF ~~ THEN BEGIN DEKKIE6
  SAY @25
  IF ~~ THEN REPLY @26 GOTO EDDIE_LOVE1
  IF ~~ THEN REPLY @27 GOTO EDDIE_LOVE1
  IF ~~ THEN REPLY @28 GOTO EDDIE_FRIEND
  IF ~~ THEN REPLY @29 GOTO EDDIE_END
END

IF ~~ THEN BEGIN EDDIE_LOVE1
  SAY @30
  IF ~~ THEN EXTERN BEDWIN EDWIN_DEKKIE3
END

IF ~~ THEN BEGIN EDDIE_LOVE2
  SAY @31
  IF ~~ THEN DO ~
  SetGlobalTimer("MeetingWithDekaras","GLOBAL",ONE_DAY)
  SetGlobal("DekkieLetter","GLOBAL",3)
  EscapeArea()~
  UNSOLVED_JOURNAL @10000
  EXIT
END

IF ~~ THEN BEGIN EDDIE_FRIEND
  SAY @33
  IF ~~ THEN REPLY @34 EXTERN BEDWIN EDWIN_DEKKIE4
END

IF ~~ THEN BEGIN EDDIE_END
  SAY @35
  IF ~~ THEN EXTERN BEDWIN EDWIN_DEKKIE5
END

IF ~~ THEN BEGIN EDDIE_LEAVE
  SAY @36
  IF ~~ THEN DO ~
	EraseJournalEntry(@10000)
	EraseJournalEntry(@10002)
	EraseJournalEntry(@10004)
  EscapeArea()~
  SOLVED_JOURNAL @10001
  EXIT
END


// END OF THE FIRST DIALOG

BEGIN DEKARAS1

IF ~~ THEN BEGIN DEKKIE7
  SAY @38
  IF ~~ THEN REPLY @39 GOTO DEKKIE_NEUTRAL
  IF ~~ THEN REPLY @40 GOTO DEKKIE_GOOD
  IF ~~ THEN REPLY @41 GOTO DEKKIE_EVIL
END

IF ~~ THEN BEGIN DEKKIE_NEUTRAL
  SAY @42
  IF ~~ THEN GOTO DekkieEddieChain4
END

IF ~~ THEN BEGIN DEKKIE_GOOD
  SAY @43
  IF ~~ THEN GOTO DekkieEddieChain4
END

IF ~~ THEN BEGIN DEKKIE_EVIL
  SAY @44
  IF ~~ THEN GOTO DekkieEddieChain4
END

IF ~~ THEN BEGIN DEKKIE8
  SAY @45
  IF ~~ THEN REPLY @46 GOTO DEKKIE9
END

IF ~~ THEN BEGIN DEKKIE9   // MADE A NEW STATE DEKKIE9 YOU CAN ONLY USE 'MULTISAY' IF THE NPC IS SPEAKING WITHOUT INTERRUPTION
  SAY @47
  IF ~~ THEN REPLY @48 GOTO DekkieEddieChain5
  IF ~~ THEN REPLY @49 GOTO DekkieEddieChain5
  IF ~~ THEN REPLY @50 GOTO DekkieEddieChain5
  IF ~~ THEN REPLY @51 GOTO DEKKIE_FAIR1
  IF ~~ THEN REPLY @52 GOTO DEKKIE_PRESENT1
END

IF ~~ THEN BEGIN DEKKIE_FAIR1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO DEKKIE_FAIR2
END

IF ~~ THEN BEGIN DEKKIE_FAIR2
  SAY @55
  IF ~~ THEN GOTO DekkieEddieChain5
END

IF ~~ THEN BEGIN DEKKIE_PRESENT1
  SAY @56
  IF ~~ THEN REPLY @57 GOTO DEKKIE_PRESENT2
END

IF ~~ THEN BEGIN DEKKIE_PRESENT2
  SAY @58
  IF ~~ THEN GOTO DekkieEddieChain5
END

IF ~~ THEN BEGIN DEKKIE10
  SAY @59
  IF ~~ THEN REPLY @60 GOTO DEKKIE11
END

IF ~~ THEN BEGIN DEKKIE11
  SAY @61
=
  @62
  IF ~~ THEN REPLY @63 GOTO DekkieEddieChain6
  IF ~~ THEN REPLY @64 GOTO DekkieEddieChain6
  IF ~~ THEN REPLY @65 GOTO DekkieEddieChain6
END

IF ~~ THEN BEGIN DEKKIE12
  SAY @66
  IF ~~ THEN REPLY @67 GOTO DekkieEddieChain7
END

IF ~~ THEN BEGIN DEKKIE13
  SAY @68
  IF ~~ THEN REPLY @69 GOTO DekkieEddieChain8
  IF ~~ THEN REPLY @70 GOTO DekkieEddieChain8
  IF ~~ THEN REPLY @71 GOTO DekkieEddieChain8
  IF ~CheckStatGT(Player1,16,INT)~ THEN REPLY @72 GOTO DEKKIE14
END

IF ~~ THEN BEGIN DEKKIE14
  SAY @73
  IF ~~ THEN GOTO DekkieEddieChain8
END

IF ~~ DEKKIE15A
  SAY @74
++ @75 + DekkieEddieChain8a
END

IF ~~ THEN BEGIN DEKKIE15
  SAY @76
  IF ~~ THEN DO ~SetGlobalTimer("LichQuest","GLOBAL",ONE_DAY) SetGlobal("EdwinLichQuest","GLOBAL",1) EscapeArea()~ UNSOLVED_JOURNAL @10004
  EXIT
END  //END OF THE SECOND DIALOG


BEGIN ~DEKARAS2~

IF ~NumTimesTalkedToGT(0)
    Global("BancoDead","GLOBAL",0)~ DEKKIEWAIT
  SAY @78
++ @79 DO ~SetGlobal("EdwinLichQuest","GLOBAL",2)
   		  ClearAllActions()
   		  StartCutSceneMode()
   		  StartCutScene("dektel1")~ EXIT
++ @80 EXIT
END

IF ~IsValidForPartyDialog("Edwin") See("Edwin") Global("EdwinLichQuest","GLOBAL",1)~ THEN BEGIN DEKKIE16
   SAY @81
   IF ~~ THEN DO ~GiveItemCreate("telering",Player1,0,0,0)~ GOTO DEKKIE16A
END

IF ~~ THEN BEGIN DEKKIE16A
   SAY @82
IF ~~ THEN GOTO DEKKIE16B
END

IF ~~ THEN BEGIN DEKKIE16B
   SAY @83
   IF ~~ DO ~SetGlobalTimer("Eddiedekkiedelaymad","GLOBAL",ONE_DAY)~ EXIT
END


BEGIN ~DEKARAS3~

IF ~Global("DekkieHasPhylactery","GLOBAL",2) See(Player1)~ THEN BEGIN DEKKIE17
   SAY @84
   IF ~~ THEN DO ~
   SetGlobal("DekkieHasPhylactery","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("lichpuff")~
   EXIT
END

IF ~~ THEN BEGIN DEKKIE18
  SAY @85
  IF ~~ THEN REPLY @86 GOTO DEKKIE19
END

IF ~~ THEN BEGIN DEKKIE19
  SAY @87
  IF ~~ THEN REPLY @88 GOTO DekkieEddieChain10
  IF ~~ THEN REPLY @89 GOTO DekkieEddieChain10
  IF ~~ THEN REPLY @90 GOTO DekkieEddieChain10
END

IF ~~ THEN BEGIN DEKKIE20
  SAY @91
	=
	@92
	++ @93 DO ~GiveItemCreate("Telring2",Player1,1,1,0) TakePartyItem("telering")~ + DEKKIE21
END

IF ~~ DEKKIE21
  SAY @94
  IF ~~ THEN DO ~
	EraseJournalEntry(@10000)
	EraseJournalEntry(@10002)
	EraseJournalEntry(@10004)
	SetGlobal("DekkieBye","GLOBAL",1)~
  SOLVED_JOURNAL @10005
  EXIT
END

IF ~InPartyAllowDead("Edwin") Dead("Edwin") Global("BancoDead","GLOBAL",1)~ THEN BEGIN EDWIN_DEAD // Changed this - Eddie should be in party and 'dead'
  SAY @96
  IF ~~ THEN DO ~
  SetGlobal("EdwinDead","Global",1)
  ClearAllActions()
  StartCutSceneMode()
  StartCutScene("edwinres")~ EXIT
END

//If player attacks Edwin or Dekaras during the Lich Battle
IF ~Global("Dekattpc","GLOBAL",1)~ BETRAYAL1
  SAY @97
IF ~~ DO ~SetGlobal("Dekattpc","GLOBAL",2)
	    ClearAllActions()
	    Enemy()
	    ActionOverride("Edwin",ClearAllActions())
	    ActionOverride("Edwin",LeaveParty())
	    ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
	    ActionOverride("Edwin",Enemy())
	    GiveItemCreate("Imoenhp1","Edwin",1,1,0)
	    ActionOverride("Edwin",FillSlot(SLOT_BELT))~  EXIT
END

IF ~Global("Edwattpc","GLOBAL",1)~ BETRAYAL2
  SAY @98
IF ~~ DO ~SetGlobal("Edwattpc","GLOBAL",2)
	    ClearAllActions()
	    Enemy()
	    ActionOverride("Edwin",ClearAllActions())
	    ActionOverride("Edwin",LeaveParty())
	    ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
	    ActionOverride("Edwin",Enemy())
	    GiveItemCreate("Imoenhp1","Edwin",1,1,0)
	    ActionOverride("Edwin",FillSlot(SLOT_BELT))~ EXIT
END

IF ~OR(2) Global("Dekattpc","GLOBAL",2) Global("Edwattpc","GLOBAL",2)
    HPLT("Dekaras3",20)~ DEKARASLOWHP1
  SAY @99
IF ~~ DO ~SetGlobal("Dekattpc","GLOBAL",3) SetGlobal("Edwattpc","GLOBAL",3)~ EXTERN BEDWIN EDWINLOWHP1
END

IF ~OR(2) Global("Dekattpc","GLOBAL",2) Global("Edwattpc","GLOBAL",2)
    HPLT("Edwin",20)~ DEKARASLOWHP2
  SAY @100
IF ~~ DO ~SetGlobal("Dekattpc","GLOBAL",3) SetGlobal("Edwattpc","GLOBAL",3)~ EXTERN BEDWIN EDWINLOWHP2
END       // END OF THE THIRD DIALOG




/*---------------CHAINS MORE CHAINS !!! -------------------*/

CHAIN IF ~Global("DekkieMeetsEdwin1","LOCALS",0)~ THEN
DEKARAS DekkieEddieChain1
  @101
  DO ~SetGlobal("DekkieMeetsEdwin1","LOCALS",1)~
== BEDWIN
  @102
== DEKARAS
  @103
== BEDWIN
  @104
== DEKARAS
  @105
=
  @106
== BEDWIN
  @107
== DEKARAS
  @108
  =
  @109
== BEDWIN
  @110
END DEKARAS DEKKIE1

CHAIN DEKARAS DekkieEddieChain2
  @111
=
  @112
=
  @113
=
  @114
== BEDWIN
  @115
== DEKARAS
  @116
=
  @117
=
  @118
== BEDWIN
  @119
== DEKARAS
  @120
=
  @121
== BEDWIN
  @122
END DEKARAS DEKKIE6

CHAIN IF ~Global("DekkieMeetsEdwin2","LOCALS",0)~ THEN
DEKARAS1 DekkieEddieChain3
  @123
  DO ~SetGlobal("DekkieMeetsEdwin2","LOCALS",1)~
== BEDWIN
  @124
== DEKARAS1
  @125
END DEKARAS1 DEKKIE7

CHAIN DEKARAS1 DekkieEddieChain4
  @126
=
  @127
== BEDWIN
  @128
== DEKARAS1
  @129
=
  @130
== BEDWIN
  @131
END DEKARAS1 DEKKIE8

CHAIN DEKARAS1 DekkieEddieChain5
  @132
== BEDWIN
  @133
END DEKARAS1 DEKKIE10

CHAIN DEKARAS1 DekkieEddieChain6
@134
== BEDWIN
@135
END DEKARAS1 DEKKIE12

CHAIN DEKARAS1 DekkieEddieChain7
@136
== BEDWIN
@137
END DEKARAS1 DEKKIE13

CHAIN DEKARAS1 DekkieEddieChain8
@138
== BEDWIN
@139
== DEKARAS1
@140
END DEKARAS1 DEKKIE15A

CHAIN DEKARAS1 DekkieEddieChain8a
@141
=
@142
== BEDWIN
@143
== DEKARAS1
@144
END DEKARAS1 DEKKIE15

CHAIN IF ~InParty("Edwin") /*See("Edwin")*/ Global("BancoDead","GLOBAL",1) Global("DekkieBye","GLOBAL",0)~ THEN
DEKARAS3 DekkieEddieChain9
@145
== BEDWIN
@146
== DEKARAS3 // == DEKARAS2
@147
== BEDWIN
@148
== DEKARAS3
@149
=
@150
== BEDWIN
@151
== DEKARAS3
@152
== BEDWIN
@153
END DEKARAS3 DEKKIE18

CHAIN DEKARAS3 DekkieEddieChain10
@154
=
@155
== BEDWIN
@156
== DEKARAS3
@157
END DEKARAS3 DEKKIE20

CHAIN IF ~Global("EdwinDead","Global",1)~ THEN
BEDWIN EddieWasDead
@158 DO ~SetGlobal("EdwinDead","GLOBAL",2)~
== DEKARAS3
@159
END DEKARAS3 DekkieEddieChain9



 /*------------------------------------------------------------*/

APPEND BHAERDA
IF ~~ THEN BEGIN HAER_DEKKIE1
  SAY @160
  IF ~~ THEN EXTERN DEKARAS DEKKIE4
END
END

/*------------------------------------------------------------*/

APPEND BEDWIN
IF ~~ THEN BEGIN EDWIN_DEKKIE1
  SAY @161
  IF ~~ THEN EXTERN DEKARAS DEKKIE5
END

IF ~~ THEN BEGIN EDWIN_DEKKIE2
  SAY@162
  IF ~~ THEN EXTERN DEKARAS DekkieEddieChain2
END

IF ~~ THEN BEGIN EDWIN_DEKKIE3
  SAY @163
  IF ~~ THEN EXTERN DEKARAS EDDIE_LOVE2
END

IF ~~ THEN BEGIN EDWIN_DEKKIE4
  SAY @164
  IF ~~ THEN DO ~
  SetGlobal("EdwinRomanceActive","GLOBAL",3)
  GivePartyAllEquipment()
  LeaveParty()
  EscapeArea()~ EXTERN DEKARAS EDDIE_LEAVE
END

IF ~~ THEN BEGIN EDWIN_DEKKIE5
  SAY @165
  IF ~~ THEN DO ~
  SetGlobal("EdwinRomanceActive","GLOBAL",3)
  GivePartyAllEquipment()
  LeaveParty()
  EscapeArea()~ EXTERN DEKARAS EDDIE_LEAVE
END
END

APPEND EDWINJ
IF ~Global("Edwinmentionedthesmell","LOCALS",0)
    Global("EdwinRomanceActive","GLOBAL",2)
    Range("erfish1",30)~ Thestinkingfishes
  SAY @166
  IF ~~ DO ~SetGlobal("Edwinmentionedthesmell","LOCALS",1)~ EXIT
END

IF ~GlobalTimerExpired("Eddiedekkiedelaymad","GLOBAL")
    !Global("EdwinLichQuest","GLOBAL",2)~ Eddiemadbecauseofdelay
  SAY @167
  IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3)
	  	GivePartyAllEquipment()
	  	LeaveParty()
	  	EscapeArea()~ EXIT
END
END

APPEND BEDWIN
IF ~~ EDWINLOWHP1
  SAY @168
IF ~~ DO
	~ReallyForceSpell(Myself,DRYAD_TELEPORT)
         ActionOverride("dekaras3",ReallyForceSpell(Myself,DRYAD_TELEPORT))
	 PlaySound("EFF_M29")
	 Wait(1)
	 ActionOverride("dekaras3",DestroySelf())
	 DestroySelf()~ EXIT
END

IF ~~ EDWINLOWHP2
  SAY @169
IF ~~ DO
	~ReallyForceSpell(Myself,DRYAD_TELEPORT)
         ActionOverride("dekaras3",ReallyForceSpell(Myself,DRYAD_TELEPORT))
	 PlaySound("EFF_M29")
	 Wait(1)
	 ActionOverride("dekaras3",DestroySelf())
	 DestroySelf()~  EXIT
END

END
