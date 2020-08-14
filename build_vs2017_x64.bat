SET SOURCE_DIR=.
SET GENERATOR=Visual Studio 15 2017

SET VSPROJECT_DIR="./vsprojects/x64"
cmake CMakeLists.txt -G "%GENERATOR% Win64" -S %SOURCE_DIR% -B %VSPROJECT_DIR% -DLIBRARY_SUFFIX=""
cmake --build %VSPROJECT_DIR% --config release

SET VSPROJECT_DIR="./vsprojects/x64_debug"
cmake CMakeLists.txt -G "%GENERATOR% Win64" -S %SOURCE_DIR% -B %VSPROJECT_DIR% -DLIBRARY_SUFFIX=""
cmake --build %VSPROJECT_DIR% --config debug
