# Linux Shortcut Keys and Commands

A comprehensive reference guide for essential Linux command-line operations, covering navigation, file management, system administration, networking, and more.

## Table of Contents

- [Linux Shortcut Keys and Commands](#linux-shortcut-keys-and-commands)
  - [Table of Contents](#table-of-contents)
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
  - [Pattern Scanning and Processing](#pattern-scanning-and-processing)
  - [Examples / Exemplos](#examples--exemplos)
    - [Example 1: `pwd`](#example-1-pwd)
    - [Example 2: `ls -l`](#example-2-ls--l)
    - [Example 3: `cat filename`](#example-3-cat-filename)
    - [Example 4: `df -h`](#example-4-df--h)
    - [Example 5: `ps aux | head -n 4`](#example-5-ps-aux--head--n-4)
    - [Example 6: `ping -c 3 8.8.8.8`](#example-6-ping--c-3-8888)
    - [Example 7: `curl -I https://example.com`](#example-7-curl--i-httpsexamplecom)
    - [Example 8: `whoami`](#example-8-whoami)
    - [Example 9: `uname -a`](#example-9-uname--a)
    - [Example 10: `free -h`](#example-10-free--h)
    - [Example 11: `grep -i 'error' logfile.txt`](#example-11-grep--i-error-logfiletxt)
    - [Example 12: `sed 's/old/new/g' config.txt`](#example-12-sed-soldnewg-configtxt)
    - [Example 13: `awk '{print $1, $3}' data.txt`](#example-13-awk-print-1-3-datatxt)
    - [Example 14: `grep -E '^[0-9]+$' numbers.txt`](#example-14-grep--e-0-9-numberstxt)
    - [Example 15: `awk -F: '{print $1}' /etc/passwd`](#example-15-awk--f-print-1-etcpasswd)
    - [Example 16: `sort | uniq -c | sort -rn logfile.txt`](#example-16-sort--uniq--c--sort--rn-logfiletxt)
    - [Example 17: `cut -d: -f1,3 /etc/passwd`](#example-17-cut--d--f13-etcpasswd)
    - [Example 18: `wc -l *.txt`](#example-18-wc--l-txt)
    - [Example 19: `diff file1.txt file2.txt`](#example-19-diff-file1txt-file2txt)
    - [Example 20: `tr 'a-z' 'A-Z' < input.txt`](#example-20-tr-a-z-a-z--inputtxt)

## Basic Navigation

- `pwd` - Print working directory / Imprimir o diretório de trabalho
- `ls` - List files and directories / Listar arquivos e diretórios
- `ls -l` - List in long format / Listar em formato longo (mais informações)
- `ls -a` - List all files including hidden / Listar todos os arquivos, incluindo ocultos
- `cd` - Change directory / Mudar de diretório
- `cd ..` - Move up one directory / Subir um diretório
- `cd /` - Go to root directory / Ir para o diretório raiz
- `cd ~` - Go to home directory / Ir para o diretório home
- `clear` - Clear the terminal screen / Limpar a tela do terminal
- `history` - Show command history / Mostrar histórico de comandos

## File and Directory Management

- `touch filename` - Create a new empty file / Criar um arquivo vazio
- `mkdir dirname` - Create a new directory / Criar um diretório
- `rmdir dirname` - Remove an empty directory / Remover um diretório vazio
- `rm filename` - Delete a file / Apagar um arquivo
- `rm -r dirname` - Delete a directory recursively / Apagar um diretório recursivamente
- `cp source destination` - Copy file / Copiar arquivo
- `cp -r source_dir destination` - Copy directory recursively / Copiar diretório recursivamente
- `mv oldname newname` - Rename or move a file / Renomear ou mover um arquivo
- `cat filename` - Display file contents / Mostrar conteúdo do arquivo
- `less filename` - View file contents one page at a time / Visualizar o arquivo página a página
- `head filename` - Show first 10 lines of a file / Mostrar as primeiras 10 linhas de um arquivo
- `tail filename` - Show last 10 lines of a file / Mostrar as últimas 10 linhas de um arquivo
- `tail -f filename` - Monitor file in real-time / Monitorar arquivo em tempo real

## File Permissions and Ownership

- `chmod 755 filename` - Change file permissions / Alterar permissões do arquivo
- `chmod u+x filename` - Make file executable for user / Tornar o arquivo executável para o usuário
- `chown user:group filename` - Change file owner and group / Alterar dono e grupo do arquivo
- `ls -l` - View file permissions / Ver permissões do arquivo

## System Information

- `uname -a` - Show all system information / Mostrar todas as informações do sistema
- `hostname` - Show or set system hostname / Exibir ou definir o nome do host
- `uptime` - Show system running time / Mostrar tempo que o sistema está em execução
- `top` - Display running processes / Exibir processos em execução
- `htop` - Interactive process viewer / Visualizador interativo de processos
- `df -h` - Show disk space usage / Mostrar uso de disco (legível)
- `du -sh *` - Show directory sizes / Mostrar tamanhos de diretórios
- `free -h` - Show memory usage / Mostrar uso de memória (legível)
- `lscpu` - Display CPU information / Exibir informações da CPU
- `lsblk` - Show block devices / Mostrar dispositivos de bloco

## Process Management

- `ps` - Show active processes / Mostrar processos ativos
- `ps aux` - Detailed process list / Lista detalhada de processos
- `kill PID` - Kill a process by ID / Matar um processo pelo PID
- `killall processname` - Kill process by name / Matar processo pelo nome
- `bg` - Resume job in background / Retomar trabalho em segundo plano
- `fg` - Bring job to foreground / Trazer trabalho para primeiro plano
- `jobs` - List background jobs / Listar trabalhos em segundo plano

## Networking Commands

- `ifconfig` - Show network interfaces / Mostrar interfaces de rede
- `ip addr show` - Display IP addresses / Exibir endereços IP
- `ping host` - Test connectivity / Testar conectividade
- `netstat -tuln` - Show active ports / Mostrar portas ativas
- `ss -tuln` - Show listening sockets / Mostrar sockets em escuta
- `curl url` - Transfer data from or to a server / Transferir dados de/para um servidor
- `wget url` - Download file from web / Baixar arquivo da web
- `scp file user@host:/path` - Copy file to remote server / Copiar arquivo para servidor remoto
- `ssh user@host` - Connect to remote machine via SSH / Conectar a máquina remota via SSH

## Package Management

### Ubuntu/Debian

- `sudo apt update` - Update package list
- `sudo apt upgrade` - Upgrade all packages
- `sudo apt install packagename` - Install a package
- `sudo apt remove packagename` - Remove a package
- `sudo apt autoremove` - Remove unused dependencies
- `dpkg -l` - List installed packages
 - `sudo apt update` - Update package list / Atualizar lista de pacotes
 - `sudo apt upgrade` - Upgrade all packages / Atualizar todos os pacotes
 - `sudo apt install packagename` - Install a package / Instalar um pacote
 - `sudo apt remove packagename` - Remove a package / Remover um pacote
 - `sudo apt autoremove` - Remove unused dependencies / Remover dependências não usadas
 - `dpkg -l` - List installed packages / Listar pacotes instalados

### RHEL/CentOS

- `sudo yum update` - Update packages
- `sudo yum install packagename` - Install package
- `sudo yum remove packagename` - Remove package
- `sudo dnf install packagename` - Install using DNF (newer versions)
 - `sudo yum update` - Update packages / Atualizar pacotes
 - `sudo yum install packagename` - Install package / Instalar pacote
 - `sudo yum remove packagename` - Remove package / Remover pacote
 - `sudo dnf install packagename` - Install using DNF (newer versions) / Instalar usando DNF (versões mais novas)

## File Compression and Archiving

- `tar -cvf archive.tar directory` - Create tar archive / Criar arquivo tar
- `tar -xvf archive.tar` - Extract tar archive / Extrair arquivo tar
- `gzip filename` - Compress file / Comprimir arquivo
- `gunzip filename.gz` - Decompress file / Descomprimir arquivo
- `zip archive.zip file1 file2` - Create zip file / Criar arquivo zip
- `unzip archive.zip` - Extract zip file / Extrair arquivo zip

## User Management

- `whoami` - Display current username / Exibir nome do usuário atual
- `who` - Show logged-in users / Mostrar usuários logados
- `id` - Show user and group info / Mostrar informações de usuário e grupo
- `sudo adduser username` - Add a new user / Adicionar um novo usuário
- `sudo passwd username` - Change user password / Alterar senha do usuário
- `sudo deluser username` - Remove user / Remover usuário
- `su username` - Switch user / Trocar de usuário
- `logout` - Log out current session / Sair da sessão atual

## System Shutdown and Reboot

- `sudo shutdown now` - Shut down immediately / Desligar imediatamente
- `sudo shutdown -r now` - Reboot immediately / Reiniciar imediatamente
- `reboot` - Restart the system / Reiniciar o sistema
- `poweroff` - Power off system / Desligar o sistema

## Search and Find

- `find /path -name filename` - Search for file by name / Procurar arquivo por nome
- `grep 'pattern' file` - Search text inside file / Procurar texto dentro de um arquivo
- `grep -r 'pattern' /path` - Search recursively in directory / Procurar recursivamente em um diretório
- `locate filename` - Quickly find files by name / Encontrar arquivos rapidamente por nome
- `updatedb` - Update `locate` database / Atualizar o banco de dados do `locate`

## Pattern Scanning and Processing

- `grep -i 'pattern' file` - Case-insensitive search / Procura insensível a maiúsculas/minúsculas
- `grep -E 'regex' file` - Search using extended regular expressions / Procurar com expressões regulares estendidas
- `grep -v 'pattern' file` - Invert match (exclude pattern) / Inverter correspondência (excluir padrão)
- `grep -c 'pattern' file` - Count matching lines / Contar linhas correspondentes
- `sed 's/old/new/g' file` - Replace all occurrences of text / Substituir todas as ocorrências de texto
- `sed -i 's/old/new/g' file` - Edit file in-place / Editar arquivo no local
- `sed '10d' file` - Delete specific line / Deletar linha específica
- `sed -n '5,10p' file` - Print specific lines / Imprimir linhas específicas
- `awk '{print $1}' file` - Print first field/column / Imprimir primeiro campo/coluna
- `awk '{print $NF}' file` - Print last field/column / Imprimir último campo/coluna
- `awk -F: '{print $1}' file` - Use specific field separator / Usar separador de campo específico
- `awk '{sum+=$1} END {print sum}' file` - Sum values in column / Somar valores em coluna
- `cut -d: -f1 file` - Extract fields from file / Extrair campos do arquivo
- `cut -c1-5 file` - Extract character range / Extrair intervalo de caracteres
- `tr 'a-z' 'A-Z' < file` - Translate/transform characters / Traduzir/transformar caracteres
- `sort file` - Sort lines / Ordenar linhas
- `sort -r file` - Sort in reverse order / Ordenar em ordem reversa
- `sort -u file` - Sort and remove duplicates / Ordenar e remover duplicatas
- `uniq file` - Remove consecutive duplicate lines / Remover linhas duplicadas consecutivas
- `wc -l file` - Count lines / Contar linhas
- `wc -w file` - Count words / Contar palavras
- `wc -c file` - Count bytes / Contar bytes
- `comm file1 file2` - Compare two sorted files / Comparar dois arquivos ordenados
- `diff file1 file2` - Show differences / Mostrar diferenças
- `paste file1 file2` - Merge files side-by-side / Mesclar arquivos lado a lado


## Examples / Exemplos

Below are sample commands with example outputs and bilingual explanations. The examples show typical output; your system values (usernames, paths, sizes, IPs) will differ.

### Example 1: `pwd`

**EN:** Prints the current working directory.  
**PT:** Imprime o diretório de trabalho atual.

```bash
$ pwd
/home/username
```

### Example 2: `ls -l`

**EN:** Lists files with permissions, owner, size and modification date.  
**PT:** Lista arquivos com permissões, dono, tamanho e data de modificação.

```bash
$ ls -l
drwxr-xr-x 2 username group 4096 Oct 25 12:00 project
-rw-r--r-- 1 username group  1234 Oct 24 09:15 README.md
-rw-r--r-- 1 username group   567 Oct 23 14:30 notes.txt
```

### Example 3: `cat filename`

**EN:** Displays the full contents of the file.  
**PT:** Exibe todo o conteúdo do arquivo.

```bash
$ cat README.md
# Linux Shortcut Keys and Commands

A comprehensive reference guide for essential Linux command-line operations,
covering navigation, file management, system administration, networking, and more.
```

### Example 4: `df -h`

**EN:** Shows disk usage in human-readable format.  
**PT:** Mostra o uso de disco em formato legível.

```bash
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   12G   36G  25% /
/dev/sda2       100G   45G   50G  47% /home
tmpfs           7.8G     0  7.8G   0% /dev/shm
```

### Example 5: `ps aux | head -n 4`

**EN:** Shows running processes; piped to `head` to show first lines.  
**PT:** Mostra processos em execução; usado `head` para mostrar as primeiras linhas.

```bash
$ ps aux | head -n 4
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.1 169084  5464 ?        Ss   Oct24   0:04 /sbin/init
root         2  0.0  0.0      0     0 ?        S    Oct24   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    Oct24   0:00 [rcu_gp]
```

### Example 6: `ping -c 3 8.8.8.8`

**EN:** Tests connectivity with the host and reports round-trip times.  
**PT:** Testa conectividade com o host e mostra tempos de ida e volta.

```bash
$ ping -c 3 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=118 time=14.2 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=118 time=13.8 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=118 time=14.1 ms

--- 8.8.8.8 statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/stddev = 13.8/14.0/14.2/0.2 ms
```

### Example 7: `curl -I https://example.com`

**EN:** Fetches only the HTTP headers for the URL.  
**PT:** Busca apenas os cabeçalhos HTTP da URL.

```bash
$ curl -I https://example.com
HTTP/1.1 200 OK
Age: 241593
Cache-Control: max-age=604800
Content-Type: text/html; charset=UTF-8
Date: Sat, 25 Oct 2025 12:00:00 GMT
Server: ECS (dcb/7F81)
```

### Example 8: `whoami`

**EN:** Displays the current logged-in username.  
**PT:** Exibe o nome do usuário logado atualmente.

```bash
$ whoami
madsonluna
```

### Example 9: `uname -a`

**EN:** Shows all system information.  
**PT:** Mostra todas as informações do sistema.

```bash
$ uname -a
Linux ubuntu-server 5.15.0-84-generic #93-Ubuntu SMP Tue Sep 12 12:00:00 UTC 2023 x86_64 GNU/Linux
```

### Example 10: `free -h`

**EN:** Shows memory usage in human-readable format.  
**PT:** Mostra o uso de memória em formato legível.

```bash
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           15Gi       7.2Gi       2.1Gi       456Mi       5.6Gi       7.3Gi
Swap:          2.0Gi          0       2.0Gi
```

### Example 11: `grep -i 'error' logfile.txt`

**EN:** Search for "error" case-insensitively in a log file.  
**PT:** Procurar por "error" insensível a maiúsculas/minúsculas em um arquivo de log.

```bash
$ grep -i 'error' logfile.txt
2025-10-25 10:15:23 ERROR: Connection timeout
2025-10-25 10:16:45 Warning: Minor error detected
2025-10-25 10:17:12 ERROR: Database unavailable
```

### Example 12: `sed 's/old/new/g' config.txt`

**EN:** Replace all occurrences of "old" with "new" in a file.  
**PT:** Substituir todas as ocorrências de "old" por "new" em um arquivo.

```bash
$ cat config.txt
server=old-host.com
database=old-db
backup_server=old-backup

$ sed 's/old/new/g' config.txt
server=new-host.com
database=new-db
backup_server=new-backup
```

### Example 13: `awk '{print $1, $3}' data.txt`

**EN:** Extract and print first and third columns from a file.  
**PT:** Extrair e imprimir primeira e terceira colunas de um arquivo.

```bash
$ cat data.txt
John 25 Engineer New-York
Alice 30 Manager London
Bob 28 Developer Paris

$ awk '{print $1, $3}' data.txt
John Engineer
Alice Manager
Bob Developer
```

### Example 14: `grep -E '^[0-9]+$' numbers.txt`

**EN:** Find lines with only numbers using regex.  
**PT:** Encontrar linhas apenas com números usando regex.

```bash
$ cat numbers.txt
12345
abc123
789
xyz
456

$ grep -E '^[0-9]+$' numbers.txt
12345
789
456
```

### Example 15: `awk -F: '{print $1}' /etc/passwd`

**EN:** Extract usernames from passwd file using colon as field separator.  
**PT:** Extrair nomes de usuário do arquivo passwd usando dois-pontos como separador.

```bash
$ awk -F: '{print $1}' /etc/passwd | head -5
root
daemon
bin
sys
sync
```

### Example 16: `sort | uniq -c | sort -rn logfile.txt`

**EN:** Count occurrences of each unique line and sort by frequency (descending).  
**PT:** Contar ocorrências de cada linha única e ordenar por frequência (decrescente).

```bash
$ cat access.log | awk '{print $1}' | sort | uniq -c | sort -rn
    145 192.168.1.50
     98 192.168.1.75
     67 10.0.0.12
     43 172.16.0.5
     21 10.0.0.8
```

### Example 17: `cut -d: -f1,3 /etc/passwd`

**EN:** Extract username (field 1) and UID (field 3) from passwd file.  
**PT:** Extrair nome de usuário (campo 1) e UID (campo 3) do arquivo passwd.

```bash
$ cut -d: -f1,3 /etc/passwd | head -5
root:0
daemon:1
bin:2
sys:3
sync:4
```

### Example 18: `wc -l *.txt`

**EN:** Count lines in all .txt files.  
**PT:** Contar linhas em todos os arquivos .txt.

```bash
$ wc -l *.txt
  150 document1.txt
   87 document2.txt
  203 notes.txt
  440 total
```

### Example 19: `diff file1.txt file2.txt`

**EN:** Show differences between two files.  
**PT:** Mostrar diferenças entre dois arquivos.

```bash
$ diff file1.txt file2.txt
3c3
< The old version of this line
---
> The new version of this line
5a6
> Added line in file2
```

### Example 20: `tr 'a-z' 'A-Z' < input.txt`

**EN:** Convert lowercase to uppercase.  
**PT:** Converter minúsculas para maiúsculas.

```bash
$ cat input.txt
hello world
this is a test

$ tr 'a-z' 'A-Z' < input.txt
HELLO WORLD
THIS IS A TEST
```



