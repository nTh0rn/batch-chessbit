goto skip_comment1
Chessbit
Written by Nikolas Thornton
https://www.nthorn.com/
:skip_comment1
@echo off
cls
setlocal enableextensions
setlocal enabledelayedexpansion
set fen=rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR
set white_king_pos=58
set black_king_pos=51
set num=0
set black_p_eval=0 0 0 0 0 0 0 0 5 10 10 -20 -20 10 10 5 5 -5 -10 0 0 -10 -5 5 0 0 0 20 20 0 0 0 5 5 10 25 25 10 5 5 10 10 20 30 30 20 10 10 50 50 50 50 50 50 50 50 0 0 0 0 0 0 0 0
set white_n_eval=-50 -40 -30 -30 -30 -30 -40 -50 -40 -20 0 0 0 0 -20 -40 -30 0 10 15 15 10 0 -30 -30 5 15 20 20 15 5 -30 -30 0 15 20 20 15 0 -30 -30 5 10 15 15 10 5 -30 -40 -20 0 5 5 0 -20 -40 -50 -40 -30 -30 -30 -30 -40 -50
set white_b_eval=-20 -10 -10 -10 -10 -10 -10 -20 -10 0 0 0 0 0 0 -10 -10 0 5 10 10 5 0 -10 -10 5 5 10 10 5 5 -10 -10 0 10 10 10 10 0 -10 -10 10 10 10 10 10 10 -10 -10 5 0 0 0 0 5 -10 -20 -10 -10 -10 -10 -10 -10 -20
set white_r_eval=0 0 0 0 0 0 0 0 5 10 10 10 10 10 10 5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 0 0 0 5 5 0 0 0
set white_q_eval=-20 -10 -10 -5 -5 -10 -10 -20 -10 0 0 0 0 0 0 -10 -10 0 5 5 5 5 0 -10 -5 0 5 5 5 5 0 -5 0 0 5 5 5 5 0 -5 -10 5 5 5 5 5 0 -10 -10 0 5 0 0 0 0 -10 -20 -10 -10 -5 -5 -10 -10 -20
set white_k_eval=-30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30 -20 -30 -30 -40 -40 -30 -30 -20 -10 -20 -20 -20 -20 -20 -20 -10  20 20 0 0 0 0 20 20  20 30 10 0 0 10 30 20

set white_p_eval=0 0 0 0 0 0 0 0 50 50 50 50 50 50 50 50 10 10 20 30 30 20 10 10 5 5 10 25 25 10 5 5 0 0 0 20 20 0 0 0 5 -5 -10 0 0 -10 -5 5 5 10 10 -20 -20 10 10 5 0 0 0 0 0 0 0 0
set black_n_eval=-50 -40 -30 -30 -30 -30 -40 -50 -40 -20 0 5 5 0 -20 -40 -30 5 10 15 15 10 5 -30 -30 0 15 20 20 15 0 -30 -30 5 15 20 20 15 5 -30 -30 0 10 15 15 10 0 -30 -40 -20 0 0 0 0 -20 -40 -50 -40 -30 -30 -30 -30 -40 -50
set black_b_eval=-20 -10 -10 -10 -10 -10 -10 -20 -10 5 0 0 0 0 5 -10 -10 10 10 10 10 10 10 -10 -10 0 10 10 10 10 0 -10 -10 5 5 10 10 5 5 -10 -10 0 5 10 10 5 0 -10 -10 0 0 0 0 0 0 -10 -20 -10 -10 -10 -10 -10 -10 -20
set black_r_eval=0 0 0 5 5 0 0 0 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 -5 0 0 0 0 0 0 -5 5 10 10 10 10 10 10 5 0 0 0 0 0 0 0 0
set black_q_eval=-20 -10 -10 -5 -5 -10 -10 -20 -10 0 0 0 0 5 0 -10 -10 0 5 5 5 5 5 -10 -5 0 5 5 5 5 0 0 -5 0 5 5 5 5 0 -5 -10 0 5 5 5 5 0 -10 -10 0 0 0 0 0 0 -10 -20 -10 -10 -5 -5 -10 -10 -20
set black_k_eval=20 30 10 0 0 10 30 20  20 20 0 0 0 0 20 20  -10 -20 -20 -20 -20 -20 -20 -10 -20 -30 -30 -40 -40 -30 -30 -20 -30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30 -30 -40 -40 -50 -50 -40 -40 -30

