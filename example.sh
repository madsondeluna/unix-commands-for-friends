#!/bin/bash

################################################################################
# Linux Command Reference Guide
# 
# Purpose: Comprehensive demonstration of essential Linux commands
# Usage: This script serves as a reference guide with example outputs
# Author: Reference documentation
# Date: October 2025
#
# Note: Most commands are commented out to prevent accidental execution
# Uncomment specific sections to test individual commands
################################################################################

################################################################################
# SECTION 1: BASIC NAVIGATION
################################################################################

# pwd - Print working directory
# Shows the full path of your current location in the filesystem
# Example output:
# /home/username/projects

# ls - List files and directories
# Shows contents of current directory
# Example output:
# Desktop  Documents  Downloads  Pictures  Videos

# ls -l - List in long format (detailed information)
# Example output:
# drwxr-xr-x 2 user user 4096 Oct 22 14:30 Documents
# -rw-r--r-- 1 user user 1234 Oct 22 14:25 file.txt

# ls -a - List all files including hidden ones
# Hidden files start with a dot (.)
# Example output:
# .  ..  .bash_history  .bashrc  Documents  Downloads

# ls -lah - Combine options: long format, all files, human-readable sizes
# Example output:
# drwxr-xr-x 5 user user 4.0K Oct 22 14:30 .
# drwxr-xr-x 3 user user 4.0K Oct 21 10:15 ..
# -rw------- 1 user user  12K Oct 22 16:45 .bash_history
# -rw-r--r-- 1 user user 3.5K Oct 20 09:00 .bashrc

# cd /path/to/directory - Change directory to specified path
# cd .. - Move up one directory level
# cd ~ or cd - Go to home directory
# cd / - Go to root directory
# cd - - Go to previous directory

# clear - Clear the terminal screen
# Clears all previous output from view

# history - Show command history
# Example output:
#    1  ls -la
#    2  cd Documents
#    3  pwd
#    4  history

################################################################################
# SECTION 2: FILE AND DIRECTORY MANAGEMENT
################################################################################

# touch filename.txt - Create a new empty file
# If file exists, updates its timestamp
# Example:
# touch newfile.txt
# ls -l newfile.txt
# -rw-r--r-- 1 user user 0 Oct 22 16:50 newfile.txt

# mkdir dirname - Create a new directory
# mkdir -p parent/child/grandchild - Create nested directories
# Example output:
# mkdir projects
# mkdir -p data/raw/sequences
# ls -R data
# data/:
# raw
# data/raw:
# sequences

# rmdir dirname - Remove an empty directory
# Only works if directory is empty
# Example:
# rmdir empty_folder

# rm filename - Delete a file
# WARNING: This is permanent, no recycle bin
# rm -i filename - Interactive mode, asks for confirmation
# Example:
# rm oldfile.txt

# rm -r dirname - Delete directory recursively (including contents)
# WARNING: Use with extreme caution
# rm -rf dirname - Force recursive delete without confirmation
# Example:
# rm -r old_project/

# cp source destination - Copy file
# cp file1.txt file2.txt - Creates a copy named file2.txt
# Example output:
# cp data.csv backup_data.csv
# ls
# data.csv  backup_data.csv

# cp -r source_dir destination - Copy directory recursively
# Example:
# cp -r project/ project_backup/
# ls
# project/  project_backup/

# mv oldname newname - Rename or move a file
# Can be used for both renaming and moving files
# Example:
# mv oldname.txt newname.txt  # Rename
# mv file.txt /backup/        # Move
# ls
# newname.txt

# cat filename - Display entire file contents
# Concatenate and display file(s)
# Example output:
# cat sample.txt
# This is line 1
# This is line 2
# This is line 3

# cat file1.txt file2.txt - Concatenate multiple files
# cat > newfile.txt - Create file and write to it (Ctrl+D to save)

# less filename - View file contents one page at a time
# Navigate with arrows, Space, q to quit
# Example:
# less large_file.log
# (Opens paginated view - press q to exit)

# head filename - Show first 10 lines of a file
# head -n 5 filename - Show first 5 lines
# Example output:
# head -n 3 data.txt
# Line 1
# Line 2
# Line 3

# tail filename - Show last 10 lines of a file
# tail -n 20 filename - Show last 20 lines
# Example output:
# tail -n 3 data.txt
# Line 998
# Line 999
# Line 1000

