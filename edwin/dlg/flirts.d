
BEGIN ERPlayer
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
    !Global("ERDrow", "LOCALS", 1)
    !GlobalGT("ERHand", "LOCALS", 1)
    !Global("ERHome", "LOCALS", 1)
    !Global("ERHair", "LOCALS", 1)
    ~ PCook1
  SAY @0
     =
      @1
  IF ~~ EXTERN EDWINJ Cook2
END

IF ~Global("ERHome", "LOCALS", 1)~ PHome
  SAY @2
  IF ~~ EXTERN EDWINJ Home1
END

IF ~Global("ERHair", "LOCALS", 1)~ PHair
  SAY @3
  IF ~~ EXTERN EDWINJ Hair1
END

IF ~~ PCook2
  SAY @4
  ++ @5 EXTERN EDWINJ Cook3
  ++ @6 EXTERN EDWINJ Cook3
  ++ @7 EXTERN EDWINJ Cook3
  ++ @8 EXTERN EDWINJ Cook3
END

IF ~~ YesFish
  SAY @9
  ++ @10 EXTERN EDWINJ CookYesFish
  ++ @11 EXTERN EDWINJ CookYesFish
  ++ @12 EXTERN EDWINJ CookYesFish
END

IF ~~ YesFish2
  SAY @13
  ++ @14 DO ~ActionOverride(Player1,SetDialogue("")) SetGlobal("ErCook", "GLOBAL", 0)~ EXIT
END

IF ~~ NoFish
  SAY @15
  IF ~~ EXTERN EDWINJ CookNoFish
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
  ++ @20 EXTERN EDWINJ NoWash
END

IF ~~ PFeet2
  SAY @21
  IF ~~ EXTERN EDWINJ Feet2
END

IF ~~ PFeet3
  SAY @22
  IF ~~ EXTERN EDWINJ Feet3
END

IF ~~ PFeet4
  SAY @23
  ++ @24 EXTERN EDWINJ Feet4
  + ~!Global("ERToeNails", "GLOBAL", 1)~ + @25 + PFeet5
END

IF ~~ PFeet5
  SAY @26
  IF ~~ EXTERN EDWINJ Feet5
END

IF ~~ PFeet6
  SAY @27
  IF ~~ EXTERN EDWINJ Feet6
END

IF ~Global("ERNhug", "LOCALS", 1)~ nshug
  SAY @28
  IF ~~ DO ~SetGlobal("ERNhug", "LOCALS", 0) ActionOverride(Player1, SetDialog(""))~ EXIT
END

IF ~~ EndTease
  SAY @29
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 1) Global("ERSmile", "LOCALS", 1)~ Smile11
  SAY @30
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END


IF ~Global("EdwinRomanceActive", "GLOBAL", 1) Global("ERSmile", "LOCALS", 2)~ Smile12
  SAY @31
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 1) Global("ERSmile", "LOCALS", 3)~ Smile13
  SAY @32
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 1)~ Smile21
  SAY @33
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 2)~ Smile22
  SAY @34
  IF ~~ EXTERN EDWINJ Smile22b
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERSmile", "LOCALS", 3)~ Smile23
  SAY @35
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 1) Global("ERWink", "LOCALS", 1)~ Wink1
  SAY @36
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 0))~ EXIT
END

IF ~Global("EdwinRomanceActive", "GLOBAL", 2) Global("ERWink", "LOCALS", 1)~ Wink2
  SAY @37
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 0))~ EXIT
END

IF ~Global("ERNaughtyJoke","GLOBAL",1) Global("ERNJ", "LOCALS", 1)~ Naughty1
  SAY @38
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWINJ EN1
END

IF ~Global("ERNaughtyJoke","GLOBAL",2) Global("ERNJ", "LOCALS", 1)~ Naughty2
  SAY @39
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWINJ EN2
END

IF ~Global("ERNaughtyJoke","GLOBAL",3) Global("ERNJ", "LOCALS", 1)~ Naughty3
  SAY @40
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 0)~ EXTERN EDWINJ EN3
END

