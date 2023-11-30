/////////////////////////////////////////////////////////
//                                                     //
//      EDWIN ROMANCE MOD : EDWIN LOVE TALK (TOB)      //
//                                                     //
/////////////////////////////////////////////////////////

//Mostly I just slightly modified Lord E's code. The only part I completely remade from scratch was the Jadda Encounter.

//EDWIN28 YES YES I SEE
//EDWIN29 ONE DAY...ONE DAY
//EDWIN30 IF I MUST
//EDWIN32 A WASTE OF MY TALENTS
//EDWIN34 VERY WELL
//EDWIN24 I AM BUSY OK ? I AM BUSY
//EDWIN23 GO BOTHER SOMEONE ELSE
//EDWIN22 WHAT IS IT NOW?
//EDWIN21 YEES!?
//EDWIN25 HAVE YOU NOTHING ELSE TO DO BUT BOTHER ME?
//EDWIN27 OH ALL RIGHT!
BEGIN er_jadda
BEGIN ERCALLDE

APPEND BEDWIN25

//Edwin Throne of Bhaal Lovetalk 1
//HOW TO CHECK FOR MELISSAN?

IF WEIGHT #-100 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",2)~ THEN BEGIN E1
	SAY @0
	IF ~~ THEN REPLY @1 GOTO E3
	IF ~~ THEN REPLY @2 GOTO E3
	IF ~~ THEN REPLY @3 GOTO E4
	IF ~~ THEN REPLY @4 GOTO E3
	IF ~~ THEN REPLY @5 GOTO E5
	IF ~~ THEN REPLY @6 GOTO E6
        IF ~IsValidForPartyDialog("Sarevok")~ THEN EXTERN Sarev25j EddieSarryChain1
END


IF ~~ THEN BEGIN E2
	SAY @7
	IF ~~ THEN REPLY @1 GOTO E3
	IF ~~ THEN REPLY @2 GOTO E3
	IF ~~ THEN REPLY @3 GOTO E4
	IF ~~ THEN REPLY @4 GOTO E3
	IF ~~ THEN REPLY @5 GOTO E5
	IF ~~ THEN REPLY @6 GOTO E6
END

IF ~~ THEN BEGIN E3
	SAY @8
=	
	@9
=	
	@10
	IF ~~ THEN REPLY @11  GOTO E7
END

IF ~~ THEN BEGIN E4
	SAY @12
	IF ~~ THEN REPLY @13 GOTO E8
END

IF ~~ THEN BEGIN E5
	SAY @14
	IF ~~ THEN REPLY @15 GOTO E10
END

IF ~~ THEN BEGIN E6
	SAY @16
	IF ~~ THEN REPLY @17 GOTO E11
	IF ~~ THEN REPLY @18 GOTO E12
END

IF ~~ THEN BEGIN E7
	SAY@19
	IF ~~ THEN EXIT

END

IF ~~ THEN BEGIN E8
	SAY @20
	IF ~~ THEN REPLY @21 GOTO E9
END

IF ~~ THEN BEGIN E9
	SAY @22
	IF ~~ THEN GOTO E3
END

IF ~~ THEN BEGIN E10
	SAY @23
	IF ~~ THEN REPLY @24 GOTO E3
	IF ~~ THEN REPLY @25 GOTO E3
END

IF ~~ THEN BEGIN E11
	SAY @26
	IF ~~ THEN REPLY @27 GOTO E3
	IF ~~ THEN REPLY @28 GOTO E3
END

IF ~~ THEN BEGIN E12
	SAY @29
	IF ~~ THEN REPLY @30 GOTO E3
	IF ~~ THEN REPLY @31 GOTO E3
END

//EDWIN TOB LOVETALK 2
//HOW TO CHECK THAT THE PARTY IS RESTING?

IF WEIGHT #-99 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",4)~ THEN BEGIN E101
	SAY @32
	IF ~!InParty("lrirenic")~ THEN REPLY @33 GOTO E102
	IF ~!InParty("lrirenic")~ THEN REPLY @34GOTO E102
	IF ~!InParty("lrirenic")~ THEN REPLY @35 GOTO E102
        IF ~InParty("lrirenic")~ THEN REPLY @33 GOTO LREDWIN
	IF ~InParty("lrirenic")~ THEN REPLY @34GOTO LREDWIN
	IF ~InParty("lrirenic")~ THEN REPLY @35 GOTO LREDWIN

END

