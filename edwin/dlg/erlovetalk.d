/////////////////////////////////////////////////////////
//                                                     //
//      EDWIN ROMANCE MOD : EDWIN LOVE TALK            //
//                                                     //
/////////////////////////////////////////////////////////


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


APPEND BEDWIN

//Edwin Lovetalk 1
IF WEIGHT #-100 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",2)~ THEN BEGIN E1
	SAY @0
=
	@1
	IF ~~ THEN REPLY @2 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E2
	IF ~~ THEN REPLY @3 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E2
	IF ~~ THEN REPLY @4 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E3
	IF ~~ THEN REPLY @5 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E4
	IF ~~ THEN REPLY @6 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E4
	IF ~~ THEN REPLY @7 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E4
	IF ~~ THEN REPLY @8 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E4
END

IF ~~ THEN BEGIN E2
	SAY @9
=
	@10
=
	@11
=
	@12
	IF ~~ THEN REPLY @13 GOTO E5
	IF ~~ THEN REPLY @14 GOTO E4
	IF ~~ THEN REPLY @15 GOTO E3
END

IF ~~ THEN BEGIN E3
	SAY @16
	IF ~~ THEN DO ~IncrementGlobal("EdwinIgnore","GLOBAL",1)~
	EXIT
END

IF ~~ THEN BEGIN E4
	SAY @17
=
	@18
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E5
	SAY @19
=
	@20
	IF ~~ THEN EXIT
END

//Edwin Lovetalk 2
IF WEIGHT #-99 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",4)~ THEN BEGIN E6
	SAY @21
=
	@22
=
	@23
	IF ~~ THEN REPLY @24 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E8
	IF ~~ THEN REPLY @25 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E8
	IF ~~ THEN REPLY @26 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E8
	IF ~~ THEN REPLY @27 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E8
	IF ~~ THEN REPLY @28 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E11
      IF ~~ THEN REPLY @29 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E8
END

IF ~~ THEN BEGIN E8
	SAY@30
	IF ~~ THEN REPLY@31 GOTO E9
END

IF ~~ THEN BEGIN E9
	SAY @32
	IF ~~ THEN REPLY @33 GOTO E10
END

IF ~~ THEN BEGIN E10
	SAY @34
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E11
	SAY @35
=
 	@36
	IF ~~ THEN REPLY @37 GOTO E12
      IF ~~ THEN REPLY @38 GOTO E8
END

IF ~~ THEN BEGIN E12
	SAY @39
	IF ~~ THEN REPLY @40 GOTO E8
      IF ~~ THEN REPLY @41 GOTO E8
END

//Edwin Lovetalk 3
IF WEIGHT #-98 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",6)~ THEN BEGIN E13
	SAY @42
	IF ~~ THEN REPLY @43 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E14
	IF ~~ THEN REPLY @44 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E14
      IF ~~ THEN REPLY @45 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E14
END

IF ~~ THEN BEGIN E14
	SAY @46
	IF ~~ THEN REPLY @47 GOTO E15
	IF ~~ THEN REPLY @48 GOTO E15
	IF ~~ THEN REPLY @49 GOTO E18
END

IF ~~ THEN BEGIN E15
	SAY @50
=
	@51
=
	@52
	IF ~~ THEN REPLY @53 GOTO E16
      IF ~~ THEN REPLY @54 GOTO E16
      IF ~~ THEN REPLY @55 GOTO E16REVENGE
END	

IF ~~ THEN BEGIN E16
	SAY @56
=
		@57
=
		@58
	IF ~~ THEN REPLY @59 GOTO E17
      IF ~~ THEN REPLY @60 GOTO E17
      IF ~~ THEN REPLY @61 GOTO E17
END

IF ~~ THEN BEGIN E16REVENGE
      SAY @62
      IF ~~ THEN REPLY @63 GOTO E17
      IF ~~ THEN REPLY @64 GOTO E17
      IF ~~ THEN REPLY @65 GOTO E17
END

IF ~~ THEN BEGIN E17
	SAY @66
	IF ~~ THEN EXIT
END	

