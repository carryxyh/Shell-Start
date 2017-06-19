export LANG=C

export ALT_BOOTDIR=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

export ALLOW_DOWNLOADS=true

export HOTSPOT_BUILD_JOBS=2
export ALT_PARALLEL_COMPILE_JOBS=2

export SKIP_COMPARE_IMAGES=true

export USE_PRECOMPILED_HEADER=true

export BUILD_LANGTOOLS=true
export BUILD_JAXP=false
export BUILD_JAXWS=false
export BUILD_CORBA=false
export BUILD_HOTSPOT=true
export BUILD_JDK=true

export ALT_CUPS_HEADERS_PATH=/Users/xiuyuhang/Downloads/openjdk-jdk7u-jdk7u/cups-2.2.3

export COMPILER_WARNINGS_FATAL=false

BUILD_DEPLOY=false
BUILD_INSTAL=false

export ALT_OUTPUTDIR=/Users/xiuyuhang/Downloads/build

unset JAVA_HOME
unset CLASSPATH

make SDKROOT=$(xcodebuild -sdk macosx -version | grep '^Path: ' | sed 's/^Path: //') LFLAGS='-Xlinker -lstdc++' ALT_BOOTDIR=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home ARCH_DATA_MODEL=64 USE_CLANG=true CC=clang LP64=1 fastdebug_build 2>&1 | tee $ALT_OUTPUTDIR/build.log

#sudo ln -is /usr/bin/llvm-g++ /Applications/Xcode.app/Contents/Developer/usr/bin/llvm-g++

#sudo ln -is /usr/bin/llvm-gcc /Applications/Xcode.app/Contents/Developer/usr/bin/llvm-gcc

#sudo ln -s /usr/X11/include/freetype2/freetype/ /usr/X11/include/freetype

# find . -name "*.java" -exec sh -c "iconv -f UTF8 -t ASCII {} > {}" \;