IF ~~ THEN BEGIN E102
	SAY @36
	IF ~~ THEN REPLY @37 GOTO E103
	IF ~~ THEN REPLY @38 GOTO E103
	IF ~~ THEN REPLY @39 GOTO E103
END

IF ~~ LREDWIN
  SAY @40
  IF ~~ THEN REPLY @37 GOTO E103
  IF ~~ THEN REPLY @38 GOTO E103
  IF ~~ THEN REPLY @39 GOTO E103
END

IF ~~ THEN BEGIN E103
	SAY @41
	IF ~~ THEN REPLY @42 GOTO E104
END

IF ~~ THEN BEGIN E104
	SAY @43
	IF ~~ THEN REPLY @44 GOTO E105
END

IF ~~ THEN BEGIN E105
	SAY @45
	IF ~~ THEN REPLY @46 GOTO E106
END

IF ~~ THEN BEGIN E106
	SAY @47
	IF ~~ THEN REPLY @48 GOTO E107
	IF ~~ THEN REPLY @49 GOTO E108
	IF ~~ THEN REPLY @50 GOTO E108
	IF ~~ THEN REPLY @51GOTO E107
	IF ~~ THEN REPLY @52 GOTO E108
END

IF ~~ THEN BEGIN E107
	SAY @53
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E108
	SAY @54
	IF ~~ THEN EXIT
END

//EDWIN TOB LOVETALK 3 (THE WRAITH)

//EDWIN TOB LOVETALK 4
//How to make it immediately after the wraith battle?

IF WEIGHT #-98 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ER_Lovedone","GLOBAL",2) ~ THEN BEGIN E200
	SAY @55
	IF ~~ THEN REPLY @56 DO ~SetGlobal("ER_Lovedone","GLOBAL",3)~ GOTO E201
END

IF ~~ THEN BEGIN E201
	SAY @57
	IF ~~ THEN REPLY @58 GOTO E202
	IF ~~ THEN REPLY @59 GOTO E202
	IF ~~ THEN REPLY @60 GOTO E203
END

IF ~~ THEN BEGIN E202
	SAY @61
=
	@61
	IF ~~ THEN REPLY @62 GOTO E204
	IF ~~ THEN REPLY @63 GOTO E204
	IF ~~ THEN REPLY @64 GOTO E203
	IF ~~ THEN REPLY @65 GOTO E205
	IF ~~ THEN REPLY @66 GOTO E205
END

IF ~~ THEN BEGIN E203
	SAY @67
	IF ~~ THEN DO ~
        GivePartyAllEquipment()
	SetGlobal("EdwinRomanceActive","GLOBAL",3)
	EscapeArea()~
	EXIT
END

IF ~~ THEN BEGIN E204
	SAY @68
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E205
	SAY @69
	IF ~~ THEN REPLY @70 GOTO E206
END

IF ~~ THEN BEGIN E206
	SAY @71
	IF ~~ THEN REPLY @72 GOTO E204
	IF ~~ THEN REPLY @73 GOTO E204
	IF ~~ THEN REPLY @64 GOTO E203
	IF ~~ THEN REPLY @74 GOTO E204
	IF ~~ THEN REPLY @75 GOTO E203
END

//EDWIN TOB LOVETALK 5
//After the Sarry challenge

IF WEIGHT #-97 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",6)~ THEN BEGIN E300
	SAY @76
	IF ~~ THEN REPLY @77 GOTO E302
END

IF ~~	THEN BEGIN E302
	SAY @78
	IF ~~ THEN REPLY @79 GOTO E303
	IF ~~ THEN REPLY @80 GOTO E303
	IF ~~ THEN REPLY @81 GOTO E303
END

IF ~~ THEN BEGIN E303
	SAY @82
=
	@83
	IF ~~ THEN REPLY @84 GOTO E304
END

IF ~~	THEN BEGIN E304
	SAY @85
=
	@86
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @87 GOTO E305
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @87 GOTO E306
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @88 GOTO E307
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @88 GOTO E308
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @89 GOTO E307
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @89 GOTO E308
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @90 GOTO E305
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @90 GOTO E306
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @91  GOTO E305
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @91  GOTO E306
	IF ~~ THEN REPLY @92 GOTO E309
END

IF ~~ THEN BEGIN E305
	SAY @93
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E306
	SAY @94
	IF ~~  THEN EXIT
END

