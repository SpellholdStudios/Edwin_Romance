BEGIN Erplay25
IF ~Global("ERCook", "GLOBAL", 2)
    !Global("ERNose", "LOCALS", 1)
    !Global("ERNhug", "LOCALS", 1)
    !Global("ERskiss", "LOCALS", 1)
    !Global("ERshug", "LOCALS", 1)
    !Global("ERBhug", "LOCALS", 1)
    !Global("ERBkiss", "LOCALS", 1)
    !Global("ERAnnoy", "LOCALS", 1)
    !GlobalGT("ERSmile", "LOCALS", 0)
    !Global("ERwink", "LOCALS", 1)
    !Global("ERNJ", "LOCALS", 1)
    !GlobalGT("ERHand", "LOCALS", 1)
    !Global("ERDemo", "LOCALS", 1)
    !Global("ERHome", "LOCALS", 1)
    !Global("ERHair", "LOCALS", 1)
    ~ PCook1
  SAY @0
     =
      @1
  IF ~~ EXTERN EDWIN25J Cook2
END

IF ~Global("ERHome", "LOCALS", 1)~ PHome
  SAY @2
  IF ~~ EXTERN EDWIN25J Home1
END

IF ~Global("ERHair", "LOCALS", 1)~ PHair
  SAY @3
  IF ~~ EXTERN EDWIN25J Hair1
END

IF ~~ PCook2
  SAY @4
  ++ @5 EXTERN EDWIN25J Cook3
  ++ @6 EXTERN EDWIN25J Cook3
  ++ @7 EXTERN EDWIN25J Cook3
  ++ @8 EXTERN EDWIN25J Cook3
END

IF ~~ YesFish
  SAY @9
  ++ @10 EXTERN EDWIN25J CookYesFish
  ++ @11 EXTERN EDWIN25J CookYesFish
  ++ @12 EXTERN EDWIN25J CookYesFish
END

IF ~~ YesFish2
  SAY @13
  ++ @14 DO ~ActionOverride(Player1,SetDialogue("")) SetGlobal("ErCook", "GLOBAL", 0)~ EXIT
END

IF ~~ NoFish
  SAY @15
  IF ~~ EXTERN EDWIN25J CookNoFish
END

IF ~~ NoFish2
  SAY @16
  IF ~~ DO ~ActionOverride(Player1,SetDialogue("")) SetGlobal("ErCook", "GLOBAL", 0)~ EXIT
END

IF ~~ PFeet
  SAY @17
     =
      @18
  ++ @19 + PFeet2
  ++ @20 EXTERN EDWIN25J NoWash
END

IF ~~ PFeet2
  SAY @21
  IF ~~ EXTERN EDWIN25J Feet2
END

IF ~~ PFeet3
  SAY @22
  IF ~~ EXTERN EDWIN25J Feet3
END

IF ~~ PFeet4
  SAY @23
  ++ @24 EXTERN EDWIN25J Feet4
  + ~!Global("ERToeNails", "GLOBAL", 1)~ + @25 + PFeet5
END

IF ~~ PFeet5
  SAY @26
  IF ~~ EXTERN EDWIN25J Feet5
END

IF ~~ PFeet6
  SAY @27
  IF ~~ EXTERN EDWIN25J Feet6
END

IF ~Global("ERNhug", "LOCALS", 1)~ nshug
  SAY @28
  IF ~~ DO ~SetGlobal("ERNhug", "LOCALS", 0) ActionOverride(Player1, SetDialog(""))~ EXIT
END

IF ~~ EndTease
  SAY @29
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 1)~ Smile21
  SAY @30
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 2)~ Smile22
  SAY @31
  IF ~~ EXTERN EDWIN25J Smile22b
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 3)~ Smile23
  SAY @32
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERWink", "LOCALS", 1)~ Wink2
  SAY @33
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 0))~ EXIT
END

IF ~Global("ERNaughtyJoke","GLOBAL",1) Global("ERNJ", "LOCALS", 1)~ Naughty1
  SAY @34
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWIN25J EN1
END

IF ~Global("ERNaughtyJoke","GLOBAL",2) Global("ERNJ", "LOCALS", 1)~ Naughty2
  SAY @35
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWIN25J EN2
END

