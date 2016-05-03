#! /bin/sh
cd "${APP_DATA}"

# Make sure service is started with system locale
#if [ -r /etc/default/locale ]; then
#	. /etc/default/locale
#	export LANG
#fi

# to make sure ffmpeg is found and used if present in start directory 
#export PATH=.:${PATH}

# -Xss256k: thread stack size. 256K reduces per-thread memory usage and may prevent "java.lang.OutOfMemoryError: unable to create new native thread" on some systems
# -Djava.awt.headless=true: required for image transcoding to work on headless systems (eg no X-Window libraries)

java -Xss256k -Djava.awt.headless=true -Djava.net.preferIPv4Stack=true -Dfile.encoding="UTF-8" -jar /usr/lib/bubbleupnpserver/BubbleUPnPServerLauncher.jar -dataDir ${APP_DATA} -httpPort "${HTTP_PORT}" -httpsPort "${HTTPS_PORT}" </dev/null >std.out 2>&1 &