IF ~~ THEN BEGIN E307
	SAY @95
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E308
	SAY @96
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E309
	SAY @97
	IF ~~ THEN DO ~
        GivePartyAllEquipment()
	SetGlobal("EdwinRomanceActive","GLOBAL",3)
	EscapeArea()~
	EXIT
END

//EDWIN TOB LOVETALK 6
//condition: after resting after the Saradush battle

IF WEIGHT #-96 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",8)~ THEN BEGIN E400
	SAY @98
	IF ~~ THEN REPLY @99 GOTO E402
	IF ~~ THEN REPLY @100 GOTO E401
END

IF ~~ THEN BEGIN E401
	SAY @101
        IF ~~ GOTO E402
END

IF ~~ THEN BEGIN E402
	SAY @102
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @103 GOTO E403_EDWINNEUTRAL
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @104 GOTO E403_EDWINEVIL
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @105 GOTO E403_EDWINNEUTRAL
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @105 GOTO E403_EDWINEVIL
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @106 GOTO E407_EDWINNEUTRAL
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @107 GOTO E407_EDWINEVIL
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN REPLY @108 GOTO E409
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN REPLY @109 GOTO E403_EDWINEVIL
	
END

IF ~~ THEN BEGIN E403_EDWINNEUTRAL
	SAY @110
	   =
            @111
	IF ~~ THEN REPLY @112 GOTO E404
	IF ~~ THEN REPLY @113 GOTO E404
	IF ~~ THEN REPLY @114 GOTO E405
END

IF ~~ THEN BEGIN E403_EDWINEVIL
	SAY @115
	   =
            @116
	IF ~~ THEN REPLY @112 GOTO E404
	IF ~~ THEN REPLY @113 GOTO E404
	IF ~~ THEN REPLY @114 GOTO E405
END

IF ~~ THEN BEGIN E404
	SAY @117
	IF ~~ EXIT
END

IF ~~ THEN BEGIN E405
	SAY @118
	   =
            @119
        IF ~~ GOTO E404
END

IF ~~ THEN BEGIN E407_EDWINNEUTRAL
	SAY @120
	   =
            @111
	IF ~~ THEN REPLY @112 GOTO E404
	IF ~~ THEN REPLY @113 GOTO E404
	IF ~~ THEN REPLY @114 GOTO E405
END

IF ~~ THEN BEGIN E407_EDWINEVIL
	SAY @121
	IF ~~ THEN REPLY @122 GOTO E403_EDWINEVIL
	IF ~~ THEN REPLY @123 GOTO E403_EDWINEVIL
END

IF ~~ THEN BEGIN E409
	SAY @124
	   =
            @111
	IF ~~ THEN REPLY @125 GOTO E404
	IF ~~ THEN REPLY @126 GOTO E404
	IF ~~ THEN REPLY @127 GOTO E410
END

IF ~~ THEN BEGIN E410
	SAY @128
        IF ~~ GOTO E404
END

//EDWIN TOB LOVETALK 7

//condition:outside
//spawn: jadda

IF WEIGHT #-95 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",10)~ EJ1
  SAY @129
  IF ~~ EXTERN er_jadda JaddaEdwin1
END

IF ~~ EJ2
  SAY @130
  ++ @131 DO ~TakePartyGold(1000)~ EXTERN er_jadda JaddaEdwin2
  // A no gold option needed!
  ++ @132 + EJ3
END

IF ~~ EJ3
  SAY @133
  IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) LeaveParty() ActionOverride("ER_Jadda",EscapeArea())~ EXIT
END

IF ~~ EJ4
  SAY @134
  IF ~~ DO ~SetGlobal("JaddaSpell","GLOBAL",3) ActionOverride("ER_Jadda",EscapeArea())~ EXIT
END

//Edwin lovetalk 8
//should happen after the Yaga-Shura Solar encounter

IF WEIGHT #-94 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",12)~ THEN BEGIN E810
	SAY @135
	IF ~~ THEN REPLY @136 GOTO E820
	IF ~~ THEN REPLY @137 GOTO E820
	IF ~~ THEN REPLY @138 GOTO E820
	IF ~~ THEN REPLY @139 GOTO E820
	IF ~~ THEN REPLY @140 GOTO E820
END

IF ~~ THEN BEGIN E820
	SAY @141
	IF ~!Alignment("Edwin",MASK_EVIL)~ THEN GOTO E830
	IF ~Alignment("Edwin",MASK_EVIL)~ THEN GOTO E8110_EVIL
END

IF ~~THEN BEGIN E830
	SAY @142
	IF ~~ THEN REPLY @143 GOTO E831
