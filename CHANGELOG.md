# retoolkit Changelog

## 2022.10

* Added tools:
    * AutoIt-Ripper.
    * Bazzar \[[#51](https://github.com/mentebinaria/retoolkit/issues/51)\].
    * ExtremeDumper \[[#56](https://github.com/mentebinaria/retoolkit/issues/56)\].
    * HxD.
    * HyperDbg \[[#53](https://github.com/mentebinaria/retoolkit/issues/53)\].
    * OpenHashTab.
    * WinAPI Search.
    * xSelectBlock x64dbg plugin, previously removed by mistake.

* Removed tools:
    * MiniDump x64dbg plugin \[[#58](https://github.com/mentebinaria/retoolkit/issues/58)\].

* Imrovements:
    * `CTRL+R` now opens retoolkit context menu.
    * Added a CHECKSUMS.txt file with the SHA-1 hashes from all files installed \[[#44](https://github.com/mentebinaria/retoolkit/issues/44)\].
    * New `Documentation` menu with useful reading for reversers.
    * The setup program can create a shortcut to `cmd.exe` on Desktop.
    * Users can now choose which x64dbg plugins they want to install.

## 2022.04

* Added tools:
    * Echo Mirage.
    * elfparser-ng.
    * entropy \[[#47](https://github.com/mentebinaria/retoolkit/issues/47)\].
    * ForceToolkit.
    * MiniDump x64dbg plugin.
    * Notepad++.
    * OllyDumpEx x64dbg plugin \[[#41](https://github.com/mentebinaria/retoolkit/issues/41)\].

* Removed tools:
    * Bewareircd: Too specific to analyze (now rare?) IRC-based communications.
    * dnSpy: Replaced by dnSpyEx.
    * HyperDBG: It's a nice project, but they don't provide binary releases yet, meaning a lot of work for me.
    * JRE: Replaced by JDK, which is required by Ghidra.
    * Threadtear: It doesn't work with JDK required by Ghidra.

## 2021.10

* Yeah, new version numbering scheme borrowed from Ubuntu releases. :)
* Reorganized MSI analysis tools under OLE tools section.
* Updated current tools.
* Fixed pev PATH.
* Fixed SendTo+ license issue \[[#34](https://github.com/mentebinaria/retoolkit/issues/34)\].
* Lots of new functions added to SlothBP x64dbg plugin configuration.
* New DIE signatures added.
* Added tools:
    * Dev-C++ compiler.
    * Java 8 Runtime Environment, needed by Java tools.
    * Python 3 (via WinPython), mainly to support Python-based tools.
    * XLMMacroDeobfuscator.
    * dnSpyEx (new, maintained dnSpy fork).  
    * oledump.
    * oletools \[[#33](https://github.com/mentebinaria/retoolkit/issues/33)\].
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

## v2021d

* Added JADX.
* Better organization based on target file type.
* New context menu (right-click on a file -> Send to -> retoolkit).
* Removed Start Menu shortcuts.
* Tools updated to their latest version.
* Updated Error Lookup tool to a different one, with more features.
* fasm now opens .asm files if you double-click them.

## v2021c

* First public release.
