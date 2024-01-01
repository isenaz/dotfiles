#!/bin/sh

# リピート入力認識までの時間を短くする
defaults write -g InitialKeyRepeat -int 10

# キーのリピート速度を上げる
defaults write -g KeyRepeat -int 1
