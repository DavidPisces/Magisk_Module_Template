#补指令集
Add_path () {
    #设置二进制命令目录位置
    filepath=/data/tools
    busybox="$filepath/busybox"
    #工具绝对位置
    tools_path=/data/adb/modules/YuKong_Module/tools
    if [[ -e $busybox ]]; then
        if [[ ! -e $filepath/$1 ]]; then
            if [[ $2 == n ]]; then
                if [[ -e $tools_path/$1 ]]; then
                    cp -r $tools_path/$1 $filepath
                    chmod 0777 $filepath/$1
                else
                    echo "$tools_path/$1不存在 脚本所需的$1缺少"
                    exit 1
                fi
            else
                if [[ -e $3/$1 ]]; then
                    ln -s $3/$1 $filepath
                else
                    echo "错误: $3/$1不存在"
                    exit 1
                fi
            fi
        fi
        [[ ! -e $filepath/$1 ]] && echo "错误 $filepath/$1不存在" && exit 1
        export PATH=$filepath
        [[ ! $PATH == $filepath ]] && echo "环境变量位置错误" && exit 1
    else
        if [[ -e $tools_path/busybox ]]; then
            [[ ! -d $filepath ]] && mkdir -p $filepath
            cp -r $tools_path/busybox $busybox
            chmod 0777 $busybox
            for a in $($busybox --list) ; do
                if [[ -n $a ]]; then
                    [[ ! -e $filepath/$a ]] && ln -s $busybox "$filepath/$a"
                fi
            done
        else
            echo "错误 缺少$tools_path/busybox"
            exit 1
        fi
    fi
}