END

IF ~~ THEN BEGIN E831
	SAY @144
	IF ~~ THEN REPLY @145 GOTO E840
	IF ~~ THEN REPLY @146 GOTO E840
	IF ~~ THEN REPLY @147 GOTO E840
END

IF ~~ THEN BEGIN E840
	SAY @148
	IF ~True()~ THEN GOTO E870_NEUTRAL
	IF ~IsValidForPartyDialog("Sarevok")~ THEN EXTERN SAREV25J MarryTalk_SarryChain_Neutral
        IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN25J MarryTalk_ImoenChain_Neutral
END

IF ~~ THEN BEGIN E870_NEUTRAL
	SAY@149
	IF ~~ THEN REPLY @150 GOTO E880
	IF ~~THEN REPLY @151 GOTO E880
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @152 GOTO E890
	IF ~~ THEN REPLY @153 GOTO E8100
	IF ~~ THEN REPLY @154 GOTO E8100
	IF ~~ THEN REPLY @155 GOTO E890
	IF ~~ THEN REPLY @156 GOTO E8100
END

IF ~~ THEN BEGIN E880
	SAY @157
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E890
	SAY @158
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E8100
	SAY @159
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E8110_EVIL
	SAY @160
        IF ~~ GOTO E8120_EVIL
END

IF ~~ THEN BEGIN E8120_EVIL
	SAY @161
	IF ~~ THEN REPLY @143 GOTO E8130_EVIL
END

IF ~~ THEN BEGIN E8130_EVIL
	SAY @162
	IF ~~ THEN REPLY @163 GOTO E8200_EVIL
	IF ~~ THEN REPLY @164 GOTO E8200_EVIL
	IF ~~ THEN REPLY @147 GOTO E8200_EVIL
END

IF ~~ THEN BEGIN E8200_EVIL
	SAY @165
        IF ~~ GOTO E8210_EVIL
END

IF ~~ THEN BEGIN E8210_EVIL
	SAY @166
        IF ~~ GOTO E8220_EVIL
END

IF ~~ THEN BEGIN E8220_EVIL
	SAY @167
	IF ~True()~ THEN GOTO E8300_EVIL
	IF ~ IsValidForPartyDialog("Sarevok")~ THEN EXTERN SAREV25J MarryTalk_SarryChain_Evil
        IF ~ IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN25J MarryTalk_ImoenChain_Evil
END

IF ~~ THEN BEGIN E8300_EVIL
	SAY @168
	IF ~~ THEN REPLY @150 GOTO E880
	IF ~~THEN REPLY @151 GOTO E880
	IF ~CheckStatGT(Player1,14,WIS)~ THEN REPLY @152 GOTO E890
	IF ~~ THEN REPLY @153 GOTO E8100
	IF ~~ THEN REPLY @154 GOTO E8100
	IF ~~ THEN REPLY @155 GOTO E890
	IF ~~ THEN REPLY @156 GOTO E8100
END

//EDWIN TOB LOVETALK 9
//After the final Solar encounter, the one with Melissan

IF WEIGHT #-93 ~Global("EdwinRomanceActive","GLOBAL",2) Global("ExpLoveTalk","LOCALS",14)~ THEN BEGIN E900
	SAY @169
	IF ~~ THEN GOTO E910
END

IF ~~ THEN BEGIN E910
	SAY @170
	IF ~/*!Alignment("Edwin",MASK_EVIL)*/~ THEN GOTO E920
	//IF ~Alignment("Edwin",MASK_EVIL)~ THEN GOTO E950
END

IF ~~ THEN BEGIN E920
	SAY @171
	IF ~~ THEN GOTO E922
END

IF ~~ THEN BEGIN E922
	SAY @172
	IF ~~ THEN REPLY @173 GOTO E930
	IF ~~ THEN REPLY @174 GOTO E930
	IF ~~ THEN REPLY @175 GOTO E930
	IF ~~ THEN REPLY @176 GOTO E930
END

IF ~~ THEN BEGIN E930
	SAY @177
	IF ~~ THEN REPLY @178 GOTO E940
	IF ~~ THEN REPLY @179 GOTO E940
	IF ~~ THEN REPLY @180 GOTO E940
END

