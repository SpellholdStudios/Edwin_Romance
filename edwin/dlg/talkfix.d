APPEND EDWINJ
IF ~CombatCounter(0)
Global("ERFlirt","GLOBAL",0)
IsGabber(Player1)~ BaseFix
  SAY @0
  + ~Gender(Myself,MALE)~ + @1 + EdwinChatFixer
  + ~Gender(Myself,FEMALE)~ + @2 + EdwinaChatFixer
END

IF ~~ EdwinChatFixer
  SAY @3
  IF ~~ DO ~StartCutScene("EdwinFix")~ EXIT
END

IF ~~ EdwinaChatFixer
  SAY @3
  IF ~~ DO ~StartCutScene("EdwinaFi")~ EXIT
END
END
