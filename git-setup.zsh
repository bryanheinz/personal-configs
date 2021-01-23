#!/bin/zsh

n=$(echo "YnJ5YW4gaGVpbnoK" | base64 --decode)
e=$(echo "Z2l0QGJyeWFuaGVpbnouY29tCg==" | base64 --decode)

git config --global user.name "$n"
git config --global user.email "$e"