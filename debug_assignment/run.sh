#!/usr/bin/env bash
if [ $# -ne 2 ]; then
  echo "Usage:"
  echo "$0 <phrase> <dictionaryfile>"
  exit -1
fi;


echo $1 $2

rm -fr classes
mkdir classes
javac -cp "lib/*" src/com/stanson/anagram/debug/** -d classes

java -cp "lib/*:classes/" com.stanson.anagram.debug.Anagram "$1" "$2"

