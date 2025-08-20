#!/bin/bash
clear
echo "Welcome to NanoMC!"
echo "github.com/skidsploiter/NanoMC"

# Main directory of the game
MC_DIR="$(pwd)/mcdata"
# Where saves/, resourcepacks/, and screenshots/ dirs are, plus options.txt and servers.dat
GAME_DIR="${MC_DIR}"
# Libraries and resources directory
ASSETS_DIR="${MC_DIR}/assets"
ASSETS_INDEX="1.8"
# Minecraft version
VERSION="1.8.9"
# Natives directory
NATIVES_DIR="${MC_DIR}/natives/1.8.9"
# Set username
read -p "Set a Username: " PLAYER_NAME
# Resolution
WIDTH=930
HEIGHT=540

cd "${MC_DIR}"

JAVA_CMD="java"
# You can replace with a custom java path if NOT on PATH, e.g. /usr/lib/jvm/.../bin/java

"$JAVA_CMD" -Xmx2G \
  -Djava.library.path="$NATIVES_DIR" \
  -cp "${MC_DIR}/libraries/oshi-project/oshi-core/1.1/oshi-core-1.1.jar:\
${MC_DIR}/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/lwjgl-2.9.4-nightly-20150209.jar:\
${MC_DIR}/libraries/org/lwjgl/lwjgl/lwjgl-platform/2.9.4-nightly-20150209/lwjgl-platform-2.9.4-nightly-20150209-natives-windows.jar:\
${MC_DIR}/libraries/org/lwjgl/lwjgl/lwjgl_util/2.9.4-nightly-20150209/lwjgl_util-2.9.4-nightly-20150209.jar:\
${MC_DIR}/libraries/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2.jar:\
${MC_DIR}/libraries/org/apache/commons/commons-compress/1.8.1/commons-compress-1.8.1.jar:\
${MC_DIR}/libraries/org/apache/httpcomponents/httpcore/4.3.2/httpcore-4.3.2.jar:\
${MC_DIR}/libraries/optifine/optifine/1.8.9_HD_U_M5/OptiFine-1.8.9_HD_U_M5.jar:\
${MC_DIR}/libraries/optifine/launchwrapper-of/2.2/launchwrapper-of-2.2.jar:\
${MC_DIR}/libraries/org/apache/httpcomponents/httpclient/4.3.3/httpclient-4.3.3.jar:\
${MC_DIR}/libraries/org/apache/logging/log4j/log4j-core/2.0-beta9/log4j-core-2.0-beta9.jar:\
${MC_DIR}/libraries/org/apache/logging/log4j/log4j-api/2.0-beta9/log4j-api-2.0-beta9.jar:\
${MC_DIR}/libraries/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar:\
${MC_DIR}/libraries/net/sf/jopt-simple/jopt-simple/4.6/jopt-simple-4.6.jar:\
${MC_DIR}/libraries/net/java/jutils/jutils/1.0.0/jutils-1.0.0.jar:\
${MC_DIR}/libraries/net/java/dev/jna/platform/3.4.0/platform-3.4.0.jar:\
${MC_DIR}/libraries/net/java/dev/jna/jna/3.4.0/jna-3.4.0.jar:\
${MC_DIR}/libraries/net/java/jinput/jinput-platform/2.0.5/jinput-platform-2.0.5-natives-windows.jar:\
${MC_DIR}/libraries/net/java/jinput/jinput/2.0.5/jinput-2.0.5.jar:\
${MC_DIR}/libraries/commons-io/commons-io/2.4/commons-io-2.4.jar:\
${MC_DIR}/libraries/tv/twitch/twitch-platform/6.5/twitch-platform-6.5-natives-windows-64.jar:\
${MC_DIR}/libraries/tv/twitch/twitch-external-platform/4.5/twitch-external-platform-4.5-natives-windows-64.jar:\
${MC_DIR}/libraries/tv/twitch/twitch/6.5/twitch-6.5.jar:\
${MC_DIR}/libraries/io/netty/netty-all/4.0.23.Final/netty-all-4.0.23.Final.jar:\
${MC_DIR}/libraries/com/google/code/gson/gson/2.2.4/gson-2.2.4.jar:\
${MC_DIR}/libraries/com/google/guava/guava/17.0/guava-17.0.jar:\
${MC_DIR}/libraries/com/paulscode/libraryjavasound/20101123/libraryjavasound-20101123.jar:\
${MC_DIR}/libraries/com/paulscode/soundsystem/20120107/soundsystem-20120107.jar:\
${MC_DIR}/libraries/com/paulscode/codecjorbis/20101023/codecjorbis-20101023.jar:\
${MC_DIR}/libraries/com/paulscode/librarylwjglopenal/20100824/librarylwjglopenal-20100824.jar:\
${MC_DIR}/libraries/com/paulscode/codecwav/20101023/codecwav-20101023.jar:\
${MC_DIR}/libraries/com/mojang/authlib/1.5.21/authlib-1.5.21.jar:\
${MC_DIR}/libraries/com/mojang/realms/1.7.53/realms-1.7.53.jar:\
${MC_DIR}/libraries/com/ibm/icu/icu4j-core-mojang/51.2/icu4j-core-mojang-51.2.jar:\
${MC_DIR}/libraries/commons-codec/commons-codec/1.9/commons-codec-1.9.jar:\
${MC_DIR}/versions/1.8.9/1.8.9.jar" \
  net.minecraft.launchwrapper.Launch \
  --username "$PLAYER_NAME" \
  --version 1.8.9 \
  --accessToken 0 \
  --userProperties {} \
  --gameDir "$GAME_DIR" \
  --assetsDir "$ASSETS_DIR" \
  --assetIndex 1.8 \
  --width "$WIDTH" \
  --height "$HEIGHT" \
  --tweakClass optifine.OptiFineTweaker
