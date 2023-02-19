#!/bin/bash



loading(){
sp='/-\|'
printf ' '
while true; do
    printf '\b%.1s' "$sp"
    sp=${sp#?}${sp%???}
done

}