IF ~Global("ERNaughtyJoke","GLOBAL",3) Global("ERNJ", "LOCALS", 1)~ Naughty3
  SAY @36
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWIN25J EN3
END

IF ~~ PWink4
  SAY @37
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~Global("ERHand", "LOCALS", 1)~ Hand1
  SAY @38
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 0))~ EXIT
END

IF ~Global("ERHand", "LOCALS", 2)~ Hand2
  SAY @39
  IF ~~ EXTERN EDWIN25J EHand2
END

IF ~Global("ERHand", "LOCALS", 3)~ Hand3
  SAY @40
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 0))~ EXIT
END

IF ~Global("ERDemo", "LOCALS", 1)~ Demo1
  SAY @41
  IF ~~ EXTERN EDWIN25J Demo2
END

IF ~~ Demo5b
  SAY @42
  IF ~~ EXTERN EDWIN25J DemoExit
END


IF ~~ Demo6a
  SAY @43
  IF ~~ EXTERN EDWIN25J DemoExit
END

IF ~~ Demo7a
  SAY @42
  IF ~~ EXTERN EDWIN25J DemoExit
END


APPEND EDWIN25J

IF ~IsGabber(Player1) Global("EdwinRomanceActive","GLOBAL",2) Gender("Edwin", MALE)~ Base
  SAY ~~
    + ~OR(2) Global("HelmRitualDone","GLOBAL",1) Global("DemogorgonIsDead","GLOBAL",1) !Global("ERDemo", "LOCALS", 1)~ + @45 DO ~SetGlobal("ERDemo", "LOCALS", 1) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) GlobalGT("EdwinVampire","GLOBAL",4) !Global("ERVamp", "LOCALS", 1)~ + @46 DO ~SetGlobal("ERVamp", "LOCALS", 1)~ + Vamp1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERConj", "LOCALS", 1)~ + @47 DO ~SetGlobal("ERConj", "LOCALS", 1) ActionOverride(Player1, SetDialog("Erplay25"))~ + Conj1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinromanceActive","GLOBAL",0) !Global("ERCook", "GLOBAL", 1) AreaType(CITY)~ + @48 + Cook1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERCowl", "LOCALS", 1)~ + @49 DO ~SetGlobal("ErCowl", "LOCALS", 1) ActionOverride(Player1, SetDialog("Erplay25"))~ + Cowl1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERMaev", "LOCALS", 1) Dead("Maevar")~ + @50 + Maev1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERNose", "LOCALS", 1)~ + @51 DO ~SetGlobal("ERNose", "LOCALS", 1) ActionOverride(Player1, SetGlobal("ERNose", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERHome", "LOCALS", 1)~ + @52 DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 1)) ActionOverride(Player1, StartDialogue("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(9) AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0709") AreaCheck("AR0704") AreaCheck("AR1602") AreaCheck("AR2010") AreaCheck("AR2202")~ + @53 DO ~ActionOverride(Player1, SetDialog("Erplay25"))~ + Feet1
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @54 DO ~ActionOverride(Player1, SetGlobal("ERBHug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) !LOS("Aerie", 30) !LOS("Anomen", 30) !LOS("Haerdalis", 30) !LOS("Imoen", 30) !LOS("Imoen2", 30) !LOS("Jaheira", 30) !LOS("Jan", 30) !LOS("Korgan", 30) !LOS("Mazzy", 30) !LOS("Minsc", 30) !LOS("Nalia", 30) !LOS("Valygar", 30) !LOS("Viconia", 30) !LOS("Yoshimo", 30)~ + @55 DO ~ActionOverride(Player1, SetGlobal("ERshug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(14) LOS("Aerie", 30) LOS("Anomen", 30) LOS("Haerdalis", 30) LOS("Imoen", 30) LOS("Imoen2", 30) LOS("Jaheira", 30) LOS("Jan", 30) LOS("Korgan", 30) LOS("Mazzy", 30) LOS("Minsc", 30) LOS("Nalia", 30) LOS("Valygar", 30) LOS("Viconia", 30) LOS("Yoshimo", 30)~ + @55 DO ~ActionOverride(Player1, SetGlobal("ERNhug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) !LOS("Aerie", 30) !LOS("Anomen", 30) !LOS("Haerdalis", 30) !LOS("Imoen", 30) !LOS("Imoen2", 30) !LOS("Jaheira", 30) !LOS("Jan", 30) !LOS("Korgan", 30) !LOS("Mazzy", 30) !LOS("Minsc", 30) !LOS("Nalia", 30) !LOS("Valygar", 30) !LOS("Viconia", 30) !LOS("Yoshimo", 30)~ + @56 DO ~ActionOverride(Player1, SetGlobal("ERskiss", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(14) LOS("Aerie", 30) LOS("Anomen", 30) LOS("Haerdalis", 30) LOS("Imoen", 30) LOS("Imoen2", 30) LOS("Jaheira", 30) LOS("Jan", 30) LOS("Korgan", 30) LOS("Mazzy", 30) LOS("Minsc", 30) LOS("Nalia", 30) LOS("Valygar", 30) LOS("Viconia", 30) LOS("Yoshimo", 30)~ + @56 DO ~ActionOverride(Player1, SetGlobal("ERNhug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @57 DO ~ActionOverride(Player1, SetGlobal("ERBKiss", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0)~ + @58 DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 1)) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,1)~ + @59 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 1) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,2)~ + @59 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 2) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,3)~ + @59 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 3) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @60 DO ~ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 1) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @60 DO ~ActionOverride(Player1, SetDialog("Erplay25"))~ + EWink4
    + ~Global("EdwinRomanceActive","GLOBAL",2) GlobalLT("ERNaughtyJoke","GLOBAL",3)~ + @61 DO ~IncrementGlobal("ERNaughtyJoke", "GLOBAL", 1) ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 1)) ActionOverride(Player1, StartDialogue("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,1)~ + @62 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 1) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,2)~ + @62 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 2) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,3)~ + @62 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 3) ActionOverride(Player1, StartDialog("Erplay25", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERAnnoy", "LOCALS", 1) ActionOverride(Player1, StartDialogue("Erplay25", Player1))~ EXIT
    + ~Gender(Myself,MALE)~ + @64 + EdwinChatFixer
    + ~Gender(Myself,FEMALE)~ + @65 + EdwinaChatFixer
    ++ @66 EXIT
END
/*
IF ~True()~ Fixer
    SAY ~~
    + ~Gender(Myself,MALE)~ + @64 + EdwinChatFixer
    + ~Gender(Myself,FEMALE)~ + @65 + EdwinaChatFixer
END
*/

IF ~~ EN1
  SAY @67
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ EN2
  SAY @68
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ EN3
  SAY @69
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Demo2
  SAY @70
  ++ @71 EXTERN Erplay25 Demo3a
  ++ @72 EXTERN Erplay25 Demo3b
  ++ @73 EXTERN Erplay25 Demo3c
END

IF ~~ DemoExit
  SAY @74
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END


IF ~~ EHand2
  SAY @75
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("Hand", "LOCALS", 0))~ EXIT
END

