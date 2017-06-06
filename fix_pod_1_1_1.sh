#!/bin/zsh

poddir=$(echo `gem env gemdir`)
if [[ $poddir = "/Library/Ruby/Gems/2.0.0" ]]; then
    sudo -s
fi
curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -o "$poddir"/gems/cocoapods-core-1.1.1/lib/cocoapods-core/lockfile.rb
curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/CocoaPods/master/lib/cocoapods/command/ipc/podfile_json.rb -o "$poddir"/gems/cocoapods-1.1.1/lib/cocoapods/command/ipc/podfile_json.rb
curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/CocoaPods/master/lib/cocoapods/command/ipc.rb -o "$poddir"/gems/cocoapods-1.1.1/lib/cocoapods/command/ipc.rb
echo "fix success"