set piece_value_p=100
set piece_value_n=320
set piece_value_b=330
set piece_value_r=500
set piece_value_q=900
set piece_value_k=20000

set first_eval=true

::set fen=8/8/4pp2/8/8/4P3/8/8

::Generate tiles
FOR /L %%b IN (1,1,8) DO (
	FOR /L %%a IN (1,1,8) DO (
		set num=%num%+1
		set square%%a%%b=-
		set square%%a%%b_color=0
		set square%%a%%b_color_code=8
		set square%%a%%b_moved=false
	)
)

echo eval settings
set eval_color=white
set eval_piece=white_p
set /a count_x=0
set /a count_y=1
:loop_eval
	for %%a in (!%eval_piece%_eval!) do (
		set /a count_x=!count_x!+1
		if "!count_x!"=="9" (
			set /a count_x=1
			set /a count_y=!count_y!+1
		)
		if "!eval_color!"=="white" (
			set /a square!count_x!!count_y!_!eval_piece!_eval=%%a
		) else (
			if NOT "%%a"=="0" (
				set /a square!count_x!!count_y!_!eval_piece!_eval=%%a*-1
			)
		)
	)
	if "%count_x%"=="8" (
		if "%count_y%"=="8" (

			goto eval_%eval_piece%

			:eval_white_p
				set eval_piece=white_n
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_white_n
				set eval_piece=white_b
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_white_b
				set eval_piece=white_r
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_white_r
				set eval_piece=white_q
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_white_q
				set eval_piece=white_k
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_white_k
				echo CALCULATING BLACK PIECES
				set eval_color=black
				set eval_piece=black_p
				set /a count_x=0
				set /a count_y=1
				goto loop_eval



			:eval_black_p
				set eval_piece=black_n
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_black_n
				set eval_piece=black_b
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_black_b
				set eval_piece=black_r
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_black_r
				set eval_piece=black_q
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_black_q
				set eval_piece=black_k
				set /a count_x=0
				set /a count_y=1
				goto loop_eval

			:eval_black_k
				echo DONE CALCULATING EVAL
				goto continue




		)
	)
	goto loop_eval

:continue
echo calling fen
call :fen
echo fen is done
set calc_time1=%TIME:~6,2%%TIME:~9,2%
set /a calc_time2=%calc_time1%
call :calc_legal
set calc_time1=%TIME:~6,2%%TIME:~9,2%
set /a calc_time=%calc_time1%-%calc_time2%
echo %calc_time%
goto print



::Cycle through cordinates and setup board according to FEN
:fen
	set /a x=1
	set /a y=1

	::cycle through FEN code
	set space_var=fen
	call :add_space %fen%
	for %%x in (%fen%) do (
		::check if FEN is a letter or number
		SET "var="&for /f "delims=012345678" %%i in ("%%x") do set "var=%%i"
		if defined var (
			call :fen_piece %%x
		) else (
			call :fen_num %%x
		)
	)
	goto :eof



::Increase X cord by number in FEN code
:fen_num
	set /a x=x + %~1
	goto :eof


