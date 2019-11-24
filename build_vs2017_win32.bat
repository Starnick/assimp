SET SOURCE_DIR=.
SET GENERATOR=Visual Studio 15 2017

SET VSPROJECT_DIR="./vsprojects/Win32"
cmake CMakeLists.txt -G "%GENERATOR%" -S %SOURCE_DIR% -B %VSPROJECT_DIR% -DLIBRARY_SUFFIX=""
cmake --build %VSPROJECT_DIR% --config release
