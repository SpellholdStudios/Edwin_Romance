/////////////////////////////////////////////////////////
//                                                     //
//EDWIN ROMANCE MOD : TERL02                           //
//NEW DIALOG FROM SCRATCH FOR EDWIN ROMANCE            //
/////////////////////////////////////////////////////////
BEGIN ~TERL02~

IF ~Global("EdwinRomanceActive","GLOBAL",2)
See("Edwin") Global("EdwinDekkieLetter","GLOBAL",1)~ THEN BEGIN ERTerl
  SAY @0
  IF ~~ THEN  DO ~SetGlobal("EdwinDekkieLetter","GLOBAL",2)~ EXTERN ~BEDWIN~ EdwinTerlChain
END

IF ~~ THEN BEGIN ERTerl2
  SAY @1
  IF ~~ THEN DO ~ActionOverride("Terl02",EscapeArea())~ EXIT
END

IF ~Global("EdwinRomanceActive","GLOBAL",2)
!See("Edwin") Global("EdwinDekkieLetter","GLOBAL",1)~ THEN BEGIN ERTerl3
  SAY @2
  IF ~~ THEN EXIT
END