/* The beauty of the transition lists... */
IF ~~ THEN BEGIN E940
	SAY @181
	+ ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           !IsValidForPartyDialogue("Jan")
           !IsValidForPartyDialogue("Jaheira")
           !IsValidForPartyDialogue("Viconia")
           !IsValidForPartyDialogue("Minsc")
           !IsValidForPartyDialogue("Korgan")~ + @182 + E942
        + ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           !IsValidForPartyDialogue("Jan")
           !IsValidForPartyDialogue("Jaheira")
           !IsValidForPartyDialogue("Viconia")
           !IsValidForPartyDialogue("Minsc")
           IsValidForPartyDialogue("Korgan")~ + @182 EXTERN KORGA25J Korgan_AWWW
        + ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           !IsValidForPartyDialogue("Jan")
           !IsValidForPartyDialogue("Jaheira")
           !IsValidForPartyDialogue("Viconia")
           IsValidForPartyDialogue("Minsc")~ + @182 EXTERN MINSC25J Minsc_AWWW
        + ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           !IsValidForPartyDialogue("Jan")
           !IsValidForPartyDialogue("Jaheira")
           IsValidForPartyDialogue("Viconia")~ + @182 EXTERN VICON25J Vico_AWWW
        + ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           !IsValidForPartyDialogue("Jan")
           IsValidForPartyDialogue("Jaheira")~ + @182 EXTERN JAHEI25J Jae_AWWW
        + ~!IsValidForPartyDialogue("Imoen2")
           !IsValidForPartyDialogue("Sarevok")
           IsValidForPartyDialogue("Jan")~ + @182 EXTERN JAN25J Jan_AWWW
        + ~!IsValidForPartyDialogue("Imoen2")
           IsValidForPartyDialogue("Sarevok")~ + @182 EXTERN SAREV25J Sarry_AWWW
        + ~IsValidForPartyDialogue("Imoen2")~ + @182 EXTERN IMOEN25J Immy_AWWW
END

IF ~~ THEN BEGIN E942
	SAY @183
	IF ~~ THEN EXIT
END
END


APPEND IMOEN25J
IF ~~ Immy_AWWW
  SAY @184
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
  IF ~IsValidForPartyDialogue("Minsc")~ EXTERN MINSC25J Minsc_AWWW
  IF ~IsValidForPartyDialogue("Viconia")~ EXTERN VICON25J Vico_AWWW
  IF ~IsValidForPartyDialogue("Jaheira")~ EXTERN JAHEI25J Jae_AWWW
  IF ~IsValidForPartyDialogue("Jan")~ EXTERN JAN25J Jan_AWWW
  IF ~IsValidForPartyDialogue("Sarevok")~ EXTERN SAREV25J Sarry_AWWW
END
END

APPEND SAREV25J
IF ~~ Sarry_AWWW
  SAY @185
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
  IF ~IsValidForPartyDialogue("Minsc")~ EXTERN MINSC25J Minsc_AWWW
  IF ~IsValidForPartyDialogue("Viconia")~ EXTERN VICON25J Vico_AWWW
  IF ~IsValidForPartyDialogue("Jaheira")~ EXTERN JAHEI25J Jae_AWWW
  IF ~IsValidForPartyDialogue("Jan")~ EXTERN JAN25J Jan_AWWW
END
END

APPEND JAN25J
IF ~~ Jan_AWWW
  SAY @186
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
  IF ~IsValidForPartyDialogue("Minsc")~ EXTERN MINSC25J Minsc_AWWW
  IF ~IsValidForPartyDialogue("Viconia")~ EXTERN VICON25J Vico_AWWW
  IF ~IsValidForPartyDialogue("Jaheira")~ EXTERN JAHEI25J Jae_AWWW
END
END

APPEND JAHEI25J
IF ~~ Jae_AWWW
  SAY @187
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
  IF ~IsValidForPartyDialogue("Minsc")~ EXTERN MINSC25J Minsc_AWWW
  IF ~IsValidForPartyDialogue("Viconia")~ EXTERN VICON25J Vico_AWWW
END
END

APPEND VICON25J
IF ~~ Vico_AWWW
  SAY @188
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
  IF ~IsValidForPartyDialogue("Minsc")~ EXTERN MINSC25J Minsc_AWWW
END
END

APPEND MINSC25J
IF ~~ Minsc_AWWW
  SAY @189
  IF ~True()~ EXTERN BEDWIN25 E942
  IF ~IsValidForPartyDialogue("Korgan")~ EXTERN KORGA25J Korgan_AWWW
END
END

APPEND KORGA25J
IF ~~ Korgan_AWWW
  SAY @190
  IF ~~ EXTERN BEDWIN25 E942
