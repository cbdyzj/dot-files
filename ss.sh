ss() {
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy="http://127.0.0.1:7890"
    export all_proxy="socks5://127.0.0.1:7890"
    echo "代理已设置: 127.0.0.1:7890"
}

unss() {
    unset http_proxy https_proxy all_proxy
    echo "代理已清除"
}