# Linux Shortcut Keys and Commands

A comprehensive reference guide for essential Linux command-line operations, covering navigation, file management, system administration, networking, and more.

## Table of Contents

- [Basic Navigation](#basic-navigation)
- [File and Directory Management](#file-and-directory-management)
- [File Permissions and Ownership](#file-permissions-and-ownership)
- [System Information](#system-information)
- [Process Management](#process-management)
- [Networking Commands](#networking-commands)
- [Package Management](#package-management)
  - [Ubuntu/Debian](#ubuntudebian)
  - [RHEL/CentOS](#rhelcentos)
- [File Compression and Archiving](#file-compression-and-archiving)
- [User Management](#user-management)
- [System Shutdown and Reboot](#system-shutdown-and-reboot)
- [Search and Find](#search-and-find)

## Basic Navigation

- `pwd` - Print working directory
- `ls` - List files and directories
- `ls -l` - List in long format
- `ls -a` - List all files including hidden
- `cd` - Change directory
- `cd ..` - Move up one directory
- `cd /` - Go to root directory
- `cd ~` - Go to home directory
- `clear` - Clear the terminal screen
- `history` - Show command history

## File and Directory Management

- `touch filename` - Create a new empty file
- `mkdir dirname` - Create a new directory
- `rmdir dirname` - Remove an empty directory
- `rm filename` - Delete a file
- `rm -r dirname` - Delete a directory recursively
- `cp source destination` - Copy file
- `cp -r source_dir destination` - Copy directory recursively
- `mv oldname newname` - Rename or move a file
- `cat filename` - Display file contents
- `less filename` - View file contents one page at a time
- `head filename` - Show first 10 lines of a file
- `tail filename` - Show last 10 lines of a file
- `tail -f filename` - Monitor file in real-time

## File Permissions and Ownership

- `chmod 755 filename` - Change file permissions
- `chmod u+x filename` - Make file executable for user
- `chown user:group filename` - Change file owner and group
- `ls -l` - View file permissions

## System Information

- `uname -a` - Show all system information
- `hostname` - Show or set system hostname
- `uptime` - Show system running time
- `top` - Display running processes
- `htop` - Interactive process viewer
- `df -h` - Show disk space usage
- `du -sh *` - Show directory sizes
- `free -h` - Show memory usage
- `lscpu` - Display CPU information
- `lsblk` - Show block devices

## Process Management

- `ps` - Show active processes
- `ps aux` - Detailed process list
- `kill PID` - Kill a process by ID
- `killall processname` - Kill process by name
- `bg` - Resume job in background
- `fg` - Bring job to foreground
- `jobs` - List background jobs

## Networking Commands

- `ifconfig` - Show network interfaces
- `ip addr show` - Display IP addresses
- `ping host` - Test connectivity
- `netstat -tuln` - Show active ports
- `ss -tuln` - Show listening sockets
- `curl url` - Transfer data from or to a server
- `wget url` - Download file from web
- `scp file user@host:/path` - Copy file to remote server
- `ssh user@host` - Connect to remote machine via SSH

## Package Management

### Ubuntu/Debian

- `sudo apt update` - Update package list
- `sudo apt upgrade` - Upgrade all packages
- `sudo apt install packagename` - Install a package
- `sudo apt remove packagename` - Remove a package
- `sudo apt autoremove` - Remove unused dependencies
- `dpkg -l` - List installed packages

### RHEL/CentOS

- `sudo yum update` - Update packages
- `sudo yum install packagename` - Install package
- `sudo yum remove packagename` - Remove package
- `sudo dnf install packagename` - Install using DNF (newer versions)

## File Compression and Archiving

- `tar -cvf archive.tar directory` - Create tar archive
- `tar -xvf archive.tar` - Extract tar archive
- `gzip filename` - Compress file
- `gunzip filename.gz` - Decompress file
- `zip archive.zip file1 file2` - Create zip file
- `unzip archive.zip` - Extract zip file

## User Management

- `whoami` - Display current username
- `who` - Show logged-in users
- `id` - Show user and group info
- `sudo adduser username` - Add a new user
- `sudo passwd username` - Change user password
- `sudo deluser username` - Remove user
- `su username` - Switch user
- `logout` - Log out current session

## System Shutdown and Reboot

- `sudo shutdown now` - Shut down immediately
- `sudo shutdown -r now` - Reboot immediately
- `reboot` - Restart the system
- `poweroff` - Power off system

## Search and Find

- `find /path -name filename` - Search for file by name
- `grep 'pattern' file` - Search text inside file
- `grep -r 'pattern' /path` - Search recursively in directory
- `locate filename` - Quickly find files by name
- `updatedb` - Update `locate` database


