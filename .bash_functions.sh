#!/bin/sh

# w2 设置为系统代理
function w2sys() {
  w2 start
  networksetup -setwebproxy 'Wi-Fi' 127.0.0.1 8899
  networksetup -setsecurewebproxy 'Wi-Fi' 127.0.0.1 8899
  networksetup -setsocksfirewallproxystate "Wi-Fi" off
  networksetup -setwebproxystate "Wi-Fi" on
  networksetup -setsecurewebproxystate "Wi-Fi" on
  echo "设置完成"
}

function w2off() {
  # networksetup -setwebproxy 'Wi-Fi' 127.0.0.1 8899
  # networksetup -setsecurewebproxy 'Wi-Fi' 127.0.0.1 8899
  networksetup -setsocksfirewallproxystate "Wi-Fi" off
  networksetup -setwebproxystate "Wi-Fi" off
  networksetup -setsecurewebproxystate "Wi-Fi" off
  w2 stop
  echo "系统代理清除完成，w2已关闭"
}
