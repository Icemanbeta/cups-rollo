#!/usr/bin/env bash
HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
LIBPODOFO="${HOME}/lib/podofo/vendor"

cd $LIBPODOFO

# Cleanup any previous builds
git clean -fdx -- .
mkdir build

cmake -G "Unix Makefiles" . \
	-DCMAKE_INCLUDE_PATH=/usr/include \
	-DCMAKE_LIBRARY_PATH=/usr/lib \
	-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=./build \
	-DWANT_LIB64:BOOL=TRUE \
	-DPODOFO_BUILD_SHARED:BOOL=TRUE \
	-DPODOFO_BUILD_STATIC:BOOL=FALSE

make

mv src/CMakeFiles/podofo_*/base/*.o src/base
mv src/CMakeFiles/podofo_*/doc/*.o src/doc
mv tools/*/CMakeFiles/*/*.o build

# lib/bindgen/tool.sh lib/podofo/TEMPLATE.yml
