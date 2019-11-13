BEGIN ER_Love1

EXTEND_BOTTOM HGWRA01 24
IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("er_loc1")~ EXIT
END

INTERJECT HGWRA01 18 ER_wra01
 == HGWRA01 IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ THEN
		@0
                 DO ~SetGlobal("Er_lovedone","GLOBAL",1)~
 == EDWIN25J IF ~Global("EdwinRomanceActive","GLOBAL",2) InParty("Edwin")~ THEN
		@1
END IF ~~ EXTERN HGWRA01 24

CHAIN
IF ~True()~ THEN ER_Love1 erlovechain
  @2
 == EDWIN25J
  @3
 == ER_Love1
  @4
 == EDWIN25J
  @5
 == ER_Love1
  @6
 == EDWIN25J
  @7
 == ER_Love1
  @8
 == EDWIN25J
  @9
 == ER_Love1
  @10
 == EDWIN25J
  @11
 == ER_Love1
  @12
 == EDWIN25J
  @13
 == ER_Love1
  @14
 =
  @15
 == EDWIN25J
  @16
 == ER_Love1
  @17
 =
  @18
 == EDWIN25J
  @19
END	++ @20 EXTERN HGWRA01 25
	++ @21 EXTERN HGWRA01 25
	++ @22 EXTERN HGWRA01 25
	++ @23 EXTERN HGWRA01 25
	+ ~CheckStatGT(Player1,16,WIS)~ + @24 EXTERN HGWRA01 25
	+ ~CheckStatGT(Player1,16,WIS)~ + @25 EXTERN HGWRA01 25
