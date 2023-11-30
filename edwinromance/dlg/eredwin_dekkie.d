/////////////////////////////////////////////////////////
//                                                     //
//      EDWIN ROMANCE MOD : EDWIN vs DEKARAS REMINDER  //
//                                                     //
/////////////////////////////////////////////////////////

APPEND EDWINJ

///Edwin Reminds of Dekaras Meeting

IF WEIGHT #16 ~GlobalTimerExpired("MeetingWithDekaras","GLOBAL") Global("DekkieLetter","GLOBAL",1) Global("DekarasComplain","GLOBAL",0)~ THEN BEGIN E161
   SAY @0
   IF ~~ THEN REPLY @1 GOTO E162
   IF ~~ THEN REPLY @2 GOTO E162
   IF ~~ THEN REPLY @3 GOTO E163
   IF ~~ THEN REPLY @4 GOTO E164
END

IF ~~ THEN BEGIN E162
   SAY @5
   IF ~~ THEN DO ~SetGlobal("DekarasComplain","GLOBAL",1) SetGlobalTimer("MeetingWithDekaras","GLOBAL",FOUR_DAYS)~ EXIT
END

IF ~~ THEN BEGIN E163
   SAY @6
   IF ~~ THEN DO ~
	EraseJournalEntry(@10000)
	EraseJournalEntry(@10002)
	EraseJournalEntry(@10004)
   	SetGlobal("EdwinRomanceActive","GLOBAL",3)
        GivePartyAllEquipment()
        LeaveParty()
	EscapeArea()~
        SOLVED_JOURNAL @10003
        EXIT
END

IF ~~ THEN BEGIN E164
   SAY @8
   IF ~~ THEN DO ~SetGlobal("DekarasComplain","GLOBAL",1) SetGlobalTimer("MeetingWithDekaras","GLOBAL",FOUR_DAYS)~ EXIT
END


IF WEIGHT #17 ~GlobalTimerExpired("MeetingWithDekaras","GLOBAL") Global("DekkieLetter","GLOBAL",1) Global("DekarasComplain","GLOBAL",1)~ THEN BEGIN E165
   SAY @9
   IF ~~ THEN DO ~
	EraseJournalEntry(@10000)
	EraseJournalEntry(@10002)
	EraseJournalEntry(@10004)
	SetGlobal("EdwinRomanceActive","GLOBAL",3)
	GivePartyAllEquipment()
	LeaveParty()
	EscapeArea()~
        SOLVED_JOURNAL @10003
        EXIT
END

END
