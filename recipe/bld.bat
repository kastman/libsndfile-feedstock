setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir CMakeBuild
cd CMakeBuild

:: Configure using the CMakeFiles
cmake .. -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
         -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
         -DCMAKE_BUILD_TYPE:STRING=Release

if errorlevel 1 exit 1

:: Build!
cmake --build . --target INSTALL
