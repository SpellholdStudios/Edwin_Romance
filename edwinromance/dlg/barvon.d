/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : BARVON                           //
//NEW DIALOG FROM SCRATCH FOR EDWIN ROMANCE            //
/////////////////////////////////////////////////////////

BEGIN ~BARVON~   //BARVON IS THE NAME OF THE DIALOG WE ARE CREATING AND THE BARVON.D FILE
IF ~Global("BarvonMeetsEddie","LOCALS",0)~ THEN BEGIN BARVON1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("BarvonMeetsEddie","LOCALS",1) SetGlobal("DekarasComplain","GLOBAL",2)~ EXTERN ~BEDWIN~ BE1
END

IF ~~ THEN BEGIN BARVON2    // BARVON2 IS A LABEL
  SAY @1
  IF ~~ THEN DO ~
  ClearAllActions()
  StartCutSceneMode()
  FadeToColor([20.0],0)
  Wait(1)
  MoveViewPoint([4325.2436],0)
  JumpToPoint([4325.2435])
  ActionOverride(Player1,JumpToPoint([4508.2238]))
  ActionOverride(Player2,JumpToPoint([4472.2295]))
  ActionOverride(Player3,JumpToPoint([4444.2329]))
  ActionOverride(Player4,JumpToPoint([4456.2367]))
  ActionOverride(Player5,JumpToPoint([4517.2342]))
  ActionOverride(Player6,JumpToPoint([4535.2289]))
  ActionOverride(Player1,Face(2))
  ActionOverride(Player2,Face(2))
  ActionOverride(Player3,Face(2))
  ActionOverride(Player4,Face(2))
  ActionOverride(Player5,Face(2))
  ActionOverride(Player6,Face(2))
  Wait(2)
  FadeFromColor([20.0],0)
  Face(0)
  Wait(2)
  StartDialogueNoSet("Edwin")~
  EXIT
END

IF ~Global("BarvonMeetsEddie","LOCALS",1)~ THEN BEGIN BARVON3   // BARVON3 IS A LABEL
  SAY @2
  IF ~~ THEN DO ~
  SetGlobal("BarvonMeetsEddie","LOCALS",2)
  CreateCreature("Dekaras",[4135.2363],14)
  DestroySelf()~
  EXIT
END

CHAIN BEDWIN BE1    // BE1 IS A LABEL
@3
  == BARVON
@4
  =
@5
  == BEDWIN
@6
  == BARVON
@7
EXTERN BARVON BARVON2 // BARVON IS A NAME OF THE DIALOG FILE 'BARVON2' IS A LABEL




