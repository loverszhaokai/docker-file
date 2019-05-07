#!/bin/sh

#
# execute all the configs in conf/
#

for fpath in ./conf/*; do
    echo "fpath=$fpath"

    if [ -f $fpath ]
    then
        cmd="/curator/curator --config /curator_crontab/curator.yml  $fpath"
        echo "cmd=$cmd"
        $cmd
    fi

done
