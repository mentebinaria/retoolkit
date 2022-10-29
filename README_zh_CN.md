__中文简体__ || [Türkçe](./README_tr_TR.md) || [English](./README.md) || [Français](./README_fr_FR.md)

# 逆向工程师的工具包

## 这是一个什么工具？

如果你对x86和x64 Windows系统上的逆向工程和/或恶意软件分析感兴趣，这是你可能喜欢的工具集。安装这个程序后，您必须使用以下方法访问工具：

* 双击桌面上的 `retoolkit` 图标。
* 在一个文件上点击右键，选择`Send to(发送至) -> retoolkit` 。这样，所选的文件就会作为参数传给所需的程序 。

![](assets/retoolkit.gif)

## 我为什么需要它？

你不知道。显然，你可以从他们自己的网站上下载这些工具，然后自己在一个新的虚拟机中安装它们。但是，如果你下载retoolkit，它可能可以为你节省一些时间。此外，这些工具都是预先配置好的，所以你会发现像x64dbg这样的东西有一些插件，命令行工具在任何目录下工作，等等。如果你正在建立一个新的分析虚拟机，你可能会喜欢它。

## 下载

你在这里看到的*.iss 文件，是我们用 [Inno Setup](https://jrsoftware.org/isinfo.php)建立的安装程序的源代码。要下载真正的安装包，你必须到 [Releases](https://github.com/mentebinaria/retoolkit/releases) 部分去下载安装程序。

## 包含的工具

请看[wiki](https://github.com/mentebinaria/retoolkit/wiki) 的详细清单。

## 在我的环境中安装它是安全的吗？

我不知道。一些包含的工具不是开源的，而且来自不光彩的地方。你应该只在虚拟机中使用它，并由你自己负责。

## 你可以添加工具X吗？

这取决于。我们的想法是让它保持简单。我们不会因为一个工具还不在这里就添加它。但如果你认为有一个很好的理由这样做，而且许可证允许我们重新分配软件，如果它还没有退出，请在这里提一个 [issue](https://github.com/mentebinaria/retoolkit/issues?q=label%3Atool-request+) 。

## 更新日志
阅读此文档： [CHANGELOG.md](CHANGELOG.md).