# tail -f filename - Monitor file in real-time (follow mode)
# Useful for watching log files as they're written
# Example:
# tail -f /var/log/syslog
# Oct 22 16:55:01 server CRON[1234]: (root) CMD (command)
# Oct 22 16:55:15 server systemd[1]: Started Session
# (Continues updating... press Ctrl+C to stop)

################################################################################
# SECTION 3: FILE PERMISSIONS AND OWNERSHIP
################################################################################

# Understanding permissions:
# drwxrwxrwx - d(directory) rwx(user) rwx(group) rwx(others)
# r=read(4), w=write(2), x=execute(1)

# chmod 755 filename - Change file permissions
# 755 = rwxr-xr-x (owner: all, group: read+execute, others: read+execute)
# Common modes: 777 (all permissions), 755 (standard executable), 644 (standard file)
# Example:
# ls -l script.sh
# -rw-r--r-- 1 user user 1234 Oct 22 17:00 script.sh
# chmod 755 script.sh
# ls -l script.sh
# -rwxr-xr-x 1 user user 1234 Oct 22 17:00 script.sh

# chmod u+x filename - Make file executable for user
# u=user, g=group, o=others, a=all
# +add permission, -remove permission
# Example:
# chmod u+x script.sh     # Add execute for user
# chmod g-w file.txt      # Remove write for group
# chmod a+r document.txt  # Add read for all

# chown user:group filename - Change file owner and group
# Requires sudo for files you don't own
# Example:
# sudo chown john:developers project.py
# ls -l project.py
# -rw-r--r-- 1 john developers 2048 Oct 22 17:05 project.py

# chown -R user:group directory/ - Recursively change ownership

################################################################################
# SECTION 4: SYSTEM INFORMATION
################################################################################

# uname -a - Show all system information
# Example output:
# Linux ubuntu 5.15.0-58-generic #64-Ubuntu SMP Thu Jan 5 11:43:13 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

# uname -r - Show kernel version only
# Example output:
# 5.15.0-58-generic

# hostname - Show or set system hostname
# Example output:
# my-workstation

# uptime - Show system running time and load
# Example output:
# 17:10:42 up 5 days, 3:45, 2 users, load average: 0.52, 0.58, 0.59

# top - Display running processes (dynamic, real-time)
# Example output:
# top - 17:12:01 up 5 days,  3:47,  2 users,  load average: 0.45, 0.52, 0.56
# Tasks: 298 total,   1 running, 297 sleeping,   0 stopped,   0 zombie
# %Cpu(s):  5.2 us,  2.1 sy,  0.0 ni, 92.3 id,  0.3 wa,  0.0 hi,  0.1 si
# MiB Mem :  15842.5 total,   2156.3 free,   8234.1 used,   5452.1 buff/cache
# 
#   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
#  1234 user      20   0 4567890 123456  78910 S   3.2   0.8   15:23.45 python3
#  5678 user      20   0 2345678 987654  54321 S   1.5   6.2  123:45.67 firefox
# (Press q to quit)

# htop - Interactive process viewer (enhanced top)
# More user-friendly with colors and mouse support
# Install with: sudo apt install htop

# df -h - Show disk space usage (human-readable)
# Example output:
# Filesystem      Size  Used Avail Use% Mounted on
# /dev/sda1       100G   45G   50G  48% /
# /dev/sdb1       500G  350G  150G  70% /home
# tmpfs           7.7G  1.5M  7.7G   1% /run

# df -i - Show inode usage (file count limits)

# du -sh * - Show directory sizes in current location
# Example output:
# 4.5G    Documents
# 12G     Downloads
# 856M    Pictures
# 2.3G    Videos

# du -sh /path/to/dir - Show total size of specific directory
# du -h --max-depth=1 - Show sizes one level deep

# free -h - Show memory usage (human-readable)
# Example output:
#               total        used        free      shared  buff/cache   available
# Mem:           15Gi       7.8Gi       2.1Gi       145Mi       5.4Gi       7.2Gi
# Swap:         2.0Gi       512Mi       1.5Gi

# lscpu - Display CPU information
# Example output:
# Architecture:        x86_64
# CPU op-mode(s):      32-bit, 64-bit
# CPU(s):              8
# Thread(s) per core:  2
# Core(s) per socket:  4
# Model name:          Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz

# lsblk - Show block devices (disks and partitions)
# Example output:
# NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
# sda      8:0    0 465.8G  0 disk
# ├─sda1   8:1    0   512M  0 part /boot/efi
# ├─sda2   8:2    0   100G  0 part /
# └─sda3   8:3    0 365.3G  0 part /home
# sr0     11:0    1  1024M  0 rom

