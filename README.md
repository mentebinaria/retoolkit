English | [中文简体](./README_zh_CN.md)

# Reverse Engineer's Toolkit

## What?

This is a collection of tools you may like if you are interested on reverse engineering and/or malware analysis on x86 and x64 Windows systems. After installing this program, you'll have to ways to access the tools:

* Double-click the `retoolkit` icon in the Desktop.
* Right-click on a file, choose `Send to -> retoolkit`. This way the selected file is passed as argument to the desired program.

![](assets/retoolkit.gif)

## Why do I need it?

You don't. Obviously, you can download such tools from their own website and install them by yourself in a new VM. But if you download retoolkit, it can probably save you some time. Additionally, the tools come pre-configured so you'll find things like x64dbg with a few plugins, command-line tools working from any directory, etc. You may like it if you're setting up a new analysis VM.

## Download

The *.iss files you see here are the source code for our setup program built with [Inno Setup](https://jrsoftware.org/isinfo.php). To download the real thing, you have to go to the [Releases](https://github.com/mentebinaria/retoolkit/releases) section and download the setup program.

## Included tools

Have a look at the [wiki](https://github.com/mentebinaria/retoolkit/wiki) for a detailed list.

## Is it safe to install it in my environment?

I don't know. Some included tools are not open source and come from shady places. You should use it exclusively in virtual machines and under your own responsibility.

## Can you add tool X?

It depends. The idea is to keep it simple. We won't add a tool just because it's not here yet. But if you think there's a good reason to do so, and the license allows us to redistribuite the software, please [open an issue here](https://github.com/mentebinaria/retoolkit/issues?q=label%3Atool-request+) if it doesn't exist yet.

## Changelog

### 2021.10

* Yeah, new version numbering scheme borrowed from Ubuntu releases. :)
* Reorganized MSI analysis tools under OLE tools section.
* Updated current tools.
* Fixed pev PATH.
* Fixed license SendTo+ license issue (closes [#34](https://github.com/mentebinaria/retoolkit/issues/34)).
* Lots of new functions added to SlothBP x64dbg plugin configuration.
* New DIE signatures added.
* Tools added:
    * Dev-C++ compiler.
    * Java 8 Runtime Environment, needed by Java tools.
    * Python 3 (via WinPython), mainly to support Python-based tools.
    * XLMMacroDeobfuscator.
    * dnSpyEx (new, maintained dnSpy fork).  
    * oledump.
    * oletools (closes [#33](https://github.com/mentebinaria/retoolkit/issues/33)).
    * pdfid.py.
    * pdf-parser.py
    * MapoAnalyzer x64dbg plugin.
    * xSelectBlock x64dbg plugin.
    * redress.
    * hollows_hunter.
    * HyperDbg.
    * Threadtear.
    * 1768.py.
    * CobaltStrikeScan.
    * dex2jar.

### v2021d

* Added JADX.
* Better organization based on target file type.
* New context menu (right-click on a file -> Send to -> retoolkit).
* Removed Start Menu shortcuts.
* Tools updated to the latest version.
* Updated Error Lookup tool to a different one, with more features.
* fasm now opens .asm files if you double-click them.

### v2021c
* First public release.