IF ~~ PWink4
  SAY @41
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~Global("ERHand", "LOCALS", 1)~ Hand1
  SAY @42
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 0))~ EXIT
END

IF ~Global("ERHand", "LOCALS", 2)~ Hand2
  SAY @43
  IF ~~ EXTERN EDWINJ EHand2
END

IF ~Global("ERHand", "LOCALS", 3)~ Hand3
  SAY @44
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 0))~ EXIT
END

APPEND EDWINJ

IF ~IsGabber(Player1) OR(2) Global("EdwinRomanceActive","GLOBAL",1) Global("EdwinRomanceActive","GLOBAL",2) Gender("Edwin", MALE)~ Base
  SAY ~~
    + ~Global("EdwinRomanceActive","GLOBAL",2) Global("PlayerLooksLikeDrow","GLOBAL",1) Global("ERDrow", "LOCALS", 0)~ + @46 DO ~SetGlobal("ERDrow", "LOCALS", 1)~ + Drow1
    + ~Global("EdwinRomanceActive","GLOBAL",2) Global("ERDrow", "LOCALS", 1) OR(2) AreaCheck("AR2202") AreaCheck("AR2203")~ + @47 DO ~ActionOverride(Player1, SetGlobal("ERDrow", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) GlobalGT("DrowTalk","GLOBAL",4) !Global("ERSlay", "LOCALS", 1)~ + @48 DO ~SetGlobal("ERSlay", "LOCALS", 1)~ + Slayer1
    + ~Global("EdwinRomanceActive","GLOBAL",2) GlobalGT("EdwinVampire","GLOBAL",4) !Global("ERVamp", "LOCALS", 1)~ + @49 DO ~SetGlobal("ERVamp", "LOCALS", 1)~ + Vamp1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERConj", "LOCALS", 1)~ + @50 DO ~SetGlobal("ERConj", "LOCALS", 1)~ + Conj1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinromanceActive","GLOBAL",0) !Global("ERCook", "GLOBAL", 1) AreaType(CITY)~ + @51 + Cook1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERCowl", "LOCALS", 1)~ + @52 DO ~SetGlobal("ErCowl", "LOCALS", 1)~ + Cowl1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERFirk", "LOCALS", 1) Dead("Firkra02")~ + @53 DO ~SetGlobal("ERFirk", "LOCALS", 1)~ + Firk1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERMaev", "LOCALS", 1) Dead("Maevar")~ + @54 + Maev1
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERNose", "LOCALS", 1)~ + @55 DO ~SetGlobal("ERNose", "LOCALS", 1) ActionOverride(Player1, SetGlobal("ERNose", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0) !Global("ERHome", "LOCALS", 1)~ + @56 DO ~SetGlobal("ERHome", "LOCALS", 1) ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 1)) ActionOverride(Player1, StartDialogue("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(9) AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0709") AreaCheck("AR0704") AreaCheck("AR1602") AreaCheck("AR2010") AreaCheck("AR2202")~ + @57 DO ~ActionOverride(Player1, SetDialog("ERPlayer"))~ + Feet1
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @58 DO ~ActionOverride(Player1, SetGlobal("ERBHug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) !LOS("Aerie", 30) !LOS("Anomen", 30) !LOS("Haerdalis", 30) !LOS("Imoen", 30) !LOS("Imoen2", 30) !LOS("Jaheira", 30) !LOS("Jan", 30) !LOS("Korgan", 30) !LOS("Mazzy", 30) !LOS("Minsc", 30) !LOS("Nalia", 30) !LOS("Valygar", 30) !LOS("Viconia", 30) !LOS("Yoshimo", 30)~ + @59 DO ~ActionOverride(Player1, SetGlobal("ERshug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(14) LOS("Aerie", 30) LOS("Anomen", 30) LOS("Haerdalis", 30) LOS("Imoen", 30) LOS("Imoen2", 30) LOS("Jaheira", 30) LOS("Jan", 30) LOS("Korgan", 30) LOS("Mazzy", 30) LOS("Minsc", 30) LOS("Nalia", 30) LOS("Valygar", 30) LOS("Viconia", 30) LOS("Yoshimo", 30)~ + @59 DO ~ActionOverride(Player1, SetGlobal("ERNhug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) !LOS("Aerie", 30) !LOS("Anomen", 30) !LOS("Haerdalis", 30) !LOS("Imoen", 30) !LOS("Imoen2", 30) !LOS("Jaheira", 30) !LOS("Jan", 30) !LOS("Korgan", 30) !LOS("Mazzy", 30) !LOS("Minsc", 30) !LOS("Nalia", 30) !LOS("Valygar", 30) !LOS("Viconia", 30) !LOS("Yoshimo", 30)~ + @60 DO ~ActionOverride(Player1, SetGlobal("ERskiss", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) OR(14) LOS("Aerie", 30) LOS("Anomen", 30) LOS("Haerdalis", 30) LOS("Imoen", 30) LOS("Imoen2", 30) LOS("Jaheira", 30) LOS("Jan", 30) LOS("Korgan", 30) LOS("Mazzy", 30) LOS("Minsc", 30) LOS("Nalia", 30) LOS("Valygar", 30) LOS("Viconia", 30) LOS("Yoshimo", 30)~ + @60 DO ~ActionOverride(Player1, SetGlobal("ERNhug", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @61 DO ~ActionOverride(Player1, SetGlobal("ERBKiss", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~!Global("EdwinRomanceActive","GLOBAL",3) !Global("EdwinRomanceActive","GLOBAL",0)~ + @62 DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 1)) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,1)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 1) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,2)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 2) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,3)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 3) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,1)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 1) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,2)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 2) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,3)~ + @63 DO ~ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 3) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,1)~ + @64  DO ~ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 1) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,2)~ + @64 + EWink2
    + ~Global("EdwinRomanceActive","GLOBAL",1) RandomNum(3,3)~ + @64 + EWink3
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @64 DO ~ActionOverride(Player1, SetGlobal("ERWink", "LOCALS", 1) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @64 DO ~ActionOverride(Player1, SetDialog("ERPlayer"))~ + EWink4
    + ~Global("EdwinRomanceActive","GLOBAL",2) GlobalLT("ERNaughtyJoke","GLOBAL",3)~ + @65 DO ~IncrementGlobal("ERNaughtyJoke", "GLOBAL", 1) ActionOverride(Player1, SetGlobal("ERNJ", "LOCALS", 1)) ActionOverride(Player1, StartDialogue("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,1)~ + @66 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 1) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,2)~ + @66 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 2) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2) RandomNum(3,3)~ + @66 DO ~ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 3) ActionOverride(Player1, StartDialog("ERPlayer", Player1))~ EXIT
    + ~Global("EdwinRomanceActive","GLOBAL",2)~ + @67 DO ~ActionOverride(Player1, SetGlobal("ERAnnoy", "LOCALS", 1) ActionOverride(Player1, StartDialogue("ERPlayer", Player1))~ EXIT
    + ~Gender(Myself,MALE)~ + @68 + EdwinChatFixer
    + ~Gender(Myself,FEMALE)~ + @69 + EdwinaChatFixer
    ++ @70 EXIT
END

/*
IF ~True()~ Fixer
    SAY ~~
    + ~Gender(Myself,MALE)~ + @68 + EdwinChatFixer
    + ~Gender(Myself,FEMALE)~ + @69 + EdwinaChatFixer
END
*/

IF ~~ EN1
  SAY @71
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ EN2
  SAY @72
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ EN3
  SAY @73
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Drow1
  SAY @74
  ++ @75 EXTERN ERPlayer Drow2a
  ++ @76 EXTERN ERPlayer Drow2b
  ++ @77 EXTERN ERPlayer Drow2c
  ++ @78 EXTERN EDWINJ Drow2d
END

IF ~~ EHand2
  SAY @79
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERHand", "LOCALS", 0))~ EXIT
END

IF ~~ EWink2
  SAY @80
  IF ~~ EXIT
END

IF ~~ EWink3
  SAY @81
  IF ~~ EXIT
END

IF ~~ EWink4
  SAY @82
  IF ~~ EXTERN ERPlayer PWink4
END

IF ~~ Vamp1
  SAY @83
  ++ @84 + Vamp2a
  ++ @85 + Vamp2b
  ++ @86 + Vamp2c
END

IF ~~ Vamp2a
  SAY @87
     =
      @88
  ++ @89 + Vamp3
  ++ @90 + Vamp3
  ++ @91 + Vamp3
END

IF ~~ Vamp2b
  SAY @92
  IF ~~ DO ~SetGlobal("ERVamp", "LOCALS", 0)~ EXIT
END

IF ~~ Vamp2c
  SAY @93
  IF ~~ EXIT
END


IF ~~ Vamp3
  SAY @94
  ++ @95 + Vamp4
END

IF ~~ Vamp4
  SAY @96
     =
      @97
     =
      @98
  IF ~~ EXIT
END


IF ~~ Slayer1
  SAY @99
  ++ @100 + Slay2
  ++ @101 + Slay2
  ++ @102 + Slay2
END

IF ~~ Slay2
  SAY @103
  ++ @104 + Slay3
END

IF ~~ Slay3
  SAY @105
  ++ @106 + Slay4
  ++ @107 + Slay4
  ++ @108 + Slay4
END

IF ~~ Slay4
  SAY @109
  IF ~~ EXIT
END

IF ~~ Conj1
  SAY @110
  ++ @111 + Conj2
  ++ @112 + Conj2
  ++ @113 + Conj2
END

IF ~~ Conj2
  SAY @114
  ++ @115 + Conj3
  ++ @116 + Conj3
  ++ @117 + Conj3
END

IF ~~ Conj3
  SAY @118
     =
      @119
  ++ @120 + Conj4
  ++ @121 + Conj4
  ++ @122 + Conj4
END

IF ~~ Conj4
  SAY @123
  IF ~~ EXIT
END

IF ~~ Cook1
  SAY @124
  IF ~~ + Cook1a
END

IF ~~ Cook1a
  SAY @125
  IF ~~ DO ~SetGlobal("ERCook", "GLOBAL", 1)~ EXIT
END

IF ~~ Cook2
  SAY @126
  IF ~~ EXTERN ERPlayer PCook2
END

IF ~~ Cook3
  SAY @127
  ++ @128 EXTERN ERPlayer YesFish
  ++ @129 EXTERN ERplayer NoFish
END

IF ~~ CookYesFish
  SAY @130
  IF ~~ EXTERN ERPLayer YesFish2
END

IF ~~ CookNoFish
  SAY @131
  IF ~~ EXTERN ERPlayer NoFish2
END

IF ~~ Cowl1
  SAY @132
     =
      @133
  ++ @134 + Cowl2
END

IF ~~ Cowl2
  SAY @135
  ++ @136 + Cowl3
  ++ @137 + Cowl3
  ++ @138 + Cowl3
END

IF ~~ Cowl3
  SAY @139
     =
      @140
  IF ~~ EXIT
END

IF ~~ Firk1
  SAY @141
  ++ @142 + Firk2
  ++ @143 + Firk2
  ++ @144 + Firk2
END

IF ~~ Firk2
  SAY @145
  ++ @134 + Firk3
  ++ @146 + Firk3
  ++ @147 + Firk3
END

IF ~~ Firk3
  SAY @148
  ++ @149 + Firk4
  ++ @150 + Firk4
END

IF ~~ Firk4
  SAY @151
     =
      @152
  IF ~~ EXIT
END

IF ~~ Feet1
  SAY @153
  IF ~~ EXTERN ERPlayer PFeet
END

IF ~~ NoWash
  SAY @154
  IF ~~ DO ~ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Feet2
  SAY @155
  ++ @156 EXTERN ERPlayer PFeet3
  ++ @157 + NoWash
  ++ @158 EXTERN ERPlayer PFeet3
  ++ @159 EXTERN ERPlayer PFeet3
END

IF ~~ Feet3
  SAY @160
  ++ @161 + NoWash
  ++ @162 EXTERN ERPlayer PFeet4
  ++ @163 EXTERN ERPlayer PFeet4
  ++ @164 EXTERN ERPlayer PFeet4
END

IF ~~ Feet4
  SAY @165
  IF ~~ DO ~ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Feet5
  SAY @166
  IF ~~ EXTERN ERPlayer PFeet6
END

IF ~~ Feet6
  SAY @167
  IF ~~ DO ~SetGlobal("ERToeNails", "GLOBAL", 1) ActionOverride(Player1,SetDialogue(""))~ EXIT
END

IF ~~ Drow3c
  SAY @168
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ EdwinChatFixer
  SAY @169
  IF ~~ DO ~StartCutScene("EdwinFix")~ EXIT
END

IF ~~ EdwinaChatFixer
  SAY @169
  IF ~~ DO ~StartCutScene("EdwinaFi")~ EXIT
END

IF ~~ bkiss2
  SAY @170
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT
END

IF ~~ Maev1
  SAY @171
  ++ @172 + maev2
  ++ @173 + maev2
  ++ @174 + maev2
END

IF ~~ maev2
  SAY @175
     =
      @176
  ++ @177 + maev3
  ++ @178 + maev3
END

IF ~~ maev3
  SAY @179
     =
      @180
  IF ~~ EXIT
  IF ~Global("PlayerThiefGuild","GLOBAL",1)~ + maevt
END

IF ~~ maevt
  SAY @181
  IF ~~ EXIT
END

IF ~~ Smile22b
  SAY @182
  IF ~~ DO ~ActionOverride(Player1, SetDialogue("")) ActionOverride(Player1, SetGlobal("ERSmile", "LOCALS", 0))~ EXIT
END

IF ~~ Drow2d
  SAY @183
  ++ @184 EXTERN ERPlayer Drow5
  ++ @185 EXTERN ERPlayer Drow5
END


IF ~~ Drow4a
  SAY @186
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Drow4b
  SAY @187
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ NoLust
  SAY @188
  IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Home1
  SAY @189
     =
      @190
  ++ @191 + Home2
  ++ @192 + Home5
END

IF ~~ Home2
  SAY @193
  ++ @194 EXTERN ERPlayer Home3
  ++ @195 EXTERN ERPlayer Home4
END

IF ~~ Home5
  SAY @196
     =
      @197
  ++ @198 EXTERN ERPlayer Home6
  ++ @199 EXTERN ERPlayer Home7
END

IF ~~ Hair1
  SAY @200
  ++ @201 EXTERN ERPlayer Hair2a
  ++ @202 EXTERN ERPlayer Hair2b
  ++ @203 EXTERN ERPlayer Hair2c
  ++ @204 EXTERN ERPlayer Hair2d
END

IF ~~ Hair6b
  SAY @205
  ++ @206 + Hair7a
  ++ @207 EXTERN ERPlayer Hair8a
END

IF ~~ Hair7a
  SAY @208
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Hair10a
  SAY @209
  IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT
END

IF ~~ Hair10b
  SAY @210
  ++ @211 EXTERN ERPlayer Hair11
END

END

CHAIN
IF ~~ THEN ERPlayer Hair2a
    @212
   == EDWINJ
    @213
   == ERPlayer
    @214
   == EDWINJ
    @215
END ++ @216 EXTERN ERPlayer Hair3a
    ++ @217 EXTERN ERPlayer Hair4a
    ++ @218 EXTERN ERPlayer Hair5a

CHAIN
IF ~~ THEN ERPlayer Hair3a
    @219
   == EDWINJ
    @220
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair4a
    @221
   == EDWINJ
    @222
END IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT
    IF ~Global("EdwinRomanceActive","GLOBAL",2)~ EXTERN ERPlayer Hair4b

CHAIN
IF ~~ THEN ERPlayer Hair4b
    @223
   == EDWINJ
    @224
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair5a
    @225
   == EDWINJ
    @226
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair2b
    @227
   == EDWINJ
    @228
END ++ @229 EXTERN ERPlayer Hair6a
    ++ @230 EXTERN EDWINJ Hair7a

CHAIN
IF ~~ THEN ERPlayer Hair6a
    @231
   == EDWINJ
    @232
END ++ @233 EXTERN EDWINJ Hair6b

CHAIN
IF ~~ THEN ERPlayer Hair8a
    @234
   == EDWINJ
    @235
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair2c
    @236
   == EDWINJ
    @237
END ++ @238 EXTERN ERPlayer Hair9a
    ++ @239 EXTERN ERPLayer Hair9b
    ++ @240 EXTERN EDWINJ Hair9c

CHAIN
IF ~~ THEN ERPlayer Hair9a
    @241
   == EDWINJ
    @242
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair9b
    @243
   == EDWINJ
    @244
END ++ @245 EXTERN ERPlayer Hair9a
    ++ @240 EXTERN EDWINJ Hair9c

CHAIN
IF ~~ THEN EDWINJ Hair9c
    @246
  == ERPlayer
    @247
  == EDWINJ
    @248
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Hair2d
    @249
   == EDWINJ
    @250
END ++ @251 EXTERN EDWINJ Hair10a
    ++ @252 EXTERN EDWINJ Hair10b

CHAIN
IF ~~ THEN ERPlayer Hair11
    @253
   == EDWINJ
    @254
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHair", "LOCALS", 0)) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Home3
    @255
  == EDWINJ
    @256
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Home4
    @255
  == EDWINJ
    @257
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Home6
    @258
  == EDWINJ
    @259
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Home7
    @258
  == EDWINJ
    @260
END IF ~~ DO ~ActionOverride(Player1, SetGlobal("ERHome", "LOCALS", 0) ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~Global("ERBhug", "LOCALS", 1)~ THEN ERPlayer bhug
    @261
       DO ~SetGlobal("ERBhug", "LOCALS", 0)~
  == EDWINJ
    @262
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~Global("ERshug", "LOCALS", 1)~ THEN ERPlayer shug
    @263
   =
    @264
      DO ~SetGlobal("ERshug", "LOCALS", 0)~
  == EDWINJ
    @265
  == ERPlayer
    @266
   =
    @267
END IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT

CHAIN
IF ~Global("ERBKiss", "LOCALS", 1)~ THEN ERPlayer bkiss
    @268
       DO ~SetGlobal("ERBKiss", "LOCALS", 0)~
  == EDWINJ
    @269
END ++ @270 EXTERN Edwinj bkiss2
    ++ @271 EXTERN Edwinj bkiss2
    ++ @272 EXTERN Edwinj bkiss2

CHAIN
IF ~Global("ERskiss", "LOCALS", 1)~ THEN ERPlayer skiss
    @273
   =
    @274
      DO ~SetGlobal("ERskiss", "LOCALS", 0)~
  == EDWINJ
    @275
END IF ~~ DO ~ActionOverride(Player1, SetDialogue("")~ EXIT

CHAIN
IF ~Global("ERNose", "LOCALS", 1)~ THEN ERPlayer Nose1
    @276
      DO ~SetGlobal("ERNose", "LOCALS", 0)~
  == EDWINJ
    @277
END ++ @278 EXTERN ERPlayer Nose2a
    ++ @279 EXTERN ERPlayer Nose2b
    ++ @280 EXTERN ERPlayer Nose2c
    ++ @281 EXTERN ERPlayer Nose2d

CHAIN
IF ~~ THEN ERPlayer Nose2a
    @282
  == EDWINJ
    @283
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Nose2b
    @284
  == EDWINJ
    @285
END ++ @286 EXTERN ERPlayer ufashion
    ++ @287 EXTERN ERPlayer ufashion

CHAIN
IF ~~ THEN ERPlayer Nose2c
    @288
  == EDWINJ
    @289
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Nose2d
    @290
 == EDWINJ
    @291
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer ufashion
    @292
  == EDWINJ
   @293
END ++ @278 EXTERN ERPlayer Nose2a
    ++ @280 EXTERN ERPlayer Nose2c
    ++ @281 EXTERN ERPlayer Nose2d


CHAIN
IF ~Global("ERAnnoy", "LOCALS", 1)~ THEN ERPlayer tease1
    @294
       DO ~SetGlobal("ERAnnoy", "LOCALS", 0)~
  == EDWINJ
    @295
END ++ @296 EXTERN ERPlayer Tease2
    ++ @297 EXTERN ERPlayer Tease3
    ++ @298 EXTERN ERPlayer EndTease
    ++ @299 EXTERN ERPlayer Twitch

CHAIN
IF ~~ THEN ERPlayer Tease2
    @300
  == EDWINJ
    @301
  == ERPlayer
    @302
  == EDWINJ
    @303
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Tease3
    @304
  == EDWINJ
    @305
  == ERPlayer
    @306
END ++ @307 EXTERN ERPlayer Amusement
    ++ @308 EXTERN ERPlayer Grimace

CHAIN
IF ~~ THEN ERPlayer Amusement
    @309
  == EDWINJ
    @310
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Grimace
    @311
  == EDWINJ
    @312
  == ERPlayer
    @313
END ++ @307 EXTERN ERPlayer Amusement
    ++ @308 EXTERN ERPlayer Grimace2

CHAIN
IF ~~ THEN ERPlayer Grimace2
    @314
   == EDWINJ
    @315
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Twitch
    @316
  == EDWINJ
    @317
END ++ @318 EXTERN ERPlayer Blush
    ++ @319 EXTERN ERPlayer Blush
    ++ @320 EXTERN ERPlayer EndTease

CHAIN
IF ~~ THEN ERPlayer Blush
    @321
  == EDWINJ
    @322
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Drow2a
    @323
  == EDWINJ
    @324
END IF ~~ EXIT

CHAIN
IF ~~ THEN ERPlayer Drow2b
    @325
  == EDWINJ
    @326
END ++ @327 EXTERN ERPlayer Drow3a
    ++ @328 EXTERN ERPlayer Drow3b
    ++ @329 EXTERN EDWINJ Drow3c

CHAIN
IF ~~ THEN ERPlayer Drow3a
    @330
  == EDWINJ
    @331
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Drow3b
    @332
  == EDWINJ
    @333
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Drow2c
    @334
  == EDWINJ
    @335
END ++ @336 EXTERN EDWINJ Drow4a
    ++ @337 EXTERN EDWINJ Drow4b

CHAIN
IF ~~ THEN ERPlayer Drow5
    @338
   == EDWINJ
    @339
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~Global("ERDrow", "LOCALS", 1)~ THEN ERPlayer Drow21
    @340
     DO ~SetGlobal("ERDrow", "LOCALS", 0)~
  == EDWINJ
    @341
  == ERPlayer
    @342
END ++ @343 EXTERN ERPlayer Drow22a
    ++ @344 EXTERN ERPlayer Drow22b
    ++ @345 EXTERN EDWINJ NoLust

CHAIN
IF ~~ THEN ERPlayer Drow22a
    @346
  == EDWINJ
    @347
  == ERPlayer
    @348
  == EDWINJ
    @349
END ++ @350 EXTERN ERPlayer Drow22a1
    ++ @351 EXTERN EDWINJ Drow22a2

CHAIN
IF ~~ THEN ERPlayer Drow22a1
    @352
  == ERPlayer
    @353
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN EDWINJ Drow22a2
    @354
  == ERPlayer
    @355
   =
    @356
   =
    @357
   =
    @358
   =
    @359
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT

CHAIN
IF ~~ THEN ERPlayer Drow22b
    @360
  == EDWINJ
    @361
END ++ @362 EXTERN ERPlayer Drow22b1
    ++ @363 EXTERN ERPlayer Drow22a

CHAIN
IF ~~ THEN ERPlayer Drow22b1
    @364
  == EDWINJ
    @365
END IF ~~ DO ~ActionOverride(Player1, SetDialogue(""))~ EXIT












