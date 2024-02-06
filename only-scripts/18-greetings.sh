#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE::$(basemaan $0) -n<name> -w<wishes>"
    echo "Options::"
    echo "-n, specify the name (mandatory)"
    echo "-w, specify the wishes. ex, Good morning"
    echo "-h, Display help and exit"

}


while getopts ":n:w:h:" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
       \?) echo "Invalid Options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit ;;
         h|*) USAGE; exit ;;
    esac

done

if [ -z $NAME ] || [ -z $WISHES ]; then
    echo "Error: Both -n and -w are mandatory options"
    USAGE
    exit 1
fi

echo " Hellow $NAME, $WISHES. I have been learning shell Script"
