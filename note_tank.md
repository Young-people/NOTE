#TANK

TODO:

1| 网络数据收发
----|-
2|网络消息创建
3|excel文件加密读取


发送网络消息
---
NetManager:sendHttpRequest() --[if true]--> NetManager:sendTcpRequest()->dyt.tcpManager:getInstance():send()  
处理网络消息  responseHandler:processResponseData( commandId, response )  


当网络消息出错时，ResponseController.forceExcute函数返回true时强制分发消息  
注册新的网络消息时，会先检索commandFuncMap，如果这里加入了新的消息id会解析数据并分发，否则丢弃，如果有全局数据的变更需要在这里抛出时间，不在页面的回调中处理全局数据

Dict的解析和缓存：
----
1. 直接把excel表放在tank/design,前后端都能读取，如果是前段只读，放在client，服务器放在server
2. tank/design/.DictMeta.xlsx  如果需要缓存的数据可以通过key直接访问，需要在该xlsx中配置该表名，及访问数据时使用的key值，可以多键索引


创建新的Lua文件时，需要在Lib.lua中require新文件
---


添加页面
---
从UIManageg
有addWindow  addNetWindows  addDialog addNetDialog


网络协议文件路径
---
/Users/Wangkun/work/tank_work/tank_design/excel/command.xml
新加的0xA1开头的协议。


UI控件命名规则  
---

btn_ | Button
-----|------
lbl_ | BitmapFontLabel
lbl_ | Text
img_ | Image
spr_ | Sprite
node_ | Node
pnl_ | Panel
var_ | 其他类型
chk_ | CheckBox
pag_ | PageView
lod_ | LoadingBar
sld_ | Slider
inp_ | TextField
par_ | Particle
til_ | Map
adi_ | Audio
scr_ | ScrollView