IF ~~ THEN BEGIN E18
	SAY @67
=
	@68
	IF ~~ THEN REPLY @69 GOTO E15
END

//Edwin Lovetalk 4
IF WEIGHT #-97 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",8)~ THEN BEGIN E19
          SAY @70
=
          @71
	  IF ~~ THEN REPLY @72 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E20
	  IF ~~ THEN REPLY @73 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E20
	  IF ~~ THEN REPLY @74 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E24
	  IF ~~ THEN REPLY @75 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E25
        IF ~~ THEN REPLY @76 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E20
	  IF ~
          OR(3)
          Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL)  Class(Player1,SORCERER)~
          THEN REPLY @77 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E24
END

IF ~~ THEN BEGIN E20
	SAY @78
=
	@79
	IF ~!IsValidForPartyDialog("HaerDalis")~ THEN REPLY @80 GOTO E21
	IF ~IsValidForPartyDialog("HaerDalis")~ THEN REPLY @80 EXTERN ~BHAERDA~ EDWIN_HAER1
END

IF ~~ THEN BEGIN EDWIN_HAER2
	SAY @81
	IF ~~ THEN REPLY @82 GOTO E22
        IF ~~ THEN REPLY @83 GOTO E22
END

IF ~~ THEN BEGIN E21
	SAY @84
=
	@85
	IF ~~ THEN REPLY @82 GOTO E22
      IF ~~ THEN REPLY @83 GOTO E22
END

IF ~~ THEN BEGIN E22
	SAY @86
	IF ~~ THEN REPLY @87 GOTO E23
      IF ~~ THEN REPLY @88 GOTO E23
END

IF ~~ THEN BEGIN E23
	SAY @89
=
	@90
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E24
	SAY @91
	IF ~~ THEN REPLY @92 GOTO E20
	IF ~~ THEN REPLY @93 GOTO E20
	IF ~~ THEN REPLY @94 GOTO E25
      IF ~~ THEN REPLY @95 GOTO E20
END

IF ~~ THEN BEGIN E25
	SAY @96
=
	@97
	IF ~~ THEN REPLY @98 GOTO E26
      IF ~~ THEN REPLY @99 GOTO E20
END

IF ~~ THEN BEGIN E26
	SAY @100
	IF ~~ THEN DO ~IncrementGlobal("EdwinIgnore","GLOBAL",1)~ EXIT
END

//Edwin Lovetalk 5
IF WEIGHT #-96 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",10)~ THEN BEGIN E27a
        SAY @101
        IF ~~ THEN DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E27
END

IF ~~ THEN BEGIN E27
	SAY @102 /* insert drunk Edwin sound later on */
	IF ~~ THEN REPLY @103 GOTO E28
	IF ~~ THEN REPLY @104 GOTO E28
	IF ~~ THEN REPLY @105 GOTO E32
      IF ~~ THEN REPLY @106 GOTO E28
END

IF ~~ THEN BEGIN E28
	SAY @107
	IF ~~ THEN REPLY @108 GOTO E29
      IF ~~ THEN REPLY @109 GOTO E29
END

IF ~~ THEN BEGIN E29
	SAY @110
	IF ~~ THEN REPLY @111 GOTO E30
END

IF ~~ THEN BEGIN E30
	SAY @112
	IF ~~ THEN REPLY @113 GOTO E31
      IF ~~ THEN REPLY @114 GOTO E31
      IF ~~ THEN REPLY @115 GOTO E31
END

IF ~~ THEN BEGIN E31
	SAY @116
	IF ~~ THEN REPLY @117 GOTO E31A
      IF ~~ THEN REPLY @118 GOTO E31A
END

IF ~~ THEN BEGIN E31A
	SAY @119
 	IF ~~ THEN REPLY @120 GOTO E33
	IF ~~ THEN REPLY @121 GOTO E33
	IF ~~ THEN REPLY @122 GOTO E34
	IF ~~ THEN REPLY @123 GOTO E33
END