IF ~~ EWink2
  SAY @76
  IF ~~ EXIT
END

IF ~~ EWink3
  SAY @77
  IF ~~ EXIT
END

IF ~~ EWink4
  SAY @78
  IF ~~ EXTERN Erplay25 PWink4
END

IF ~~ Vamp1
  SAY @79
  ++ @80 + Vamp2a
  ++ @81 + Vamp2b
  ++ @82 + Vamp2c
END

IF ~~ Vamp2a
  SAY @83
     =
      @84
  ++ @85 + Vamp3
  ++ @86 + Vamp3
  ++ @87 + Vamp3
END

IF ~~ Vamp2b
  SAY @88
  IF ~~ DO ~SetGlobal("ERVamp", "LOCALS", 0)~ EXIT
END

IF ~~ Vamp2c
  SAY @89
  IF ~~ EXIT
END


IF ~~ Vamp3
  SAY @90
  ++ @91 + Vamp4
END

IF ~~ Vamp4
  SAY @92
     =
      @93
     =
      @94
  IF ~~ EXIT
END

IF ~~ Conj1
  SAY @95
  ++ @96 + Conj2
  ++ @97 + Conj2
  ++ @98 + Conj2
END

IF ~~ Conj2
  SAY @99
  ++ @100 + Conj3
  ++ @101 + Conj3
  ++ @102 + Conj3
END

