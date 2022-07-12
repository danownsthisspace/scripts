#!/bin/bash

zip -9 -r game.love .

mv game.love /Users/dan/projects/games/love-android/app/src/main/assets/game.love

cd ~/projects/games/love-android

./gradlew assembleNormal

cd /Users/dan/projects/games/love-android/app/build/outputs/apk/normal/debug

open .