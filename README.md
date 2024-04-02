# A collection of Windows Server 2019 and Windows 10 hardening scripts

<img src="https://github.com/atlantsecurity/windows-hardening-scripts/blob/main/windows-hardening-scripts.png?raw=true" />

FORKED FROM <a href=https://github.com/atlantsecurity/windows-hardening-scripts> due to some slight tweaks we have made to the script to serve our purposes better.

Quick overview of changes 
:: Do not display last username at logon
:: Change file associations to protect against common ransomware attacks
:: Disable SMBv3 compression to block unauthenticated attackers from exploiting the vulnerability against an SMBv3 Server
:: Enable Windows Defender sandboxing
:: Enable Windows Defender real time monitoring
:: Block Office applications from creating child processes
:: Disable remote PSExec some of the most common SMB based lateral movement techniques
:: Windows Defender Device Guard - Exploit Guard Policies (Windows 10 Only)
:: Enable ASR rules in Win10 ExploitGuard (>= 1709) to mitigate Office malspam
:: Blocks Office childprocs, Office proc injection, Office win32 api calls & executable content creation
:: Enable Windows Defender Application Guard
:: Enable exploit protection (EMET on Windows 10)
:: General OS hardening
:: Disable DNS Multicast, NTLM, SMBv1, NetBIOS over TCP/IP, PowerShellV2, AutoRun, 8.3 names, Last Access timestamp and weak TLS/SSL ciphers and protocols
:: Enables UAC, SMB/LDAP Signing, Show hidden files
:: Enable Windows Firewall and configure some advanced options
:: Block Win32/64 binaries (LOLBins) from making net connections when they shouldn't
:: Enable Advanced Windows Logging and expand log sizes