IF ~~ Conj3
  SAY @103
     =
      @104
  ++ @105 + Conj4
  ++ @106 + Conj4
  ++ @107 + Conj4
END

IF ~~ Conj4
  SAY @108
  IF ~~ EXIT
END

IF ~~ Cook1
  SAY @109
  IF ~~ + Cook1a
END

IF ~~ Cook1a
  SAY @110
  IF ~~ DO ~SetGlobal("ERCook", "GLOBAL", 1)~ EXIT
END

IF ~~ Cook2
  SAY @111
  IF ~~ EXTERN Erplay25 PCook2
END

IF ~~ Cook3
  SAY @112
  ++ @113 EXTERN Erplay25 YesFish
  ++ @114 EXTERN Erplay25 NoFish
END

IF ~~ CookYesFish
  SAY @115
  IF ~~ EXTERN Erplay25 YesFish2
END

IF ~~ CookNoFish
  SAY @116
  IF ~~ EXTERN Erplay25 NoFish2
END

IF ~~ Cowl1
  SAY @117
     =
      @118
  ++ @119 + Cowl2
END

IF ~~ Cowl2
  SAY @120
  ++ @121 + Cowl3
  ++ @122 + Cowl3
  ++ @123 + Cowl3
END

IF ~~ Cowl3
  SAY @124
     =
      @125
  IF ~~ DO ~ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Feet1
  SAY @126
  IF ~~ EXTERN Erplay25 PFeet
END

IF ~~ NoWash
  SAY @127
  IF ~~ DO ~ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Feet2
  SAY @128
  ++ @129 EXTERN Erplay25 PFeet3
  ++ @130 + NoWash
  ++ @131 EXTERN Erplay25 PFeet3
  ++ @132 EXTERN Erplay25 PFeet3
END

IF ~~ Feet3
  SAY @133
  ++ @134 + NoWash
  ++ @135 EXTERN Erplay25 PFeet4
  ++ @136 EXTERN Erplay25 PFeet4
  ++ @137 EXTERN Erplay25 PFeet4
END

IF ~~ Feet4
  SAY @138
  IF ~~ DO ~ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Feet5
  SAY @139
  IF ~~ EXTERN Erplay25 PFeet6
END

IF ~~ Feet6
  SAY @140
  IF ~~ DO ~SetGlobal("ERToeNails", "GLOBAL", 1) ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ EdwinChatFixer
  SAY @141
  IF ~~ DO ~StartCutScene("EdwinFix")~ EXIT
END

IF ~~ EdwinaChatFixer
  SAY @141
  IF ~~ DO ~StartCutScene("EdwinaFi")~ EXIT
END

IF ~~ bkiss2
  SAY @142
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT
END

IF ~~ Maev1
  SAY @143
  ++ @144 + maev2
  ++ @145 + maev2
  ++ @146 + maev2
END

IF ~~ maev2
  SAY @147
     =
      @148
  ++ @149 + maev3
  ++ @150 + maev3
END

IF ~~ maev3
  SAY @151
     =
      @152
  IF ~~ EXIT
  IF ~Global("PlayerThiefGuild","GLOBAL",1)~ + maevt
END

IF ~~ maevt
  SAY @153
  IF ~~ EXIT
END

IF ~~ Smile22b
  SAY @154
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END


IF ~~ Home1
  SAY @155
     =
      @156
  ++ @157 + Home2
  ++ @158 + Home5
END

IF ~~ Home2
  SAY @159
  ++ @160 EXTERN Erplay25 Home3
  ++ @161 EXTERN Erplay25 Home4
END

IF ~~ Home5
  SAY @162
     =
      @163
  ++ @164 EXTERN Erplay25 Home6
  ++ @165 EXTERN Erplay25 Home7
END

IF ~~ Hair1
  SAY @166
  ++ @167 EXTERN Erplay25 Hair2a
  ++ @168 EXTERN Erplay25 Hair2b
  ++ @169 EXTERN Erplay25 Hair2c
  ++ @170 EXTERN Erplay25 Hair2d
END

IF ~~ Hair6b
  SAY @171
  ++ @172 + Hair7a
  ++ @173 EXTERN Erplay25 Hair8a
END

IF ~~ Hair7a
  SAY @174
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Hair10a
  SAY @175
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Hair10b
  SAY @176
  ++ @177 EXTERN Erplay25 Hair11
