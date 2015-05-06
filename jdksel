#!/bin/sh
# change jdk version
cd /System/Library/Frameworks/JavaVM.framework/Versions
vers=$1
jvers=`java -version 2>&1 | fgrep version | awk '{ print $3 ; }' | tr -d '"'`
jnum=`echo $jvers |  awk -F. '{ print $2 ; }'`
if [ "X$vers" = "X" ] ; then
  echo "At $jvers"
elif [ "X$vers" = "X-h" ] ; then
  echo "Usage: jdk [version_num | -h]"
elif [ "X$vers" = "X$jnum" ] ; then
  echo "Already at version $jvers"
elif [ -s "CurrentJDK.$vers" ] ; then
  sudo mv ./CurrentJDK ./CurrentJDK.$jnum
  sudo mv ./CurrentJDK.$vers ./CurrentJDK
else
  echo "Something wrong - don't see ./CurrentJDK.$vers - aborting!"
fi
