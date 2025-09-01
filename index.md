# 小米小爱同学课程表导入教程

> 方法来自大群内大佬分享

## 背景

小米官方关闭了教务导入功能，但是似乎只在前端禁止点击了，所以现在可以强行开启导入。

## 操作步骤

### 1. 开启开发者选项

进入小爱同学的课程表设置页面，在最下方空白处**连续点击**，直到出现开发者选项。

![开启开发者选项](https://user-images.githubusercontent.com/placeholder/step1.png)

### 2. 开启 vConsole

在 Debug 页面中，找到 **vConsole** 选项并开启。

![开启vConsole](https://user-images.githubusercontent.com/placeholder/step2.png)

### 3. 输入命令强制跳转

退回到主界面，点击 vConsole 按钮，在命令输入框（command）处输入以下命令：

```javascript
window.location.href='https://i.xiaomixiaoai.com/h5/precache/ai-schedule/#/import'
```

输入完成后点击 **OK** 执行命令。

![输入命令](https://user-images.githubusercontent.com/placeholder/step3.png)

### 4. 完成导入

执行命令后，点击 **Hide** 隐藏控制台面板，此时你应该已经进入了课程表导入页面，可以正常进行导入操作了。

## 注意事项

- 确保小爱同学 App 已更新到最新版本
- 该方法利用的是前端限制的漏洞，可能会在后续版本中被修复
- 导入过程中请保持网络连接稳定

## 图片说明

由于原始图片链接已失效，上面使用的是占位符图片。实际操作时的界面应该是：
- 第一张图：小爱同学课程表设置页面，需要在底部空白处连续点击
- 第二张图：Debug 设置页面，显示 vConsole 选项
- 第三张图：vConsole 控制台界面，显示命令输入框

---

*最后更新：2025年1月*