#!/bin/sh
cd "$(dirname "$0")"
rm -rf out && mkdir out
javac -d out $(find src/main -name '*.java') && java -cp out com.parceltracker.web.WebApp
