#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
line=""
while read p; do
    for i in $p;
        do
            if [[ $i == '2.550000000000000000e+02' ]]; then
                line="$line m"
            else
                line="${line} █"
            fi
        done
    if [[ ${#line} > 10 ]]; then
        for i in ${line};
            do
                if [[ ${i} == m ]]; then
                    echo -n " "
                else
                    echo -n "${i}"
                fi
                sleep .001
            done
        echo #
        line=""
    fi
done < "${DIR}/../resources/coffee_cup.txt"
echo "              >>>  COFFEE READY - ENJOY :P  <<<"
