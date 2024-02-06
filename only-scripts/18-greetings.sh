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
        h|*) USAGE; exit ;;
    esac

done