IF ~~ THEN BEGIN E32
	SAY @124
	IF ~~ THEN REPLY @125 GOTO E34
	IF ~~ THEN REPLY @126 GOTO E28
	IF ~~ THEN REPLY @127 GOTO E28
END

IF ~~ THEN BEGIN E33
	SAY @128
	IF ~~ THEN REPLY @129 GOTO E35
END

IF ~~ THEN BEGIN E34
	SAY @130
	IF ~~ THEN DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) RestParty()~
	EXIT
END

IF ~~ THEN BEGIN E35
	SAY @131
	IF ~~ THEN REPLY @132 GOTO E36
      IF ~~ THEN REPLY @133 GOTO E36
      IF ~~ THEN REPLY @134 GOTO E36
END

IF ~~ THEN BEGIN E36
	SAY @135
	IF ~~ THEN REPLY @136 GOTO E37
END

IF ~~ THEN BEGIN E37
	SAY @137
	IF ~~ THEN REPLY @138 GOTO E38
	IF ~~ THEN REPLY @139 GOTO E38
	IF ~~ THEN REPLY @140 GOTO E34
END

IF ~~ THEN BEGIN E38
	SAY @141
	IF ~~ THEN REPLY @142 GOTO E39
      IF ~~ THEN REPLY @143 GOTO E39
END

IF ~~ THEN BEGIN E39
	SAY @144
	IF ~~ THEN REPLY @145 GOTO E40
END

IF ~~ THEN BEGIN E40
	SAY @146
	IF ~~ THEN REPLY @147 DO ~SetGlobal("EdwinHangover","GLOBAL",1)
        GiveItemCreate("POTN54",Myself,0,0,0)
        GiveItemCreate("POTN54",Myself,0,0,0)
        GiveItemCreate("EDPOTN",Myself,0,0,0)
        RestParty()~
        EXIT
END

//Edwin Lovetalk 6 continued after the cutscene
IF WEIGHT #-95 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",12)~ THEN BEGIN E41
	SAY @148
=
        @149
=
	@150
	IF ~~ THEN REPLY @151 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E42
	IF ~~ THEN REPLY @152 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E44
	IF ~~ THEN REPLY @153 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E44
	IF ~~ THEN REPLY @154 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E44
      IF ~~ THEN REPLY @155 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E44
END

IF ~~ THEN BEGIN E42
	SAY @156
	IF ~~ THEN REPLY @157 GOTO E43
      IF ~~ THEN REPLY @158 GOTO E43
      IF ~~ THEN REPLY @159 GOTO E44
END

IF ~~ THEN BEGIN E43
	SAY @160
	IF ~~ THEN REPLY @161 GOTO E44
END

IF ~~ THEN BEGIN E44
	SAY @162
	IF ~~ THEN REPLY @163 GOTO E45
      IF ~~ THEN REPLY @164 GOTO E45
      IF ~~ THEN REPLY @165 GOTO E45
END

IF ~~ THEN BEGIN E45
	SAY @166
=
	@167
	IF ~~ THEN REPLY @168 GOTO E46
      IF ~~ THEN REPLY @169 GOTO E49
      IF ~~ THEN REPLY @170 GOTO E50
END

IF ~~ THEN BEGIN E46
	SAY @171
	IF ~~ THEN REPLY @172 GOTO E47
      IF ~~ THEN REPLY @173 GOTO E47
END

IF ~~ THEN BEGIN E47
	SAY @174
=
        @175
	IF ~~ THEN REPLY @176 GOTO E48
END

IF ~~ THEN BEGIN E48
	SAY @177
	IF ~~ THEN REPLY @178  GOTO E49
	IF ~~ THEN REPLY @179 GOTO E49
	IF ~~ THEN REPLY @180 GOTO E50
END

IF ~~ THEN BEGIN E49
	SAY @181
	IF ~~ THEN REPLY @182 GOTO E51
      IF ~~ THEN REPLY @183 GOTO E52
END

IF ~~ THEN BEGIN E50
	SAY @184
	IF ~~ THEN REPLY @185 GOTO E55
      IF ~~ THEN REPLY @186 GOTO E52
END