::Adds piece to cord
:fen_piece
	set fen_temp=%~1
	if NOT "%~1"=="/" (
		::If black
		set square%x%%y%_color=blank
		echo(%fen_temp%|findstr /v "[abcdefghijklmnopqrstuvwxyz]">nul && (
			set square%x%%y%_color=white
			set square%x%%y%_color_code=F
		) || (
			set square%x%%y%_color=black
			set square%x%%y%_color_code=0
		)
		cls
		set square%x%%y%=%~1
		set /a x=x+1
		goto :eof
	) else (
		set /a x=1
		set /a y=y+1
	)
	goto :eof



::Adds spaces between every character of the FEN code to allow each to be interpreted as a parameter for use in the for loop in :fen
:add_space
	set v=%*
	set vars=
	set /a l=0
:space_loop
	set c=!v:~%l%,1!
	if "%c%"=="" goto space_end
	set "vars=%vars%%c% "
	set /a l+=1
	goto space_loop
:space_end
	set %space_var%=%vars%
	goto :eof





::Print board on screen
:: I know what you're thinking. "Could this process not be automated?"
:: Yes it easily could be, and I did automate it initially fitting all of
:: this into a few lines. However, the board prints much MUCH faster when
:: printed like this instead of automating it. It's ugly but it loads faster.
:print
	::echo %black_king_pos% %white_king_pos%
	cecho {0F}
	echo.
	cecho {00}--{FF}------------------------------------------------{0F}{00}-
	echo.
	cecho {00}--{FF}--{00}--------------------------------------------{FF}--{00}{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{7%square11_color_code%}  %square11%  {8%square21_color_code%}  %square21%  {7%square31_color_code%}  %square31%  {8%square41_color_code%}  %square41%  {7%square51_color_code%}  %square51%  {8%square61_color_code%}  %square61%  {7%square71_color_code%}  %square71%  {8%square81_color_code%}  %square81%  {00}--{FF}--{0F}  8{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{8%square12_color_code%}  %square12%  {7%square22_color_code%}  %square22%  {8%square32_color_code%}  %square32%  {7%square42_color_code%}  %square42%  {8%square52_color_code%}  %square52%  {7%square62_color_code%}  %square62%  {8%square72_color_code%}  %square72%  {7%square82_color_code%}  %square82%  {00}--{FF}--{0F}  7{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{7%square13_color_code%}  %square13%  {8%square23_color_code%}  %square23%  {7%square33_color_code%}  %square33%  {8%square43_color_code%}  %square43%  {7%square53_color_code%}  %square53%  {8%square63_color_code%}  %square63%  {7%square73_color_code%}  %square73%  {8%square83_color_code%}  %square83%  {00}--{FF}--{0F}  6{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{8%square14_color_code%}  %square14%  {7%square24_color_code%}  %square24%  {8%square34_color_code%}  %square34%  {7%square44_color_code%}  %square44%  {8%square54_color_code%}  %square54%  {7%square64_color_code%}  %square64%  {8%square74_color_code%}  %square74%  {7%square84_color_code%}  %square84%  {00}--{FF}--{0F}  5{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{7%square15_color_code%}  %square15%  {8%square25_color_code%}  %square25%  {7%square35_color_code%}  %square35%  {8%square45_color_code%}  %square45%  {7%square55_color_code%}  %square55%  {8%square65_color_code%}  %square65%  {7%square75_color_code%}  %square75%  {8%square85_color_code%}  %square85%  {00}--{FF}--{0F}  4{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{8%square16_color_code%}  %square16%  {7%square26_color_code%}  %square26%  {8%square36_color_code%}  %square36%  {7%square46_color_code%}  %square46%  {8%square56_color_code%}  %square56%  {7%square66_color_code%}  %square66%  {8%square76_color_code%}  %square76%  {7%square86_color_code%}  %square86%  {00}--{FF}--{0F}  3{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{7%square17_color_code%}  %square17%  {8%square27_color_code%}  %square27%  {7%square37_color_code%}  %square37%  {8%square47_color_code%}  %square47%  {7%square57_color_code%}  %square57%  {8%square67_color_code%}  %square67%  {7%square77_color_code%}  %square77%  {8%square87_color_code%}  %square87%  {00}--{FF}--{0F}  2{00}-
	echo.
	cecho {00}--{FF}--{00}--{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--{8%square18_color_code%}  %square18%  {7%square28_color_code%}  %square28%  {8%square38_color_code%}  %square38%  {7%square48_color_code%}  %square48%  {8%square58_color_code%}  %square58%  {7%square68_color_code%}  %square68%  {8%square78_color_code%}  %square78%  {7%square88_color_code%}  %square88%  {00}--{FF}--{0F}  1{00}-
	echo.
	cecho {00}--{FF}--{00}--{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{88}-----{77}-----{00}--{FF}--{00}-
	echo.
	cecho {00}--{FF}--{00}--------------------------------------------{FF}--{00}-
	echo.
	cecho {00}--{FF}------------------------------------------------{0F}{00}-
	echo.
	echo.
	cecho {0F}        A    B    C    D    E    F    G    H
	echo.
	cecho {0F}
	set counter=0
	goto search
	goto make_move

::Input user move (example: e2e4)
:make_move
	::Allow whitespace before the input prompt
	for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
	set /p pgn_move=%BS%        Move:
	<nul set /p uber=test|set /p pgn_move=Move:
	::cls
	set space_var=pgn_move
	call :add_space %pgn_move%
	call :parse_move %pgn_move%
	call :check_pin
	call :calc_legal

	goto print

:undo_last_move
	set mover=%backup_mover%
	set movee=%backup_movee%
	set undo_last_move=true
	call :parse_move_undo
	goto :print




:parse_move_undo
	if "%movee%"=="%black_king_pos%" (
		set black_king_pos=%mover%
	)
	if "%movee%"=="%white_king_pos%" (
		set white_king_pos=%mover%
	)
	set backup_temp_1=!square%backup_movee%!
	set backup_temp_2=!square%backup_movee%_color!
	set backup_temp_3=!square%backup_movee%_color_code!
	set square%movee%=!square%backup_mover%!
	set square%movee%_color=!square%backup_mover%_color!
	set square%movee%_color_code=!square%backup_mover%_color_code!

	set square%mover%=%backup_temp_1%
	set square%mover%_color=%backup_temp_2%
	set square%mover%_color_code=%backup_temp_3%
	goto :eof


::Parce PGN input, turn it into coordinates, and move the piece.
:parse_move
	call :letter_cord %~1 parse_mover_let
	call :letter_cord %~3 parse_movee_let
	call :num_cord %~2 parse_mover_num
	call :num_cord %~4 parse_movee_num
	set mover=%parse_mover_let%%parse_mover_num%
	set movee=%parse_movee_let%%parse_movee_num%
	set backup_mover=%mover%
	set backup_movee=%movee%
	set temp=!legal_moves_%mover%!
	set mover_color=square%mover%_color
	if "%who_moved%"=="!%mover_color%!" (
		echo Not your turn
		goto :eof
	)
	if "!legal_moves_%mover%!"=="!temp:%movee%=!" (
		echo Illegal Move
		goto :eof
	)
	if "%evaluation%"=="true" (
		goto evaluate
	)
	set piece_taken=false
	set mover_color=square%mover%_color
	set movee_color=square%movee%_color
	set mover_color_code=square%mover%_color_code
	set movee_color_code=square%movee%_color_code
	if "%mover%"=="%black_king_pos%" (
		set black_king_pos=%movee%
	)
	if "%mover%"=="%white_king_pos%" (
		set white_king_pos=%movee%
	)

	if NOT "!square%movee%!"=="-" (
		set piece_taken=true
		set piece_taken2=!square%movee%!
		set piece_taken3=%movee_color%
		set piece_taken4=!%movee_color_code%!
		set piece_taken5=!square%movee%_moved!
		set skip=true
	)
	set %movee_color%=!%mover_color%!
	set %mover_color%=0
	set %movee_color_code%=!%mover_color_code%!
	set %mover_color_code%=8
	
	set who_moved=!%movee_color%!
	::if "%parse_movee_let%%parse_movee_num%"
	set square%movee%=!square%mover%!
	set square%mover%=-
	set square%movee%_moved=true
	set square%mover%_moved=false
	goto :eof



::Turn PGN number into coordinate
:num_cord
	set input=%~1
	2>NUL call :num_cord_%input% %~2
	goto :eof
	:num_cord_1
		set %~1=8
		goto :eof
	:num_cord_2
		set %~1=7
		goto :eof
	:num_cord_3
		set %~1=6
		goto :eof
	:num_cord_4
		set %~1=5
		goto :eof
	:num_cord_5
		set %~1=4
		goto :eof
	:num_cord_6
		set %~1=3
		goto :eof
	:num_cord_7
		set %~1=2
		goto :eof
	:num_cord_8
		set %~1=1
		goto :eof



::Turn PGN letter into coordinate
:letter_cord
	set input=%~1
	2>NUL call :let_num_%input% %~2
	goto :eof
	:let_num_a
		set %~1=1
		goto :eof
	:let_num_b
		set %~1=2
		goto :eof
	:let_num_c
		set %~1=3
		goto :eof
	:let_num_d
		set %~1=4
		goto :eof
	:let_num_e
		set %~1=5
		goto :eof
	:let_num_f
		set %~1=6
		goto :eof
	:let_num_g
		set %~1=7
		goto :eof
	:let_num_h
		set %~1=8
		goto :eof


::Calculate legal moves for position & piece
:calc_legal
	set black_legal_moves=
	set white_legal_moves=
	FOR /L %%b IN (1,1,8) DO (
		FOR /L %%a IN (1,1,8) DO (
			call :calc_legal2 %%b%%a
		)
	)
	goto :eof
:calc_legal2
	set input=%~1
	if "!square%input%!"=="-" (
		goto :eof
	)
	set input2=!%input%!
	::The piece's type
	set calc_legal_piece=!square%input%!
	::The piece's coordinate
	set /a calc_legal_piece_pos=%input:square=%
	::The piece's legal moves, resets every calculation.
	set legal_moves_%calc_legal_piece_pos%=0
	call :calc_legal_%calc_legal_piece%
	goto :eof

:calc_legal_r
	set /a calc_legal_move_amount=-10
	set /a calc_legal_move_amount2=-10
	::Check all moves to the left
	:calc_legal_r_loop
		set result=false
		set /a calc_temp=%calc_legal_piece_pos%-%calc_legal_move_amount%
		set temp_color=!square%calc_temp%_color!
		set enemy_king_pos=!%temp_color%_king_pos!
		if not "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (set result=true)
		if "!square%calc_temp%_color!"=="0" (set result=true)
		if "!result!"=="true" (
			if %calc_temp% GTR 10 (
				if "%calc_temp:9=%"=="%calc_temp%" (
					if "%calc_temp:0=%"=="%calc_temp%" (
						set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
						set /a calc_legal_move_amount=%calc_legal_move_amount%+%calc_legal_move_amount2%
						if "!square%calc_temp%_color!"=="0" (
							goto calc_legal_r_loop
						) else (
							if NOT "%who_moved%"=="!square%calc_legal_piece_pos%_color!" (
								if "!enemy_king_pos!"=="%calc_temp%" (
									echo filler
								)
							)
						)
					)
				)
			)
		)
		goto legal_r_%calc_legal_move_amount2%
		:legal_r_-10
			set /a calc_legal_move_amount=10
			set /a calc_legal_move_amount2=10
			goto calc_legal_r_loop
		:legal_r_10
			set /a calc_legal_move_amount=-1
			set /a calc_legal_move_amount2=-1
			goto calc_legal_r_loop
		:legal_r_-1
			set /a calc_legal_move_amount=1
			set /a calc_legal_move_amount2=1
			goto calc_legal_r_loop
		:legal_r_1
			goto :eof

::Calculate all legal moves for the knight.
:calc_legal_n
	::echo calculating knight
	set /a calc_legal_move_amount=-8
	::I wish there was a more pretty way to do this, but the knight can't have their moves generated like sliding pieces can.
	call :calc_legal_n_loop -8
	call :calc_legal_n_loop -19
	call :calc_legal_n_loop -21
	call :calc_legal_n_loop -12
	call :calc_legal_n_loop 8
	call :calc_legal_n_loop 19
	call :calc_legal_n_loop 21
	call :calc_legal_n_loop 12
	goto :eof
	:calc_legal_n_loop
		set /a calc_temp=%calc_legal_piece_pos%+%~1
		set temp_color=!square%calc_temp%_color!
		set enemy_king_pos=!%temp_color%_king_pos!
		set result=false
		if not "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (set result=true)
		if "!square%calc_temp%_color!"=="0" (set result=true)
		if "%result%"=="true" (
			if %calc_temp% GTR 10 (
				if "%calc_temp:9=%"=="%calc_temp%" (
					if "%calc_temp:0=%"=="%calc_temp%" (
						set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
						if NOT "%who_moved%"=="!square%calc_legal_piece_pos%_color!" (
							if "!enemy_king_pos!"=="%calc_temp%" (
								echo filler
							)
						)
						goto :eof
					)
				)
			)
		)
		goto :eof

:calc_legal_b
	set /a calc_legal_move_amount=-9
	set /a calc_legal_move_amount2=-9
	::Check all moves to the left
	:calc_legal_b_loop
		set /a calc_temp=%calc_legal_piece_pos%-%calc_legal_move_amount%
		set temp_color=!square%calc_temp%_color!
		set enemy_king_pos=!%temp_color%_king_pos!
		set result=false
		if not "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (set result=true)
		if "!square%calc_temp%_color!"=="0" (set result=true)
		if "%result%"=="true" (
			if %calc_temp% GTR 10 (
				if "%calc_temp:9=%"=="%calc_temp%" (
					if "%calc_temp:0=%"=="%calc_temp%" (
						set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
						set /a calc_legal_move_amount=%calc_legal_move_amount%+%calc_legal_move_amount2%
						if "!square%calc_temp%_color!"=="0" (
							goto calc_legal_b_loop
						)
					)
				)
			)
		)
		goto legal_b_%calc_legal_move_amount2%

		:legal_b_-9
			set /a calc_legal_move_amount=9
			set /a calc_legal_move_amount2=9
			goto calc_legal_b_loop
		:legal_b_9
			set /a calc_legal_move_amount=-11
			set /a calc_legal_move_amount2=-11
			goto calc_legal_b_loop
		:legal_b_-11
			set /a calc_legal_move_amount=11
			set /a calc_legal_move_amount2=11
			goto calc_legal_b_loop
		:legal_b_11
			goto :eof


:calc_legal_q
	:: This is my favorite part throughout all of my code.
	::For the queen, I just call the code for the bishop
	::and rook and it works.
	call :calc_legal_b
	call :calc_legal_r
	goto :eof
	:calc_legal_k
		call :calc_legal_k_loop -10
		call :calc_legal_k_loop 10
		call :calc_legal_k_loop -1
		call :calc_legal_k_loop 1
		call :calc_legal_k_loop -11
		call :calc_legal_k_loop -9
		call :calc_legal_k_loop 11
		call :calc_legal_k_loop 9
		goto :eof
	:calc_legal_k_loop
		set /a calc_temp=%calc_legal_piece_pos%+%~1
		set result=false
		if not "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (set result=true)
		if "!square%calc_temp%_color!"=="0" (set result=true)
		if "%result%"=="true" (
			if %calc_temp% GTR 10 (
				if "%calc_temp:9=%"=="%calc_temp%" (
					if "%calc_temp:0=%"=="%calc_temp%" (
						set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
						goto :eof
					)
				)
			)
		)
		goto :eof
:calc_legal_p
	set moved=true
	if "!square%calc_legal_piece_pos%_color!"=="white" (
		set calc_legal_move_amount=-1
	) else (
		set calc_legal_move_amount=1
	)
	call :calc_legal_p_loop 11
	call :calc_legal_p_loop -9
	call :calc_legal_p_loop_2 1
	if "%moved%"=="false" (
		call :calc_legal_p_loop_2 2
	)
	goto :eof
	:calc_legal_p_loop
		set /a calc_temp=%calc_legal_piece_pos%+(%~1*%calc_legal_move_amount%)
		set temp_color=!square%calc_temp%_color!
		set enemy_king_pos=!%temp_color%_king_pos!
		set result=false
		if not "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (set result=true)
		if "!square%calc_temp%_color!"=="0" (set result=false)
		if "%result%"=="true" (
			set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
			set calc_temp_color=!square%calc_temp%_color!
			if NOT "%who_moved%"=="!square%calc_legal_piece_pos%_color!" (
				if "!enemy_king_pos!"=="%calc_temp%" (
					call :king_in_check_error
				)
			)
			goto :eof
		)
	goto :eof
	:calc_legal_p_loop_2
		set /a calc_temp=%calc_legal_piece_pos%+(%~1*%calc_legal_move_amount%)
		if "!square%calc_temp%_color!"=="0" (
			if %calc_temp% GTR 10 (
				if "%calc_temp:9=%"=="%calc_temp%" (
					if "%calc_temp:0=%"=="%calc_temp%" (
						set legal_moves_%calc_legal_piece_pos%=!legal_moves_%calc_legal_piece_pos%! %calc_temp%
						if "!square%calc_legal_piece_pos%_moved!"=="false" (
							set moved=false
							set square_%calc_legal_piece_pos%_moved=true
						)
					)
				)
			)
		)
		goto :eof



:check_pin
	set oob=false
	set possible_pin=0
	set nopin=false
	set testing_for=b
	set calc_legal_piece_pos=%black_king_pos%
	call :calc_legal_pin
	set testing_for=b
	set calc_legal_piece_pos=%white_king_pos%
	call :calc_legal_pin
	goto :eof
	:calc_legal_pin
		set testing_for=b
		set /a calc_legal_move_amount=-9
		set /a calc_legal_move_amount2=-9
		::echo calculating bishop left
		::Check all moves to the left
		:calc_legal_pin_loop
			set /a calc_temp=!calc_legal_piece_pos!-!calc_legal_move_amount!
			if NOT "!square%calc_temp%_color!"=="0" (
				if !calc_temp! LSS 11 (
				set oob=true
			)
			if NOT "!calc_temp:9=!"=="!calc_temp!" (
				set oob=true
			)
			if NOT "!calc_temp:0=!"=="!calc_temp!" (
				set oob=true
			)
			if NOT "!oob!"=="true" (
				if NOT "!square%calc_temp%_color!"=="!square%calc_legal_piece_pos%_color!" (
					if "!testing_for!"=="!square%calc_temp%!" (
						call :king_in_check_error
					)
				) else (
					goto legal_pin_!calc_legal_move_amount2!
				)
					set oob=false
			) else (
				set oob=false
				goto legal_pin_!calc_legal_move_amount2!
			)
		) else (
			set /a calc_legal_move_amount=!calc_legal_move_amount!+!calc_legal_move_amount2!
			goto calc_legal_pin_loop
		)
			set /a calc_legal_move_amount=!calc_legal_move_amount!+!calc_legal_move_amount2!
			goto calc_legal_pin_loop


:legal_pin_-9
set testing_for=b
set /a calc_legal_move_amount=9
set /a calc_legal_move_amount2=9
goto calc_legal_pin_loop
:legal_pin_9
set /a calc_legal_move_amount=-11
set /a calc_legal_move_amount2=-11
goto calc_legal_pin_loop
:legal_pin_-11
set testing_for=b
set /a calc_legal_move_amount=11
set /a calc_legal_move_amount2=11
goto calc_legal_pin_loop
:legal_pin_11
set testing_for=r
set /a calc_legal_move_amount=-10
set /a calc_legal_move_amount2=-10
goto calc_legal_pin_loop
:legal_pin_-10
set /a calc_legal_move_amount=10
set /a calc_legal_move_amount2=10
goto calc_legal_pin_loop
:legal_pin_10
set /a calc_legal_move_amount=-1
set /a calc_legal_move_amount2=-1
goto calc_legal_pin_loop
:legal_pin_-1
set /a calc_legal_move_amount=1
set /a calc_legal_move_amount2=1
goto calc_legal_pin_loop
:legal_pin_1
goto :eof


:king_in_check_error
if "!who_moved!"=="!square%calc_legal_piece_pos%_color!" (
echo Illegal Move
goto undo_last_move
) else (
echo %who_moved% checked !square%calc_legal_piece_pos%_color!
)
goto :eof





:search
::if "%first_eval%"=="true" (
set first_eval=false
	set /a eval=0
		FOR /L %%b IN (1,1,8) DO (
			FOR /L %%a IN (1,1,8) DO (
				if NOT "!square%%a%%b_color!"=="0" (
					call :outsource %%a %%b square%%a%%b !square%%a%%b_color!
				)

			)
		)
		set /a eval=!eval!
		echo %eval%
	echo Eval:%eval% / 100
	goto make_move
::) else (
::pause
::)


:outsource
set test=%1%2
set test=square%1%2_%4_!%3!_eval
set three=!%3!
if "%4"=="white" (
set /a eval=!eval!+!%test%!+!piece_value_%three%!
) else (
set /a eval=!eval!+!%test%!+!piece_value_%three%!*-1
)
goto :eof

:outsource_black
set test=%1%2
set test=square%1%2_black_!%3!_eval
call :piece_eval !%3!
set /a eval=!eval!+!%test%!+(!piece_value_%three%!*-1)
set /a eval=%eval%*-1
goto :eof

:piece_eval
	goto piece_eval_%1
	goto :eof
	
	:piece_eval_p
		set /a output=100
		goto :eof
	:piece_eval_n
		set /a output=320
		goto :eof
	:piece_eval_b
		set /a output=330
		goto :eof
	:piece_eval_r
		set /a output=500
		goto :eof
	:piece_eval_q
		set /a output=900
		goto :eof
	:piece_eval_k
		set /a output=20000
		goto :eof