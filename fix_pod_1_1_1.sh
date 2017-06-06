#!/bin/zsh

poddir=$(echo `gem env gemdir`)
podcoregemdir="$poddir"/gems/cocoapods-core-1.1.1/lib/cocoapods-core/
cd $podcoregemdir
if [ $? -eq 0 ];then
    echo "cd success"
  else
    echo "cd fail"
    exit 1
fi
if [[ $poddir = "/Library/Ruby/Gems/2.0.0" ]]; then
    sudo curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -O
else
    curl -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/Core/master/lib/cocoapods-core/lockfile.rb -O
fi
echo "$podcoregemdir"lockfile.rb
echo "fix success"
