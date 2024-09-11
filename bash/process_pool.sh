#!/bin/bash
 
#线程池
process_pool(){
    #判断输入参数等
    if [ $# -lt 3 ]; then
        echo "$0 process_num command [args]"
        return 1
    fi
    _process_num=$1
    shift
    _func=$1
    shift
    if [[ ! $_process_num =~ ^[0-9]+$ ]]; then
        echo "process_num must be a number"
        return 1
    fi
    if !type $_func >/dev/null 2>&1; then
        echo "comannd must be executable"
        return 1
    fi
 
    # 创建一个先进先出的管道文件
    fifo="/tmp/$$.fifo"
    mkfifo $fifo
    #创建一个文件描述符号，把FD这个文件描述符关联到这个文件
    #{FD}表示非显示的描述符
    exec {FD}<>$fifo
    rm $fifo
  
 
    # 创建槽位
    for i in $(seq $_process_num); do
        echo >&$FD
    done
  
 
    # 执行具体命令
    for arg in $@; do
        read -u $FD
        {
            $_func $arg 
            echo >&$FD
        }&
    done
 
    # wait等待所有后台进程执行完成
    wait
 
    # 释放文件描述符
    exec {FD}>&-
}
 
 
#以下为测试
test(){
    echo $1
    sleep 3
    return 0
}
 
process_pool 3 'test' 1 2 3 4 5 6 7
