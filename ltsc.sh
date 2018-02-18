#!/bin/bash

normal=$(tput sgr0)
fgcol=$(tput setaf 3)
bgcol=$(tput setab 1)
bold=$(tput bold)

if [ ! $1 ] || [ ! $2 ]
 then
    echo ""
    echo "${fgcol}${bgcol}${bold}  Logitech Trackball Speedcontrol for Linux                        ${normal}"
    echo "${bgcol} ${normal}${fgcol} a simple script that uses ${bold}xinput${normal}${fgcol} to adjust the trackball speed. ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                                                                 ${bgcol} ${normal}"
    echo "${bgcol} ${normal}  ${bold}ltsc.sh${normal} [${bold}NAME${normal}] [${bold}SPEED${normal}]                                         ${bgcol} ${normal}"
    echo "${bgcol} ${normal}          │      │                                               ${bgcol} ${normal}"
    echo "${bgcol} ${normal}          ├─── ${bold}1${normal} = Logitech MX Ergo                              ${bgcol} ${normal}"
    echo "${bgcol} ${normal}          └─── ${bold}2${normal} = Logitech M570                                 ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                 │                                               ${bgcol} ${normal}" 
    echo "${bgcol} ${normal}                 ├──── ${bold}1${normal} = slow                                  ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                 ├──── ${bold}5${normal} = normal                                ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                 ├─── ${bold}10${normal} = fast                                  ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                 └─── ${bold}20${normal} = very fast                             ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                                                                 ${bgcol} ${normal}"
    echo "${bgcol} ${normal}     ${bold}Example:${normal} ltsc.sh 1 5                                        ${bgcol} ${normal}"
    echo "${bgcol} ${normal}                                                                 ${bgcol} ${normal}"    
    echo "${bgcol}                                                                   ${normal}"
    echo ""
    exit 1
fi

if [ $1 = 1 ] 
  then
   TBN='Logitech MX Ergo'
fi

if [ $1 = 2 ] 
 then
   TBN='Logitech M570'
fi

xinput set-prop "pointer:$TBN" "Coordinate Transformation Matrix" $2, 0, 0, 0, $2, 0, 0, 0, 1

exit 