IF ~~ THEN BEGIN E51
	SAY @187
	IF ~~ THEN REPLY @188 GOTO E52
      IF ~~ THEN REPLY @189 GOTO E52
      IF ~~ THEN REPLY @190 GOTO E57
END

IF ~~ THEN BEGIN E52
	SAY @191
	IF ~~ THEN REPLY @192 GOTO E53
END

IF ~~ THEN BEGIN E53
	SAY @193
	IF ~~ THEN REPLY @194 GOTO E54
END

IF ~~ THEN BEGIN E54
	SAY @195
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E55
	SAY @196
	IF ~~ THEN REPLY @197 GOTO E56
END

IF ~~ THEN BEGIN E56
	SAY @198
	IF ~~ THEN REPLY @199 GOTO E49
	IF ~~ THEN REPLY @200 GOTO E57
      IF ~~ THEN REPLY @201 GOTO E52
END

IF ~~ THEN BEGIN E57
	SAY @202
	IF ~~ THEN DO ~
        GivePartyAllEquipment()
	SetGlobal("EdwinRomanceActive","GLOBAL",3)
	EscapeArea()~
	EXIT
END

//Edwin Lovetalk 7
IF WEIGHT #-94 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",14)~ THEN BEGIN E58
	SAY @203
	IF ~~ THEN REPLY @204 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E60
	IF ~IsValidForPartyDialog("Anomen") Global("AnomenRomanceActive","GLOBAL",1)~ THEN DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ EXTERN BANOMEN EDWIN_ANO1
END

IF ~~ THEN BEGIN E59
       SAY @205
       IF ~~ THEN REPLY @204 GOTO E60
END

IF ~~ THEN BEGIN E60
	SAY @206
	IF ~~ THEN REPLY @207 GOTO E61
	IF ~~ THEN REPLY @208 GOTO E61
	IF ~~ THEN REPLY @209 GOTO E65
END

IF ~~ THEN BEGIN E61
	SAY @210
	IF ~~ THEN REPLY @211 GOTO E62
      IF ~~ THEN REPLY @212 GOTO E62
END

IF ~~ THEN BEGIN E62
	SAY @213
	IF ~~ THEN REPLY @214 GOTO E63
END

IF ~~ THEN BEGIN E63
	SAY @215
	IF ~~ THEN REPLY @216 GOTO E64
      IF ~~ THEN REPLY @217 GOTO E64
END

IF ~~ THEN BEGIN E64
	SAY @218
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E65
	SAY @219
	IF ~~ THEN REPLY @220 GOTO E66
      IF ~~ THEN REPLY @221 GOTO E66
END

IF ~~ THEN BEGIN E66
	SAY @222
=
	@223
	IF ~~ THEN REPLY @224 GOTO E67
      IF ~~ THEN REPLY @225 GOTO E67
      IF ~~ THEN REPLY @226 GOTO E67
END

IF ~~ THEN BEGIN E67
	SAY @227
	IF ~~ THEN EXIT
END

//Edwin Lovetalk 8
IF WEIGHT #-93 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",16)~ THEN BEGIN E68
          SAY @228
          IF ~~ THEN REPLY @229 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E69
          IF ~~ THEN REPLY @230 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E69
END

IF ~~ THEN BEGIN E69
      SAY @231
      IF ~!IsValidForPartyDialog("HaerDalis")~ THEN REPLY @232 GOTO E70
      IF ~IsValidForPartyDialog("HaerDalis")~ THEN REPLY @233 EXTERN BHAERDA EDWIN_HAER3
END

IF ~~ THEN BEGIN EDWIN_HAER4
      SAY @234
      IF ~~ THEN REPLY @232 GOTO E70
      IF ~~ THEN REPLY @235 GOTO E70
END

IF ~~ THEN BEGIN E70
        SAY @236
        IF ~~ THEN REPLY @237 GOTO E71
        IF ~~ THEN REPLY @238 GOTO E71
        IF ~~ THEN REPLY @239 GOTO E71
END

