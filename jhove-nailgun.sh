#!/bin/sh

java -Xms1g -Xmx1g -XX:MaxMetaspaceSize=1g -classpath :./lib/aiff-hul-1.6.1.jar:./lib/ascii-hul-1.4.1.jar:./lib/gif-hul-1.4.2.jar:./lib/html-hul-1.4.1.jar:./lib/jhove-apps-1.24.1.jar:./lib/jhove-ext-modules-1.24.1.jar:./lib/jpeg2000-hul-1.4.2.jar:./lib/jpeg-hul-1.5.2.jar:./lib/nailgun-server-1.0.1.jar:./lib/pdf-hul-1.12.2.jar:./lib/tiff-hul-1.9.2.jar:./lib/utf8-hul-1.7.1.jar:./lib/wave-hul-1.8.1.jar:./lib/xml-hul-1.5.1.jar com.facebook.nailgun.NGServer
