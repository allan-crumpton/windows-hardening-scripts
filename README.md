# A collection of Windows Server and client hardening scripts

<img src="https://github.com/allan-crumpton/windows-hardening-scripts/blob/main/windows-hardening-scripts.png?raw=true" />

<p>FORKED FROM <a href=https://github.com/atlantsecurity/windows-hardening-scripts>https://github.com/atlantsecurity/windows-hardening-scripts</a> due to some slight tweaks we have made to the script to serve our purposes better.

<p>Quick overview of changes 
<br>:: Do not display last username at logon
<br>:: Change file associations to protect against common ransomware attacks
<br>:: Disable SMBv3 compression to block unauthenticated attackers from exploiting the vulnerability against an SMBv3 Server
<br>:: Enable Windows Defender sandboxing
<br>:: Enable Windows Defender real time monitoring
<br>:: Block Office applications from creating child processes
<br>:: Disable remote PSExec some of the most common SMB based lateral movement techniques
<br>:: Windows Defender Device Guard - Exploit Guard Policies (Windows 10 Only)
<br>:: Enable ASR rules in Win10 ExploitGuard (>= 1709) to mitigate Office malspam
<br>:: Blocks Office childprocs, Office proc injection, Office win32 api calls & executable content creation
<br>:: Enable Windows Defender Application Guard
<br>:: Enable exploit protection (EMET on Windows 10)
<br>:: General OS hardening
<br>:: Disable DNS Multicast, NTLM, SMBv1, NetBIOS over TCP/IP, PowerShellV2, AutoRun, 8.3 names, Last Access timestamp and weak TLS/SSL ciphers and protocols
<br>:: Enables UAC, SMB/LDAP Signing, Show hidden files
<br>:: Enable Windows Firewall and configure some advanced options
<br>:: Block Win32/64 binaries (LOLBins) from making net connections when they shouldn't
<br>:: Enable Advanced Windows Logging and expand log sizes
