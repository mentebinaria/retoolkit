# Reverse Engineer's Toolkit

## What?

This is a collection of tools you may like if you are interested in reverse
engineering and/or malware analysis on x86 and x64 Windows systems. After
installing this program, you'll have two ways to access the tools:

- Double-click the `retoolkit` icon in the Desktop.
- Right-click on a file, choose `retoolkit`. This way the selected file is
  passed as argument to the desired program.

![](assets/retoolkit.gif)

## Why do I need it?

You don't. Obviously, you can download such tools from their own website and
install them by yourself in a new VM. But if you download retoolkit, it will
probably save you some time. Additionally, the tools come pre-configured so
you'll find things like x64dbg with a few plugins, command-line tools working
from any directory, etc. You may like it if you're setting up a new analysis VM.

## Download

The \*.iss files you see here are the source code for our setup program built
with [Inno Setup](https://jrsoftware.org/isinfo.php). To download the real
thing, you have to go to the
[Releases](https://github.com/mentebinaria/retoolkit/releases) section and
download the setup program.

## Included tools

Have a look at the [wiki](https://github.com/mentebinaria/retoolkit/wiki) for a
detailed list. By the way, you won't find cracked software there.

## Is it safe to install it in my environment?

I don't know. Some included tools are not open source and come from shady
places. You should use it exclusively in virtual machines and under your own
responsibility.

## Windows Defender is complaining about malware during retoolkit installation!

Yeah, I prefer to analyze malware without antivirus software installed, but it's
up to you. If you want to disable Windows Defender, see [this
page](https://www.sordum.org/9480/defender-control-v2-1/).

## Can you add tool X?

It depends. The idea is to keep it simple. We won't add a tool just because it's
not here yet. But if you think there's a good reason to do so, _and the license
allows us to redistribute the software_, please [open an issue
here](https://github.com/mentebinaria/retoolkit/issues?q=label%3Atool-request+)
if it doesn't exist yet.

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## Inspiration

This project is inspired by (but not copied from) a toolkit that has been distributed
in reverse engineering forums over the years called "Cracker Tools by yildo".
I couldn't find an official source for it, although a web search will reveal
various copies and references.

The key differences are:

- retoolkit does not contain cracked software. It only includes software authorized
for redistribution by its license or by its authors.
- retoolkit is an open-source installer. You are free to copy, modify, and distribute
your own installer based on this project. Attribution to the original project is expected.