################################################################################
# SECTION 5: PROCESS MANAGEMENT
################################################################################

# ps - Show active processes for current user
# Example output:
#   PID TTY          TIME CMD
#  1234 pts/0    00:00:00 bash
#  5678 pts/0    00:00:00 ps

# ps aux - Detailed process list for all users
# Example output:
# USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
# root         1  0.0  0.1 169416 13140 ?        Ss   Oct17   0:23 /sbin/init
# user      1234  2.5  3.2 4567890 523456 ?      Sl   16:30   1:23 python3 script.py
# user      5678  1.2  8.5 3456789 1345678 ?     Sl   14:15  45:23 /usr/lib/firefox

# ps aux | grep process_name - Find specific process
# Example:
# ps aux | grep python
# user  1234  2.5  3.2 4567890 523456 ?  Sl 16:30  1:23 python3 analysis.py

# kill PID - Kill a process by ID (sends SIGTERM)
# Example:
# kill 1234

# kill -9 PID - Force kill process (sends SIGKILL)
# Use when normal kill doesn't work
# Example:
# kill -9 5678

# killall processname - Kill all processes by name
# Example:
# killall python3

# pkill pattern - Kill processes matching pattern
# Example:
# pkill -f "analysis.py"

# bg - Resume suspended job in background
# After pressing Ctrl+Z, use bg to continue in background

# fg - Bring background job to foreground
# Example:
# fg %1  # Bring job 1 to foreground

# jobs - List background jobs
# Example output:
# [1]+  Running                 python3 long_script.py &
# [2]-  Stopped                 nano document.txt

# command & - Run command in background
# Example:
# python3 long_analysis.py &
# [1] 12345

################################################################################
# SECTION 6: NETWORKING COMMANDS
################################################################################

# ifconfig - Show network interfaces (older command)
# Example output:
# eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
#         inet 192.168.1.100  netmask 255.255.255.0  broadcast 192.168.1.255
#         ether 00:11:22:33:44:55  txqueuelen 1000  (Ethernet)

# ip addr show - Display IP addresses (modern replacement for ifconfig)
# Example output:
# 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500
#     inet 192.168.1.100/24 brd 192.168.1.255 scope global eth0
#     inet6 fe80::211:22ff:fe33:4455/64 scope link

# ip a - Short form of ip addr show

# ping host - Test connectivity to host
# Example:
# ping -c 4 google.com
# PING google.com (142.250.185.46) 56(84) bytes of data.
# 64 bytes from lga25s83-in-f14.1e100.net (142.250.185.46): icmp_seq=1 ttl=115 time=12.3 ms
# 64 bytes from lga25s83-in-f14.1e100.net (142.250.185.46): icmp_seq=2 ttl=115 time=11.8 ms
# --- google.com ping statistics ---
# 4 packets transmitted, 4 received, 0% packet loss, time 3005ms

# netstat -tuln - Show active ports and listening services
# Example output:
# Proto Recv-Q Send-Q Local Address           Foreign Address         State
# tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN
# tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN
# tcp6       0      0 :::80                   :::*                    LISTEN

# ss -tuln - Show listening sockets (modern replacement for netstat)
# Faster than netstat, same output format

# curl url - Transfer data from or to a server
# Example:
# curl https://api.github.com/users/octocat
# {
#   "login": "octocat",
#   "id": 583231,
#   "name": "The Octocat",
#   ...
# }

# curl -O url - Download file keeping original name
# curl -o filename url - Download file with custom name

# wget url - Download file from web
# Example:
# wget https://example.com/file.zip
# --2025-10-22 17:30:45--  https://example.com/file.zip
# Resolving example.com... 93.184.216.34
# Connecting to example.com|93.184.216.34|:443... connected.
# HTTP request sent, awaiting response... 200 OK
# Length: 12345678 (12M) [application/zip]
# Saving to: 'file.zip'
# file.zip          100%[==========>]  11.77M  5.23MB/s    in 2.3s

# wget -c url - Resume interrupted download

# scp file user@host:/path - Copy file to remote server via SSH
# Example:
# scp data.csv user@192.168.1.50:/home/user/backup/
# user@192.168.1.50's password:
# data.csv                              100%  1234KB   1.2MB/s   00:01

# scp user@host:/remote/file /local/path - Copy from remote to local
# scp -r directory user@host:/path - Copy directory recursively

