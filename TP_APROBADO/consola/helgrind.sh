#!/bin/bash
FILE=consola
make $FILE
if test -f "./$FILE"; then
    valgrind --tool=helgrind ./$FILE cfg/Instrucciones.txt 40
fi