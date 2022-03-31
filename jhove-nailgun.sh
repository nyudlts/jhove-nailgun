#!/bin/bash

. "$(dirname $BASH_SOURCE)/jhove-nailgun-env.sh"

cmd="java -classpath \"$APPCLASSPATH\" com.facebook.nailgun.NGServer"

echo "You may now run JHOVE by typing: ng Jhove -c $JNG_HOME/conf/jhove.conf [options]" >&2

eval "exec $cmd"
