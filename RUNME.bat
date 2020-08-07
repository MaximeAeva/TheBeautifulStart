CLS

SET/P NAME=Project name: 
SET/P PATH=Directories path:

MD %NAME%

CD %NAME%



MD src
MD inc
MD lib
MD res

CD..

COPY "bin\main.cpp" "%NAME%\src"
COPY "bin\Makefile" "%NAME%"
COPY "bin\README.md" "%NAME%"

MOVE %NAME% %PATH%

CLS

tree %PATH%\%NAME% /F 

PAUSE