# ssh user@host - Connect to remote machine via SSH
# Example:
# ssh admin@192.168.1.50
# admin@192.168.1.50's password:
# Welcome to Ubuntu 22.04.1 LTS
# Last login: Wed Oct 22 17:35:12 2025 from 192.168.1.100
# admin@remote-server:~$

# ssh -p port user@host - Connect using specific port

################################################################################
# SECTION 7: PACKAGE MANAGEMENT
################################################################################

# UBUNTU/DEBIAN (APT)
################################################################################

# sudo apt update - Update package list from repositories
# Example output:
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
# Fetched 2,456 kB in 3s (819 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# 25 packages can be upgraded. Run 'apt list --upgradable' to see them.

# sudo apt upgrade - Upgrade all installed packages
# Example output:
# Reading package lists... Done
# Building dependency tree... Done
# Calculating upgrade... Done
# The following packages will be upgraded:
#   firefox git python3-pip vim
# 4 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
# Need to get 125 MB of archives.
# After this operation, 512 kB of additional disk space will be used.
# Do you want to continue? [Y/n]

# sudo apt install packagename - Install a package
# Example:
# sudo apt install htop
# Reading package lists... Done
# Building dependency tree... Done
# The following NEW packages will be installed:
#   htop
# 0 upgraded, 1 newly installed, 0 to remove and 25 not upgraded.
# Need to get 123 kB of archives.
# Do you want to continue? [Y/n]

# sudo apt remove packagename - Remove a package
# sudo apt purge packagename - Remove package and configuration files

# sudo apt autoremove - Remove unused dependencies
# Example output:
# Reading package lists... Done
# Building dependency tree... Done
# The following packages will be REMOVED:
#   libunused1 libunused2 old-dependency
# 0 upgraded, 0 newly installed, 3 to remove and 0 not upgraded.
# After this operation, 45.6 MB disk space will be freed.

# apt search packagename - Search for packages
# apt show packagename - Show package details

# dpkg -l - List all installed packages
# Example output (truncated):
# Desired=Unknown/Install/Remove/Purge/Hold
# | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
# |/ Name           Version      Architecture Description
# +++-==============-============-============-================================
# ii  bash           5.1-6ubuntu1 amd64        GNU Bourne Again SHell
# ii  python3        3.10.6-1     amd64        interactive high-level OO lang

# dpkg -l | grep package - Search installed packages

# RHEL/CENTOS (YUM/DNF)
################################################################################

# sudo yum update - Update all packages (older RHEL/CentOS)
# Example output:
# Loaded plugins: fastestmirror
# Loading mirror speeds from cached hostfile
# Resolving Dependencies
# --> Running transaction check
# 15 packages will be updated

# sudo yum install packagename - Install package
# sudo yum remove packagename - Remove package

# sudo dnf install packagename - Install using DNF (RHEL 8+, Fedora)
# Example:
# sudo dnf install nano
# Last metadata expiration check: 0:05:23 ago
# Dependencies resolved.
# Package         Arch    Version          Repository    Size
# Installing:
#  nano           x86_64  5.8-3.el9        baseos        689 k
# Transaction Summary
# Install  1 Package
# Total download size: 689 k

# dnf search packagename - Search for packages
# dnf list installed - List installed packages

################################################################################
# SECTION 8: FILE COMPRESSION AND ARCHIVING
################################################################################

# tar -cvf archive.tar directory - Create tar archive
# c=create, v=verbose, f=file
# Example:
# tar -cvf project.tar project/
# project/
# project/data/
# project/data/file1.csv
# project/data/file2.csv
# project/script.py

# tar -xvf archive.tar - Extract tar archive
# x=extract
# Example output:
# tar -xvf project.tar
# project/
# project/data/
# project/data/file1.csv

# tar -czvf archive.tar.gz directory - Create compressed tar.gz
# z=gzip compression
# Example:
# tar -czvf backup.tar.gz /home/user/documents/
# (Same output as tar -cvf but file is compressed)

# tar -xzvf archive.tar.gz - Extract tar.gz archive

# tar -tf archive.tar - List contents without extracting
# Example output:
# project/
# project/README.md
# project/src/
# project/src/main.py

# gzip filename - Compress file (replaces original)
# Example:
# ls -lh largefile.txt
# -rw-r--r-- 1 user user 100M Oct 22 18:00 largefile.txt
# gzip largefile.txt
# ls -lh largefile.txt.gz
# -rw-r--r-- 1 user user 15M Oct 22 18:00 largefile.txt.gz

