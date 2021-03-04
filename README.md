# Magisk Module 模板

`这是Magisk模块最基础的结构及说明`
```
Magisk-Modules-Template(20.4+).zip
│
├── META-INF
│   └── com
│       └── google
│           └── android
│               ├── update-binary     <--- 这个文件你可以点击[module_installer.sh](https://github.com/topjohnwu/Magisk/blob/master/scripts/module_installer.sh)下载官方版本,因为我改了,所以再本模板并不适用
│               └── updater-script    <--- 这个文件应仅包含字符串 "#MAGISK"
│
├── tools/*                           <---  一些必要的工具类文件
│
├── ...  /* 模块文件的其余部分 */
│
```
**based on [Magisk 官方文档](https://topjohnwu.github.io/Magisk/guides.html)**
![bc5c7a34fee614e08839b511a5840873.jpg](https://i.loli.net/2020/01/30/fOFvI2o9KXqEkJr.jpg)
