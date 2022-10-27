# CocoaPods-hmap-privite
给项`iOS`目添加`hmap`

本项目是从`cocoapods-hmap-prebuilt`修改而来，在使用`cocoapods-hmap-prebuilt`时发现并不能很好的运行，就进行了修改供自己的项目使用。


## 用法：
### 1、安装插件
```
gem install cocoapods-hmap-privite
```
### 2、安装依赖命令hamp
```
brew install milend/taps/hmap
```
### 3、声明使用插件
在`Podfile`里写入以下内家
```
plugin 'cocoapods-hmap-privite'
```

## 增加方法
### 方法一:
`skip_hmap_header_for_pods([])`
在有的项目里个别库不能通过hmap的形式被引用，这里就要对别个库单独设置成不生成`hmap`头文件。以`AFNetworking`和`SDWebImage`为例：
```
# 这样写到`Podfile`里就不会生成`AFNetworking`和`SDWebImage`的`hmap`头文件。
skip_hmap_header_for_pods(['AFNetworking', 'SDWebImage'])
```
### 方法二：
`skip_hmap_for_pods([])`
在有的项目里还有一种情况就是个别库不能以hmap的方式引用其他库不然会报错，这时我们就可以使用这个方法了。还是以`AFNetworking`和`SDWebImage`为例：
```
# 这样写到Podfile里AFNetworking和SDWebImage就不会以hmap方式去查找头文件。
skip_hmap_for_pods(['AFNetworking', 'SDWebImage'])
```

