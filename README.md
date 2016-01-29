## 签名

* 签名档: ./yh.key-store
* 密码: 123456
* 别名: yh
* 密码: 123456

## 更新日志

* 16/01/29  

	* Fixed: 文件存储使用手机空间，不是所有机弄都支持SD卡
	* Add: 设置 -> 校正
		
		安装时，可能由于用户空间不足，导致静态压缩文件解压失败，该功能会重新解压静态文件
		
	* Add: 用户行为日志
	* Add: 设置 -> 检测版本升级;判断版本号是否为偶数,以便内测
		

* 16/01/28

    * Fixed: 挂载SD卡时，使用手机空间
    
    	用户手机没有挂载SD卡时，文件读写使用手机空间
    	设置界面，可以查看文件存储类型
    
* 16/01/27

    * Add: 实现浏览器下拉刷新
    	* [chrisbanes/Android-PullToRefresh](https://github.com/chrisbanes/Android-PullToRefresh)
    	* [Android 之 PullToRefresh 的使用方法](http://www.nljb.net/default/Android%E4%B9%8BPullToRefresh%E7%9A%84%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95/)
    	* [Android 之 PullToRefresh(ListView 、GridView 、WebView) 使用详解和总结](http://blog.csdn.net/u011068702/article/details/48688281)
    * Optimized: 应用图标，使用第三方网站生成
    	* [Launcher icons](http://android-ui-utils.googlecode.com/hg/asset-studio/dist/icons-launcher.html)
    * Fixed: apk签名档被误删除，主要原因是随便存放，现在已放入项目，与代码同步保存
    	* [Android 手机出现 "已安装了存在签名冲突的同名数据包" 的原因及解决办法](http://blog.csdn.net/dyllove98/article/details/8830264)