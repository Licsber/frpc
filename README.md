# frpc

## Usage

### 1. 按照frp官方repo介绍配置frpc.ini

```
[common]
token=
server_port=
server_addr=

[nas]
type=http
protocol=kcp
subdomain=sync
local_port=5000
use_encryption = true
use_compression = true
```

### 2. 配置群晖Docker

在群晖Docker菜单中`注册表`搜索`licsber/frpc`并下载

配置运行选项 自动重启 使用本地网络环境

配置文件frpc.ini 映射到/frp/frpc.ini 即可 可设为只读

### 3. 开始使用

这样就ok了 另外Drive的服务端口号好像是6690 需要另外映射出来

## 这个repo的目的

自己构建的Docker镜像理论上更安全可控

既然能做到自己构建 为啥要用别人的呢？

所以使用中推荐fork出去 自己参考我这个配置 新建一个Docker Hub公开镜像
