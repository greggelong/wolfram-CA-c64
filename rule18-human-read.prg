10 PRINT"{clr}{lgreen}";
11 POKE 53281,0:POKE 53280,8
20 POKE 1024 +19,102 :POKE 55296+19,2
30 FOR Y = 1TO 23:
35 FOR X = 1 TO 38:
50 L = PEEK(1024+(X-1)+40*(Y-1))
60 M = PEEK(1024+X+40*(Y-1))
70 R = PEEK(1024+(X+1)+40*(Y-1))
75 REM  CHECK THE RULESET
80 IF L =32 AND M =32 AND R =32 THENGOSUB 600 :GOTO300: REM 0
85 IF L =32 AND M =32 AND R =102THENGOSUB 500 :GOTO300: REM 2
90 IF L =32 AND M =102AND R =32 THENGOSUB 600 :GOTO300: REM 4
95 IF L =32 AND M =102AND R =102THENGOSUB 600 :GOTO300: REM 8
100 IF L =102AND M =32 AND R =32 THENGOSUB 500 :GOTO300: REM 16
105 IF L =102AND M =32 AND R =102THENGOSUB 600 :GOTO300: REM 32
115 IF L =102AND M =102AND R =102THENGOSUB 600 :GOTO300: REM 64
120 IF L =102AND M =102AND R =102THENGOSUB 600 :GOTO300: REM 128
300 NEXTX
350 NEXTY
400 END
499 REM SUBROUTINE TO PRINT
500 POKE 1024 +X + 40*Y,102:REM BLOCK AND COLOR
510 POKE 55296+X + 40*Y,2:RETURN
600 POKE 1024 +X + 40*Y,32: RETURN 