# gunzip filename.gz - Decompress gzip file
# gzip -k filename - Keep original file when compressing

# zip archive.zip file1 file2 - Create zip file
# Example:
# zip documents.zip file1.txt file2.txt file3.txt
# adding: file1.txt (deflated 65%)
# adding: file2.txt (deflated 72%)
# adding: file3.txt (deflated 58%)

# zip -r archive.zip directory - Zip directory recursively

# unzip archive.zip - Extract zip file
# Example output:
# Archive:  documents.zip
#   inflating: file1.txt
#   inflating: file2.txt
#   inflating: file3.txt

# unzip -l archive.zip - List zip contents without extracting

################################################################################
# SECTION 9: USER MANAGEMENT
################################################################################

# whoami - Display current username
# Example output:
# john

# who - Show logged-in users
# Example output:
# john     pts/0        2025-10-22 14:30 (192.168.1.100)
# admin    tty1         2025-10-22 09:15

# w - Show who is logged on and what they are doing
# Example output:
#  18:15:23 up 5 days,  4:50,  2 users,  load average: 0.45, 0.52, 0.56
# USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
# john     pts/0    192.168.1.100    14:30    0.00s  0.15s  0.01s w
# admin    tty1     -                09:15   5:00m  0.03s  0.03s bash

# id - Show user and group information
# Example output:
# uid=1000(john) gid=1000(john) groups=1000(john),4(adm),27(sudo),999(docker)

# sudo adduser username - Add a new user (interactive)
# Example:
# sudo adduser maria
# Adding user `maria' ...
# Adding new group `maria' (1001) ...
# Adding new user `maria' (1001) with group `maria' ...
# Creating home directory `/home/maria' ...
# Enter new UNIX password:

# sudo useradd username - Add user (non-interactive)
# sudo useradd -m -s /bin/bash username - Create with home dir and shell

# sudo passwd username - Change user password
# Example:
# sudo passwd maria
# New password:
# Retype new password:
# passwd: password updated successfully

# sudo deluser username - Remove user
# sudo deluser --remove-home username - Remove user and home directory

# su username - Switch to another user
# Example:
# su - maria
# Password:
# maria@server:~$

# su - - Switch to root user
# sudo su - Alternative way to switch to root

# logout - Log out current session
# exit - Alternative to logout, also exits shell

################################################################################
# SECTION 10: SYSTEM SHUTDOWN AND REBOOT
################################################################################

# sudo shutdown now - Shut down immediately
# Example output:
# Shutdown scheduled for Wed 2025-10-22 18:30:00 -03, use 'shutdown -c' to cancel.

# sudo shutdown -h now - Halt system immediately
# -h = halt

# sudo shutdown +10 - Shutdown in 10 minutes
# sudo shutdown 20:00 - Shutdown at 8:00 PM
# sudo shutdown -c - Cancel scheduled shutdown

# sudo shutdown -r now - Reboot immediately
# -r = reboot
# Example:
# sudo shutdown -r now
# Broadcast message from root@server
#         (/dev/pts/0) at 18:35 ...
# The system is going down for reboot NOW!

# sudo reboot - Restart the system
# Alternative to shutdown -r now

# sudo poweroff - Power off the system
# Similar to shutdown now

# sudo halt - Halt the system
# Stops CPU but may not power off

################################################################################
# SECTION 11: SEARCH AND FIND
################################################################################

# find /path -name filename - Search for file by name
# Example:
# find /home/user -name "*.py"
# /home/user/projects/script.py
# /home/user/projects/analysis.py
# /home/user/backup/old_script.py

# find /path -name "*.txt" - Search using wildcards
# find /path -iname filename - Case-insensitive search
# find /path -type f - Find only files
# find /path -type d - Find only directories

# find /path -mtime -7 - Find files modified in last 7 days
# find /path -size +100M - Find files larger than 100MB
# Example:
# find /home/user -size +100M
# /home/user/Downloads/large_video.mp4
# /home/user/Documents/dataset.csv

# find /path -name "*.log" -delete - Find and delete files
# Use with caution!

# grep 'pattern' file - Search text inside file
# Example:
# grep 'error' logfile.txt
# [2025-10-22 18:40:15] ERROR: Connection timeout
# [2025-10-22 18:40:23] ERROR: Failed to authenticate

# grep -i 'pattern' file - Case-insensitive search
# grep -n 'pattern' file - Show line numbers
# grep -v 'pattern' file - Show lines NOT matching pattern
# grep -c 'pattern' file - Count matching lines

