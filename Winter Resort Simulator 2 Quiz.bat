@echo off
setlocal enabledelayedexpansion

set /a score=0

:: Questions and answers
set questions[0]=What is the main objective of Winter Resort Simulator 2?
set answers[0]=To manage a winter resort
set questions[1]=Which vehicle is mainly used for grooming slopes in Winter Resort Simulator 2?
set answers[1]=PistenBully
set questions[2]=What can you build in Winter Resort Simulator 2?
set answers[2]=Ski lifts
set questions[3]=What type of weather conditions are simulated in the game?
set answers[3]=Snow
set questions[4]=What is a key feature of Winter Resort Simulator 2 multiplayer mode?
set answers[4]=Cooperative gameplay
set questions[5]=What kind of maintenance can you perform on vehicles?
set answers[5]=Repairs
set questions[6]=Can you customize the terrain in Winter Resort Simulator 2?
set answers[6]=Yes
set questions[7]=What is a common task for players in the game?
set answers[7]=Slope grooming
set questions[8]=What type of facility can you manage in the game?
set answers[8]=Ski resort
set questions[9]=What is the setting of Winter Resort Simulator 2?
set answers[9]=Winter mountain
set questions[10]=What can players transport in the game?
set answers[10]=Skiers
set questions[11]=Is snowmaking a feature in Winter Resort Simulator 2?
set answers[11]=Yes
set questions[12]=What kind of economic management is involved in the game?
set answers[12]=Resort finances
set questions[13]=What type of game mode allows for creative building?
set answers[13]=Sandbox mode
set questions[14]=Can you play Winter Resort Simulator 2 on multiple platforms?
set answers[14]=Yes
set questions[15]=What is essential for operating ski lifts?
set answers[15]=Maintenance
set questions[16]=What do players need to balance in the game?
set answers[16]=Resource management
set questions[17]=Is the game environment dynamic?
set answers[17]=Yes
set questions[18]=What can you control to enhance gameplay?
set answers[18]=Weather settings
set questions[19]=What is the ultimate goal in Winter Resort Simulator 2?
set answers[19]=Successful resort management

:: Loop through questions
for /l %%i in (0,1,19) do (
    echo !questions[%%i]!
    set /p answer=Answer: 
    if /i "!answer!"=="!answers[%%i]!" (
        echo Correct!
        set /a score+=1
    ) else (
        echo Wrong! The correct answer is: !answers[%%i]!
    )
)

echo.
echo You scored !score! out of 20.
pause
