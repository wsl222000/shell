#!/bin/bash
needed="bash cut egrep expr grep let ps sed sort tail test tr wc"
        for i in `echo $needed`
        do
                type $i > /dev/null 2>&1 /dev/null
                if [ $? -eq 1 ]
                then
                        echo "I am missing an important component : $i"
                        echo "Cannot continue, sorry, try to find the missing one..."
                        exit 3
                fi
        done

