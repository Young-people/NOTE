#TANK

TODO:


类目| 内容
----|-
1. |保护罩
2. |进攻城市
3. |侦查



WorldView.layers {
	底图
	建筑，怪物
	UI
} 



发送网络消息
---
NetManager:sendHttpRequest() --[if true]-- NetManager:sendTcpRequest()-dyt.tcpManager:getInstance():send()  
处理网络消息  responseHandler:processResponseData( commandId, response )  


当网络消息出错时，ResponseController.forceExcute函数返回true时强制分发消息  
注册新的网络消息时，会先检索commandFuncMap，如果这里加入了新的消息id会解析数据并分发，否则丢弃，如果有全局数据的变更需要在这里抛出时间，不在页面的回调中处理全局数据

UI控件命名规则  
---

btn_ | Buttonlbl_ |lbl_ | img_ | spr_ | node_ |pnl_ | var_ | chk_ | pag_ | lod_ | sld_ | inp_ | par_ | til_ | adi_ | scr_ | 
-----|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
 BitmapFontLabel||Text|Image|Sprite|Node|Panel|其他类型|CheckBox|PageView|LoadingBar|Slider|TextField|Particle|Map|Audio|ScrollView




兵线问题

1. 兵线到达之后不立刻回来，怎么移除兵线
2. 兵线到达之后立刻回来
3. 兵线状态改变时


打包
----
1. tapk = ts && te && cd /Users/Wangkun/work/tank_work/tank_encrypt && cocos compile -p android -m release —compile-script 0  
2. netManager中ip要改成http  
3. debug。lua中屏蔽sdk  