# ExtremeDumper False Positive Issue

## Problem
Windows Defender may flag ExtremeDumper.exe or ExtremeDumper-x86.exe as malicious software.

## Reason
ExtremeDumper is a legitimate .NET assembly dumper tool used for reverse engineering and malware analysis. However, its functionality to dump running processes and assemblies can be mistaken for malicious behavior by antivirus software.

## Solution
To use ExtremeDumper, you need to whitelist it in Windows Defender:

1. Open Windows Defender Security Center
2. Go to "Virus & threat protection" > "Virus & threat protection settings" > "Manage settings"
3. Scroll down to "Exclusions" and click "Add or remove exclusions"
4. Click "Add an exclusion" and select "Folder"
5. Browse to the ExtremeDumper installation directory (typically `%USERPROFILE%\retoolkit\dotnet\extremedumper`)
6. Click "Select Folder" to add the exclusion

## Verification
The SHA1 hashes of the legitimate ExtremeDumper files are:
- ExtremeDumper.exe: d69bfa9ddb32de1999760e8b3b3236bc8934d66c
- ExtremeDumper-x86.exe: aa89a3b2a6322e50c278dc3e7535be4c47cd42ce

You can verify these hashes using PowerShell:
```powershell
Get-FileHash -Path "ExtremeDumper.exe" -Algorithm SHA1
Get-FileHash -Path "ExtremeDumper-x86.exe" -Algorithm SHA1
```

## Disclaimer
Use ExtremeDumper at your own risk. Always verify the integrity of downloaded files using the provided hashes.