IF ~~ THEN BEGIN E71
      SAY @240
      IF ~~ THEN REPLY @241 GOTO E_SCARED1
      IF ~~ THEN REPLY @242 GOTO E_SCARED1
      IF ~~ THEN REPLY @243 GOTO E_THREAT1
      IF ~~ THEN REPLY @244 GOTO E_THREAT1
END

IF ~~ THEN BEGIN E_SCARED1
      SAY @245
      IF ~~ THEN REPLY @246 GOTO E_SCARED2
      IF ~~ THEN REPLY @247 GOTO E_SCARED2
      IF ~~ THEN REPLY @248 GOTO E_SCARED2
END

IF ~~ THEN BEGIN E_SCARED2
      SAY @249
      IF ~~ THEN REPLY @250 GOTO E_SCARED3
      IF ~~ THEN REPLY @251 GOTO E_SCARED3
END

IF ~~ THEN BEGIN E_SCARED3
      SAY @252
=
      @253
      IF ~~ THEN REPLY @254 GOTO E_SCARED4
      IF ~~ THEN REPLY @255 GOTO E72
      IF ~~ THEN REPLY @256 GOTO E72
END

IF ~~ THEN BEGIN E_SCARED4
      SAY @257
      IF ~~ THEN REPLY @258 GOTO E72
      IF ~~ THEN REPLY @259 GOTO E72
      IF ~~ THEN REPLY @260 GOTO E72
END

IF ~~ THEN BEGIN E_THREAT1
      SAY @261
      IF ~~ THEN REPLY @262 DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) LeaveParty() Enemy()~ EXIT
      IF ~~ THEN REPLY @263 GOTO E_THREAT2
END

IF ~~ THEN BEGIN E_THREAT2
      SAY @264
      IF ~~ THEN REPLY @265 GOTO E_THREAT3
END

IF ~~ THEN BEGIN E_THREAT3
      SAY @266
      IF ~~ THEN REPLY @267 GOTO E72
      IF ~~ THEN REPLY @268 GOTO E72
END

IF ~~ THEN BEGIN E72
      SAY @269
      IF ~~ THEN REPLY @270 GOTO E73
      IF ~~ THEN REPLY @271 GOTO E73
END

IF ~~ THEN BEGIN E73
   SAY @272
   IF ~~ THEN REPLY @273 GOTO E74
   IF ~~ THEN REPLY @274 GOTO E74
END

IF ~~ THEN BEGIN E74
   SAY @275
   IF ~~ THEN REPLY @276 GOTO E75
END

IF ~~ THEN BEGIN E75
   SAY @277
   IF ~~ THEN REPLY @278 GOTO E76
END

IF ~~ THEN BEGIN E76
   SAY @279
   IF ~~ THEN REPLY @280 GOTO E77
   IF ~~ THEN REPLY @281 GOTO E77
   IF ~~ THEN REPLY @282 GOTO E77
END

IF ~~ THEN BEGIN E77
   SAY @283
   IF ~~ THEN REPLY @284 GOTO E78
   IF ~~ THEN REPLY @285 GOTO E78
END

IF ~~ THEN BEGIN E78
   SAY @286
=
   @287
   IF ~~ THEN REPLY @288 GOTO E79
   IF ~~ THEN REPLY @289 GOTO E79
   IF ~~ THEN REPLY @290 GOTO E79
   IF ~~ THEN REPLY @291 GOTO E80
END

IF ~~ THEN BEGIN E79
   SAY @292
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN E80
   SAY @293
   IF ~~ THEN DO ~GivePartyAllEquipment()
SetGlobal("EdwinRomanceActive","GLOBAL",3)
EscapeArea()~ EXIT
END

//Edwin Lovetalk 9
IF WEIGHT #-92 ~Global("EdwinMatch","GLOBAL",1) Global("EdwinLoveTalk","LOCALS",18)~ THEN BEGIN E81
   SAY @294
   IF ~~ THEN REPLY @295 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E_GOOD
   IF ~~ THEN REPLY @296 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E_DIVINE
   IF ~~ THEN REPLY @297 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E_DIVINE
   IF ~~ THEN REPLY @298 DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ GOTO E_EVIL
   IF ~IsValidForPartyDialog("Anomen") Global("AnomenRomanceActive","GLOBAL",1)~ THEN DO ~IncrementGlobal("EdwinLoveTalk","LOCALS",1)
    IncrementGlobal("EdwinLoveTalkCheck","GLOBAL",1)~ EXTERN BANOMEN EDWIN_ANO2