END

END

CHAIN
IF ~~ THEN Erplay25 Hair2a
    @178
   == EDWIN25J
    @179
   == Erplay25
    @180
   == EDWIN25J
    @181
END ++ @182 EXTERN Erplay25 Hair3a
    ++ @183 EXTERN Erplay25 Hair4a
    ++ @184 EXTERN Erplay25 Hair5a

CHAIN
IF ~~ THEN Erplay25 Hair3a
    @185
   == EDWIN25J
    @186
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair4a
    @187
   == EDWIN25J
    @188
END IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT
    IF ~Global("EdwinRomanceActive","GLOBAL",2)~ EXTERN Erplay25 Hair4b

CHAIN
IF ~~ THEN Erplay25 Hair4b
    @189
   == EDWIN25J
    @190
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair5a
    @191
   == EDWIN25J
    @192
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair2b
    @193
   == EDWIN25J
    @194
END ++ @195 EXTERN Erplay25 Hair6a
    ++ @196 EXTERN EDWIN25J Hair7a

CHAIN
IF ~~ THEN Erplay25 Hair6a
    @197
   == EDWIN25J
    @198
END ++ @199 EXTERN EDWIN25J Hair6b

CHAIN
IF ~~ THEN Erplay25 Hair8a
    @200
   == EDWIN25J
    @201
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair2c
    @202
   == EDWIN25J
    @203
END ++ @204 EXTERN Erplay25 Hair9a
    ++ @205 EXTERN Erplay25 Hair9b
    ++ @206 EXTERN EDWIN25J Hair9c

CHAIN
IF ~~ THEN Erplay25 Hair9a
    @207
   == EDWIN25J
    @208
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair9b
    @209
   == EDWIN25J
    @210
END ++ @211 EXTERN Erplay25 Hair9a
    ++ @206 EXTERN EDWIN25J Hair9c

CHAIN
IF ~~ THEN EDWIN25J Hair9c
    @212
  == Erplay25
    @213
  == EDWIN25J
    @214
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Hair2d
    @215
   == EDWIN25J
    @216
END ++ @217 EXTERN EDWIN25J Hair10a
    ++ @218 EXTERN EDWIN25J Hair10b

CHAIN
IF ~~ THEN Erplay25 Hair11
    @219
   == EDWIN25J
    @220
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Home3
    @221
  == EDWIN25J
    @222
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Home4
    @221
  == EDWIN25J
    @223
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Home6
    @224
  == EDWIN25J
    @225
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Home7
    @224
  == EDWIN25J
    @226
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT


CHAIN
IF ~Global("ERBhug", "LOCALS", 1)~ THEN Erplay25 bhug
    @227
       DO ~SetGlobal("ERBhug", "LOCALS", 0)~
  == EDWIN25J
    @228
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~Global("ERshug", "LOCALS", 1)~ THEN Erplay25 shug
    @229
   =
    @230
      DO ~SetGlobal("ERshug", "LOCALS", 0)~
  == EDWIN25J
    @231
  == Erplay25
    @232
   =
    @233
END IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT

CHAIN
IF ~Global("ERBKiss", "LOCALS", 1)~ THEN Erplay25 bkiss
    @234
       DO ~SetGlobal("ERBKiss", "LOCALS", 0)~
  == EDWIN25J
    @235
END ++ @236 EXTERN EDWIN25J bkiss2
    ++ @237 EXTERN EDWIN25J bkiss2
    ++ @238 EXTERN EDWIN25J bkiss2

CHAIN
IF ~Global("ERskiss", "LOCALS", 1)~ THEN Erplay25 skiss
    @239
   =
    @240
      DO ~SetGlobal("ERskiss", "LOCALS", 0)~
  == EDWIN25J
    @241
END IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT

CHAIN
IF ~Global("ERNose", "LOCALS", 1)~ THEN Erplay25 Nose1
    @242
      DO ~SetGlobal("ERNose", "LOCALS", 0)~
  == EDWIN25J
    @243
END ++ @244 EXTERN Erplay25 Nose2a
    ++ @245 EXTERN Erplay25 Nose2b
    ++ @246 EXTERN Erplay25 Nose2c
    ++ @247 EXTERN Erplay25 Nose2d

