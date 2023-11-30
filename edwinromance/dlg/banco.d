/////////////////////////////////////////////////////////
//                                                     //
//  EDWIN ROMANCE MOD - BANCO THE LICH                 //
//                                                     //
/////////////////////////////////////////////////////////

//BANCO = LICH
//REDW1 = INVOKER    Monferion Palas
//REDW2 = CONJURER   Orlo Ravonar
//REDW3 = ENCHANTER  Ekaterina Drosor

BEGIN ~REDW1~ // blank files
BEGIN ~REDW2~
BEGIN ~REDW3~

BEGIN ~BANCO~

IF ~Global("LichTalkedToEdwin","ARBASE",0)~ THEN BEGIN b0
   SAY @0
   IF ~~ THEN DO ~SetGlobal("LichTalkedToEdwin","ARBASE",1)~ GOTO BancoEddieChain1
END

CHAIN BANCO BancoEddieChain1
  @1
== BEDWIN
  @2
=
  @3
=
  @4
== REDW1
@5
== REDW2
@6
== REDW3
@7
== BEDWIN
@8
=
  @9
== BANCO
  @10
  DO ~SetGlobal("LichTalkedToEdwin","ARBASE",2)~
EXIT





