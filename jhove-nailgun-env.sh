#!/bin/bash

JNG_ENV_SCRIPT="$0"

# Resolve symlinks to this script
while [ -h "$JNG_ENV_SCRIPT" ] ; do
  ls=`ls -ld "$JNG_ENV_SCRIPT"`
  # Drop everything prior to ->
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    JNG_ENV_SCRIPT="$link"
  else
    JNG_ENV_SCRIPT=`dirname "$FITS_ENV_SCRIPT"`/"$link"
  fi
done

JNG_HOME=`dirname $JNG_ENV_SCRIPT`

export JNG_HOME

# Uncomment the following line if you want "file utility" to dereference and follow symlinks.
# export POSIXLY_CORRECT=1

# concatenate args and use eval/exec to preserve spaces in paths, options and args
args=""
for arg in "$@" ; do
    args="$args \"$arg\""
done

# Application classpath
APPCLASSPATH=""
JCPATH=${JNG_HOME}/lib
# Add on extra jar files to APPCLASSPATH
for i in "$JCPATH"/*.jar; do
    APPCLASSPATH="$APPCLASSPATH":"$i"
done