CHAIN
IF ~~ THEN Erplay25 Nose2a
    @248
  == EDWIN25J
    @249
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Nose2b
    @250
  == EDWIN25J
    @251
END ++ @252 EXTERN Erplay25 ufashion
    ++ @253 EXTERN Erplay25 ufashion

CHAIN
IF ~~ THEN Erplay25 Nose2c
    @254
  == EDWIN25J
    @255
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Nose2d
    @256
 == EDWIN25J
    @257
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 ufashion
    @258
  == EDWIN25J
   @259
END ++ @244 EXTERN Erplay25 Nose2a
    ++ @246 EXTERN Erplay25 Nose2c
    ++ @247 EXTERN Erplay25 Nose2d


CHAIN
IF ~Global("ERAnnoy", "LOCALS", 1)~ THEN Erplay25 tease1
    @260
       DO ~SetGlobal("ERAnnoy", "LOCALS", 0)~
  == EDWIN25J
    @261
END ++ @262 EXTERN Erplay25 Tease2
    ++ @263 EXTERN Erplay25 Tease3
    ++ @264 EXTERN Erplay25 EndTease
    ++ @265 EXTERN Erplay25 Twitch

CHAIN
IF ~~ THEN Erplay25 Tease2
    @266
  == EDWIN25J
    @267
  == Erplay25
    @268
  == EDWIN25J
    @269
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Tease3
    @270
  == EDWIN25J
    @271
  == Erplay25
    @272
END ++ @273 EXTERN Erplay25 Amusement
    ++ @274 EXTERN Erplay25 Grimace

CHAIN
IF ~~ THEN Erplay25 Amusement
    @275
  == EDWIN25J
    @276
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Grimace
    @277
  == EDWIN25J
    @278
  == Erplay25
    @279
END ++ @273 EXTERN Erplay25 Amusement
    ++ @274 EXTERN Erplay25 Grimace2

CHAIN
IF ~~ THEN Erplay25 Grimace2
    @280
   == EDWIN25J
    @281
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Twitch
    @282
  == EDWIN25J
    @283
END ++ @284 EXTERN Erplay25 Blush
    ++ @285 EXTERN Erplay25 Blush
    ++ @286 EXTERN Erplay25 EndTease

CHAIN
IF ~~ THEN Erplay25 Blush
    @287
  == EDWIN25J
    @288
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Demo3a
    @289
  == EDWIN25J
    @290
END ++ @291 EXTERN Erplay25 Demo4a
    ++ @292 EXTERN Erplay25 Demo4b

CHAIN
IF ~~ THEN Erplay25 Demo3b
    @293
  == EDWIN25J
    @294
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Demo3c
    @295
  == EDWIN25J
    @296
END ++ @297 EXTERN Erplay25 Demo5a
    ++ @298 EXTERN Erplay25 Demo5b
    ++ @299 EXTERN Erplay25 Demo5c

CHAIN
IF ~~ THEN Erplay25 Demo4a
    @300
  == EDWIN25J
    @301
END ++ @302 EXTERN Erplay25 Demo5a
    ++ @303 EXTERN Erplay25 Demo5b
    ++ @304 EXTERN Erplay25 Demo5c

CHAIN
IF ~~ THEN Erplay25 Demo4b
    @305
  == EDWIN25J
    @306
END ++ @307 EXTERN Erplay25 Demo9a
    ++ @308 EXTERN Erplay25 Demo9b

CHAIN
IF ~~ THEN Erplay25 Demo9a
    @309
  == EDWIN25J
    @310
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Demo9b
    @311
  == EDWIN25J
    @312
END ++ @313 EXTERN Erplay25 Demo8a
    ++ @314 EXTERN Erplay25 Demo8a
    ++ @315 EXTERN Erplay25 Demo8b

CHAIN
IF ~~ THEN Erplay25 Demo5a
    @316
  == EDWIN25J
    @317
END ++ @318 EXTERN Erplay25 Demo6a
    ++ @319 EXTERN Erplay25 Demo5b
    ++ @320 EXTERN Erplay25 Demo7a

CHAIN
IF ~~ THEN Erplay25 Demo5c
    @321
  == EDWIN25J
    @322
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Demo8a
    @323
  == EDWIN25J
    @324
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN Erplay25 Demo8b
    @309
  == EDWIN25J
    @325
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT














