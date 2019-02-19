本项目是从primovist/snell.sh（https://github.com/primovist/snell.sh） fork而来，修改了可执行文件位置为/usr/local/bin/snell-server，配置文件位置为/etc/snell/snell-server.conf。
## 适用于64位Debian等使用apt-get安装软件包的系统。
## 运行完毕后屏幕显示port以及psk，按照标准填入Surge即可。
# 请使用root用户运行

```
wget --no-check-certificate -O snell.sh https://raw.githubusercontent.com/aileiys/snell.sh/master/snell.sh
chmod +x snell.sh
./snell.sh
```
