# Reverse Engineer's Toolkit

## What?

This is a collection of tools you may like if you are interested on reverse engineering and/or malware analysis on x86 and x64 Windows systems. After installing this toolkit you'll have a folder in your desktop with shortcuts to RE tools like these:

![](assets/ret2021c.png)

## Why do I need it?

You don't. Obviously, you can download such tools from their own website and install them by yourself in a new VM. But if you download retoolkit, it can probably save you some time. Additionally, the tools come pre-configured so you'll find things like x64dbg with a few plugins, command-line tools working from any directory, etc. You may like it if you're setting up a new analysis VM.

## Download

The *.iss files you see here are the source code for our setup program built with [Inno Setup](https://jrsoftware.org/isinfo.php). To download the real thing, you have to go to the [Releases](https://github.com/mentebinaria/retoolkit/releases) section and download the setup program.

## Included tools

Check the [wiki](https://github.com/mentebinaria/retoolkit/wiki).

![](assets/ret.gif)

## Is it safe to install it in my environment?

I don't know. Some included tools are not open source and come from shady places. You should use it exclusively in virtual machines and under your own responsibility.

## Can you add tool X?

It depends. The idea is to keep it simple. We won't add a tool just because it's not here yet. But if you think there's a good reason to do so, and the license allows us to redistribuite the software, please [file a request here](https://github.com/mentebinaria/retoolkit/discussions/categories/new-app-requests).
