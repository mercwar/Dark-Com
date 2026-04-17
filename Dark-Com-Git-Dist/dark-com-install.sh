#!/bin/sh

# 0. Clean previous builds
rm -rf Dark-Com
rm -rf Dark-Com-Git-Dist
rm -rf temp_dist
rm -rf javafx.zip
rm -rf javafx-sdk-*

# 1. Clone your repo
git clone https://github.com/mercwar/Dark-Com
mkdir Dark-Com-Git-Dist
mv Dark-Com/Dark-Com-Git-Dist/* Dark-Com-Git-Dist/
rm -rf Dark-Com

# 2. Check if Java is installed
if ! command -v java >/dev/null 2>&1; then
    echo "Java not found — installing Java runtime..."

    curl -L -o jdk.zip "https://api.adoptium.net/v3/binary/latest/25/ga/windows/x64/jdk/hotspot/normal/eclipse"
    unzip jdk.zip -d jdk_temp
    rm jdk.zip

    mv jdk_temp/* Dark-Com-Git-Dist/jdk/
    rm -rf jdk_temp

    export PATH="$PATH:$(pwd)/Dark-Com-Git-Dist/jdk/bin"
else
    echo "Java detected — using system Java."
fi

# 3. Download JavaFX redistributable
curl -L -o javafx.zip https://download2.gluonhq.com/openjfx/21.0.2/openjfx-21.0.2_windows-x64_bin-sdk.zip

# 4. Extract redistributable
unzip javafx.zip

# 5. Copy ALL JavaFX runtime libs into the Dark-Com folder
cp -r javafx-sdk-*/lib/* Dark-Com-Git-Dist/
cp -r javafx-sdk-*/bin/* Dark-Com-Git-Dist/

# 6. Clean up
rm -rf javafx.zip
rm -rf javafx-sdk-*

# 7. Verify WebKit DLL
ls Dark-Com-Git-Dist | grep jfxwebkit.dll

# ⭐ 8. FIX: Change directory before launching
cd Dark-Com-Git-Dist

# 9. Launch Dark-Com
./Dark-Com.exe
