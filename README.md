# fixPods
fix some bug in cocoapods.
like:

1.添加保持文件夹结构功能
```
curl -o- -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/fixPods/master/fix_pod_1_3_1.sh | zsh
```

Podfile里添加`#keep_folder_structure`就会保持文件夹结构

2.恢复
```
curl -o- -fsSL https://raw.githubusercontent.com/dacaiguoguogmail/fixPods/master/fix_pod_1_3_1_revert.sh | zsh
```
