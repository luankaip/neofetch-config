# 自定义neofetch[个人用]

## 文件作用

1. `996icu.txt`字符画
2. `config.conf`自定义设置
3. `neofetch`获取系统参数的文件(修改GPU显示的BUG)

## 存放位置

`996icu.txt`和`config.conf`在`%HOMEPATH%\.config\neofetch`中

`neofetch`在`%SCOOP%\apps\neofetch\7.1.0`

## 文件`neofetch`修改内容

函数`get_gpu()`:

~~~shell
get_gpu() {
    case $os in
    ...
        "Windows")
            while read -r line; do
                if [[ $(trim "$line") != *"Caption"* && $(trim "$line") != "" ]]; then # 增加if判断
                    prin "${subtitle:+${subtitle}${gpu_name}}" "$(trim "$line")"
                fi
            done < <(wmic path Win32_VideoController get caption)

            gpu=${gpu//Caption}
        ;;
    ...
}  
~~~

## `powershell`中默认使用

`pwsh -MTA -nol -noe -c "neofetch"`