END
END

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
//Sarevok Chains

CHAIN SAREV25J EddieSarryChain1
	@191
== bedwin25
	@192
== SAREV25J
	@193
END bedwin25 E2

CHAIN SAREV25J MarryTalk_SarryChain_Neutral
	@194
== bedwin25
	@195
END bedwin25 E870_NEUTRAL

CHAIN SAREV25J MarryTalk_SarryChain_Evil
	@194
== bedwin25
	@195
END bedwin25 E8300_EVIL


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
//Imoen chains

CHAIN IMOEN25J MarryTalk_ImoenChain_Evil
	@196
== bedwin25
	@197
END IF ~!IsValidForPartyDialogue("Sarevok")~ EXTERN BEDWIN25 E870_NEUTRAL
    IF ~IsValidForPartyDialogue("Sarevok")~ EXTERN SAREV25J MarryTalk_SarryChain_Evil

CHAIN IMOEN25J MarryTalk_ImoenChain_Neutral
	@196
== bedwin25
	@197
END IF ~!IsValidForPartyDialogue("Sarevok")~ EXTERN BEDWIN25 E8300_EVIL
    IF ~IsValidForPartyDialogue("Sarevok")~ EXTERN SAREV25J MarryTalk_SarryChain_Neutral

//Jadda:

CHAIN er_jadda JaddaEdwin1
  @198
 == BEDWIN25
  @199
 == er_jadda
  @200
 == BEDWIN25
  @201
 == er_jadda
  @202
 == BEDWIN25
  @203
 == er_jadda
  @204
 == BEDWIN25
  @205
 == er_jadda
  @206
 == BEDWIN25
  @207
 == er_jadda
  @208
 == BEDWIN25
  @209
 == er_jadda
  @210
 == BEDWIN25
  @211
END + ~PartyGoldGT(999)~ + @212 DO ~TakePartyGold(1000)~ EXTERN er_jadda JaddaEdwin2
    ++ @213 EXTERN BEDWIN25 EJ2
    + ~PartyGoldGT(999)~ + @214 DO ~TakePartyGold(1000)~ EXTERN er_jadda JaddaEdwin2
    ++ @215 EXTERN BEDWIN25 EJ2
    + ~PartyGoldGT(999)~ + @216 EXTERN er_jadda NoMoneyTrue
    + ~PartyGoldLT(1000)~ + @216 EXTERN er_jadda NoMoneyFalse

CHAIN er_jadda NoMoneyTrue
  @217
 == BEDWIN25
  @218
EXTERN er_jadda JaddaEdwin2

CHAIN er_jadda NoMoneyFalse
  @219
 == BEDWIN25
  @220
END ++ @212 DO ~TakePartyGold(1000)~ EXTERN er_jadda JaddaEdwin2
    ++ @213 EXTERN BEDWIN25 EJ2
    ++ @214 DO ~TakePartyGold(1000)~ EXTERN er_jadda JaddaEdwin2
    ++ @215 EXTERN BEDWIN25 EJ2

CHAIN er_jadda JaddaEdwin2
  @221
 == BEDWIN25
  @222
 == er_jadda
  @223
END IF ~~ DO ~SetGlobal("JaddaSpell","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("er_loc3")~ EXIT

CHAIN
IF ~Global("JaddaSpell","GLOBAL",1)~
THEN er_jadda JaddaEdwin3
  @224
   DO ~SetGlobal("JaddaSpell","GLOBAL",2)~
 == BEDWIN25
  @225
 == ERCALLDE
  @226
 == BEDWIN25
  @227
 == ERCALLDE
  @228
 =
  @229
 == BEDWIN25
  @230
 == ERCALLDE
  @231
 =
  @232
 == BEDWIN25
  @233
 == ERCALLDE
  @234
 == BEDWIN25
  @235
 == ERCALLDE
  @236
 == BEDWIN25
  @237
 == ERCALLDE
  @238
 == BEDWIN25
  @239
 == ERCALLDE
  @240
 == BEDWIN25
  @241
 == ERCALLDE
  @242
 == BEDWIN25
  @243
 == ERCALLDE
  @244
END IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("er_loc4")~ EXIT

CHAIN
IF WEIGHT #-101 ~Global("JaddaSpell","GLOBAL",2)~
THEN BEDWIN25 JaddaEdwin4
  @245
 == BEDWIN25
  @246
END ++ @247 + EJ4
    ++ @248 + EJ4
    ++ @249 + EJ4


