#!/bin/bash

# loading
loading(){

BAR='///////////////////////////'   

for i in {1..20}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep .1                 
done

}