# Magisk_Module_Template
## 仅自用

`该Magisk模版的结构`
```
Magisk_Module_Template.zip
│
├── META-INF
│   └── com
│       └── google
│           └── android
│               ├── update-binary     <--- 这个文件你可以通过下载 module_installer.sh 得到官方版本
│               └── updater-script    <--- 这个文件应仅包含字符串 "#MAGISK"
│
├── tools/*                           <---  一些必要的工具类文件
│
├── ...  /* 模块文件的其余部分 */
│
```
### [module_installer.sh](https://github.com/topjohnwu/Magisk/blob/master/scripts/module_installer.sh)
### based on [Magisk 官方文档](https://topjohnwu.github.io/Magisk/guides.html)
![logo.png](https://cdn.jsdelivr.net/gh/topjohnwu/Magisk@master/docs/images/logo.png)
