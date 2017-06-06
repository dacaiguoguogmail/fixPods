#!/bin/zsh

poddir=$(echo `gem env gemdir`)
podcoregemdir="$poddir"/gems/cocoapods-core-1.1.1/lib/cocoapods-core/
cd $podcoregemdir
if [ $? -eq 0 ];then
    echo "cd core success"
  else
    echo "cd core fail"
    exit 1
fi
if [[ $poddir = "/Library/Ruby/Gems/2.0.0" ]]; then
    sudo curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -O
else
    curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -O
fi
echo "$podcoregemdir"lockfile.rb
cocoapodsipcgemdir="$poddir"/gems/cocoapods-1.1.1/lib/cocoapods/command/ipc/
cd $cocoapodsipcgemdir
if [ $? -eq 0 ];then
    echo "cd ipc success"
  else
    echo "cd ipc fail"
    exit 1
fi
if [[ $poddir = "/Library/Ruby/Gems/2.0.0" ]]; then
    sudo curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/CocoaPods/master/lib/cocoapods/command/ipc/podfile_json.rb -O
else
    curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/CocoaPods/master/lib/cocoapods/command/ipc/podfile_json.rb -O
fi
echo "podfile_json.rb did add"
echo "fix success"