END

IF ~~ THEN BEGIN E_ANO_DIVINE
   SAY @299
   IF ~~ THEN REPLY @295 GOTO E_GOOD
   IF ~~ THEN REPLY @296 GOTO E_DIVINE
   IF ~~ THEN REPLY @297 GOTO E_DIVINE
   IF ~~ THEN REPLY @298 GOTO E_EVIL
   IF ~~ THEN REPLY @300 GOTO E_DIVINE
END

IF ~~ THEN BEGIN E_GOOD
   SAY @301
=
   @302
   IF ~~ THEN REPLY @303 GOTO E82
END

IF ~~ THEN BEGIN E82
   SAY @304
   IF ~~ THEN REPLY @305 GOTO E83
END

IF ~~ THEN BEGIN E83
   SAY @306
=
   @307
   IF ~~ THEN REPLY @308 GOTO E_MOCKME
   IF ~~ THEN REPLY @309 GOTO E_MOCKME
END

IF ~~ THEN BEGIN E_DIVINE
   SAY @310
   IF ~~ THEN REPLY @311 GOTO E_MOCKME
   IF ~~ THEN REPLY @312 GOTO E_MOCKME
   IF ~~ THEN REPLY @313 GOTO E_MOCKME
   IF ~~ THEN REPLY @314 GOTO E_MOCKME
END

IF ~~ THEN BEGIN E_EVIL
   SAY @315
   IF ~~ THEN REPLY @316 GOTO E84
   IF ~~ THEN REPLY @317 GOTO E84
END

IF ~~ THEN BEGIN E84
   SAY @318
   IF ~~ THEN REPLY @319 GOTO E85
   IF ~~ THEN REPLY @320 GOTO E_MOCKME
END

IF ~~ THEN BEGIN E85
   SAY @321
   IF ~~ THEN REPLY @322 GOTO E_MOCKME
   IF ~~ THEN REPLY @323 GOTO E_MOCKME
END

IF ~~ THEN BEGIN E_MOCKME
   SAY @324
   IF ~~ THEN REPLY @145 GOTO E86
END

IF ~~ THEN BEGIN E86
   SAY @325
=
   @326
   IF ~~ THEN DO ~SetGlobal("EdwinRomanceNetherScroll", "GLOBAL", 1) SetGlobal("EdwinRomanceWarning", "GLOBAL", 1) RealSetGlobalTimer("EdwinWantsToBeFeminine","GLOBAL",TWO_DAYS)~ EXIT
END

END // END APPEND BEDWIN

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~HAER VS EDWIN CHAINS~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

CHAIN BHAERDA EDWIN_HAER1
	@327
=
	@328
=
	@329
== BEDWIN
	@330
== BHAERDA
	@331
== BEDWIN
	@332
== BHAERDA
	@333
== BEDWIN
	@334
== BHAERDA
	@335
END BEDWIN EDWIN_HAER2

CHAIN BHAERDA EDWIN_HAER3
     @336
=
     @337
== BEDWIN
     @338
== BHAERDA
     @339
== BEDWIN
   @340
END BEDWIN EDWIN_HAER4

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/


/*~~~~~~~~~~~~~~~~~ANOMEN VS EDWIN INSULT CHAINS~~~~~~~~~~~~~~~~~~~~~*/

CHAIN BANOMEN EDWIN_ANO1
      @341
== BEDWIN
      @342
== BANOMEN
       @343
== BEDWIN
       @344
END BEDWIN E59

CHAIN BANOMEN EDWIN_ANO2
      @345
== BEDWIN
      @346
== BANOMEN
      @347
== BEDWIN
       @348
=
       @349
END BEDWIN E_ANO_DIVINE


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
