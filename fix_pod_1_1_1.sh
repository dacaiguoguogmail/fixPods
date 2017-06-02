#!/bin/zsh

podpath=$(echo `which pod`)
poddir=$(dirname $podpath)
podcoregemdir="$poddir"/../gems/cocoapods-core-1.1.1/lib/cocoapods-core/
echo "$podcoregemdir"lockfile.rb
cd $podcoregemdir
curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -O
