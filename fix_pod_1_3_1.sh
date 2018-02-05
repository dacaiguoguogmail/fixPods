#!/bin/zsh

file_path=`gem env gemdir`/gems/cocoapods-1.3.1/lib/cocoapods/installer/xcode/pods_project_generator/file_references_installer.rb
org_url='https://raw.githubusercontent.com/CocoaPods/CocoaPods/1.3.1/lib/cocoapods/installer/xcode/pods_project_generator/file_references_installer.rb'
fix_url='https://raw.githubusercontent.com/dacaiguoguogmail/fixPods/master/fix_pod_1_3_1.sh'
curl -fsSL $fix_url -o $file_path
echo -e "\033[32mfix success\033[0m"