# grep -r 'pattern' /path - Search recursively in directory
# Example:
# grep -r 'TODO' /home/user/projects/
# /home/user/projects/script.py:# TODO: Optimize this function
# /home/user/projects/analysis.py:# TODO: Add error handling

# grep -r -l 'pattern' /path - Show only filenames with matches

# locate filename - Quickly find files by name
# Uses pre-built database, very fast
# Example:
# locate python
# /usr/bin/python3
# /usr/lib/python3
# /home/user/scripts/python_script.py

# sudo updatedb - Update locate database
# Run this after creating new files to make them searchable with locate
# Example output:
# (No output, runs silently in background)

# which command - Show full path of command
# Example:
# which python3
# /usr/bin/python3

# whereis command - Locate binary, source, and manual for command
# Example:
# whereis python3
# python3: /usr/bin/python3 /usr/lib/python3 /usr/share/man/man1/python3.1.gz

################################################################################
# ADDITIONAL USEFUL COMMANDS AND TIPS
################################################################################

# man command - Show manual page for command
# Example:
# man ls
# (Opens detailed manual for ls command)
# Navigate with arrows, q to quit

# command --help - Show brief help for command
# Example:
# ls --help

# history | grep keyword - Search command history
# Example:
# history | grep ssh
#   234  ssh user@server
#   456  ssh -p 2222 admin@backup

# !number - Execute command from history by number
# !! - Repeat last command
# sudo !! - Run last command with sudo

# alias shortname='long command' - Create command alias
# Example:
# alias ll='ls -lah'
# alias update='sudo apt update && sudo apt upgrade'

# To make aliases permanent, add to ~/.bashrc or ~/.bash_aliases

# Ctrl+C - Cancel current command
# Ctrl+Z - Suspend current process
# Ctrl+D - Exit current shell or end input
# Ctrl+L - Clear screen (alternative to clear command)
# Ctrl+R - Search command history (reverse search)
# Tab - Auto-complete filenames and commands
# Tab Tab - Show all possible completions

################################################################################
# PIPE AND REDIRECTION EXAMPLES
################################################################################

# command > file - Redirect output to file (overwrite)
# Example:
# ls -la > directory_listing.txt

# command >> file - Append output to file
# Example:
# date >> logfile.txt

# command < file - Use file as input
# Example:
# wc -l < data.txt
# 1234

# command1 | command2 - Pipe output of command1 to command2
# Example:
# ps aux | grep python | wc -l
# 5

# command 2>&1 - Redirect stderr to stdout
# Example:
# python script.py > output.log 2>&1

# command &> file - Redirect both stdout and stderr to file

################################################################################
# TEXT PROCESSING EXAMPLES
################################################################################

# wc filename - Count lines, words, and bytes
# Example output:
# wc document.txt
#   150  1234  8765 document.txt
# (150 lines, 1234 words, 8765 bytes)

# wc -l filename - Count lines only
# wc -w filename - Count words only
# wc -c filename - Count bytes only

# sort filename - Sort lines alphabetically
# sort -n filename - Sort numerically
# sort -r filename - Sort in reverse

# uniq filename - Remove duplicate adjacent lines
# sort file | uniq - Remove all duplicates (sort first)
# uniq -c file - Count occurrences

# cut -d',' -f1,3 file.csv - Extract columns from CSV
# Example:
# cut -d',' -f1,3 data.csv
# Name,Age
# John,25
# Maria,30

# sed 's/old/new/g' file - Replace text
# Example:
# sed 's/error/ERROR/g' logfile.txt

# awk '{print $1}' file - Print first column
# awk -F',' '{print $1,$3}' file.csv - Process CSV

################################################################################
# SYSTEM MONITORING
################################################################################

# iostat - CPU and I/O statistics
# vmstat - Virtual memory statistics
# dmesg - Kernel ring buffer messages
# journalctl - Query systemd journal
# systemctl status service - Check service status

# Example:
# systemctl status ssh
# ● ssh.service - OpenBSD Secure Shell server
#    Loaded: loaded (/lib/systemd/system/ssh.service; enabled)
#    Active: active (running) since Wed 2025-10-22 09:00:15 -03

################################################################################
# END OF REFERENCE GUIDE
################################################################################

# Remember: 
# - Use 'man command' for detailed documentation
# - Use 'command --help' for quick help
# - Be careful with rm, especially rm -rf
# - Always backup important data before system changes
# - Use sudo responsibly for system-level operations
