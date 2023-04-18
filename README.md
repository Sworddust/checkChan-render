# 本项目用于将check酱部署到Render云托管平台
>check酱是一个监控网页状态的项目，具体介绍请移步[checkchan-dist](https://github.com/easychen/checkchan-dist)
# 部署步骤
## 1.fork本项目
    Dockerfile文件和render.yaml不需要修改任何东西
## 2.注册vercel账号
免费计划就可以，vercel是一个网站云托管平台，有免费计划可以用
## 3.登录到dashboard
![image](https://user-images.githubusercontent.com/54519184/232719929-77d829b9-f485-4d2b-a82f-e7686f92382b.png)
## 4.新建一个Web Service
![image](https://user-images.githubusercontent.com/54519184/232720445-3ed0c153-a59e-40d6-9e65-52313484537c.png)
    连接自己的仓库或者使用公共仓库
![image](https://user-images.githubusercontent.com/54519184/232720772-a4617bd7-8803-43b4-aa8d-e5b9539fbeeb.png)
注意⚠️：这里可能需要vercel连接github账户获取项目，按照vercel提示连接就可以，尽量只授权你想连接的那个仓库，
这里也可以直接选择下面的public git repository，使用本仓库的地址，后面vercel会帮助你自行fork本仓库，建立一个自己的仓库
## 5.配置部署信息
![image](https://user-images.githubusercontent.com/54519184/232722476-711eb854-43b2-43f7-b642-667a9c02ed7e.png)
这里有几个选项
- Name:服务名（自己想一个就行）
- Region:部署节点区域，可选项（部署后你看哪个速度快用哪个）
- branch:main（默认就可以，除非你自己想使用其他分支）
- Root Directory:默认即可
- Runtime:运行环境Docker
- InstanceType:实例类型 选择免费就够用了，白嫖大法
## 6.配置环境变量
在选择完实例配置后，点击Advanced
点击Add Environment Variable（添加环境变量），按照图中所示自己设置就可以，如果想要更多的配置，
可以参考原项目的云端架设docker-compose.yml配置，需要增加环境变量的，修改Dockerfile文件，增加对应变量就可以，我没有试过。
![image](https://user-images.githubusercontent.com/54519184/232728441-48228132-4887-4b36-a912-e625f4ae7050.png)
- CKC_PASSWD
- VDEBUG
- VNC
- API_KEY
- ERROR_IMAGE
- TZ
> 其他配置信息默认不用动,最后点击create new WebService就自动开始部署了
## 7.运行成功示例
关闭VNC情况下
![image](https://user-images.githubusercontent.com/54519184/232730067-894a691a-bbe7-4aaa-a0f1-06ee3a5895fc.png)
开启VNC情况下
![image](https://user-images.githubusercontent.com/54519184/232730569-ae6c185c-d827-43ab-929b-406a31716168.png)
![image](https://user-images.githubusercontent.com/54519184/232730858-a59e2574-1c39-44c0-9bb4-6bda64fbc1e8.png)
⚠️ 关于API地址 ：vnc关闭时，render生成的域名就是API地址可以直接用，但是因为Render部署本身限制的情况下，vnc启动后会占用api的端口，导致云端API地址无法使用，请知悉
这两种情况自己选择就行
## 8.设置里自定义自己的域名（可选）
![image](https://user-images.githubusercontent.com/54519184/232734253-c5971bcc-f78a-46c4-be99-80a6097c6458.png)
按照官方提示进行自定义就可以，使用自己域名的情况下，国内访问快一些

