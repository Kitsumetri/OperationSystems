# OperationSystems
**University's task to learn Linux (especially Ubuntu distribution) and macOS**

[Task list](https://docs.google.com/document/d/1q8FmNPGTf_-FJ7Olo0Qw9HKRtk_yg73o/edit)

P.S. Sometimes I could add command for macOS too cuz I'm using it as a main OS.

# Solutions:
## System info
### *CPU*
#### 1)
* Linux:

a) `lscpu`, `cat /proc/cpuinfo`
        
b)
  1. `lscpu | grep "Model name"`
  2. `lscpu | grep "Core"`
  3. `lscpu | grep "CPU MHz"`
  4. `cat /proc/cpuinfo | grep -E "cache size"`
  5. `lscpu | grep -E "Arch"`

* macOS:

a) `sysctl -a | grep cpu`

b)
  1. `sysctl -a | grep "machdep.cpu.brand_string"`
  2. `sudo powermetrics | grep "frequency"` 
  3. `SPHardwareDataType | grep "Cores"`, `sysctl -a | grep "machdep.cpu.core_count"`, `sysctl -a | grep "machdep.cpu.thread_count"`
  4. `sudo sysctl -a | grep "cachesize"`
   
----
### *RAM*
#### 2)

- RAM - оперативная память, используемая компьютером во время работы
- SWAP - процесс выделения виртуальной памяти компьютера, который позволяет расширить RAM

----
#### 3)
* Linux:

`free -h`

* macOS:

`sysctl hw.ncpu` or `system_profiler SPHardwareDataType | grep "Memory:"`

----
#### 4)

Check `swap.sh` in the folder.

----
#### 5)
* Linux:

`sudo dmidecode -t memory` or `sudo lshw -class memory`

* macOS:

 `/usr/sbin/system_profiler SPHardwareDataType`
 
 ----
 ### Disk Usage
 #### 6)
 * Linux and macOS:
 
 `df -h`
 
 ----
 #### 7)
 * Linux:
 
 `du -h $home`
 
 * macOS:
 
 `du -sh *`
 
 ----
 #### 8)
 * Linux:
 
 `top` or `ps -e`
 
 * macOS:

`top` or `ps aux`

 ----
 ### *GPU*
 #### 9)
 
* Linux:

`sudo lshw -c video`

* macOS:

`system_profiler SPDisplaysDataType`

----
### *Network*
#### 10)
* Linux:

`ifconfig | grep "inet addr"`

* macOS:

`ipconfig getifaddr en0` or `ipconfig getifaddr en1`

----
#### 11)
* Linux:

`ifconfig -a | grep ether | gawk '{print $2}'`

* macOs:

`ifconfig -a`. then go to "en0" and then "ether"

----
#### 12)
----
### *Processes info*
#### 13)
* Linux:

`top`, `ps aux` , `htop` but before `sudo install htop`

* macOs:

`top`, `ps aux` , `htop` but before `brew install htop`

----
## System Environment
#### 14)
* Linux and macOS:

`VALUE="Hello, world!"`

----
#### 15)
* Linux:

`PATH=$PATH:$HOME/.bin:$HOME/bin`

----
#### 16)
* Linux:

`sudo apt-get update` and then `sudo apt-get upgrade`

* macOS:

`sudo softwareupdate -l`

----
#### 17)
----
#### 18)
----
#### 19)
* Linux:

Check `Preference` in the terminal window for the customization

* macOS:

Check `Terminal -> Settings`

----
#### 20)
----
## *Grep*
#### 21)

Grep - утилита, с помощью которой можно искать паттерны в текстовых файлах.

a) `grep -w "123" example.txt`

b) `grep '123' example.txt example_1.txt`

c) `grep -E -w -i "123|321|abc" example.txt example_1.txt`

----
#### 22)

`-i` or `--ignore-case`

----
#### 23)

`grep -w "123" example.txt`

----
#### 24)

`-v` or `--invert-match`
`grep -v -i "abcd" example_1.txt

----
#### 25)

`ls /proc/ | grep info`

----
#### 26)

`grep -in "123" example.txt`

----
#### 27)
```
? - zero OR one matchings
. - any symbol
* - zero and more matchings
| - union of regex-s
+ - one or more matchings
{n,m} - previous symbol is matched from n to m times
{n} - EXACTLY n times
{n,} - n and more times
{,m} - no more than m times
^ - matching at the begin of string
$ - matching at the end of string
\ - make the next symbol a literal
[^...] - negation all symbols inside
[] - set of symbols at this position
[[:upper:]] - classified set of symbols
[A-Z] - set of literals from A to Z? - zero OR one matchings
. - any symbol
* - zero and more matchings
| - union of regex-s
+ - one or more matchings
{n,m} - previous symbol is matched from n to m times
{n} - EXACTLY n times
{n,} - n and more times
{,m} - no more than m times
^ - matching at the begin of string
$ - matching at the end of string
\ - make the next symbol a literal
[^...] - negation all symbols inside
[] - set of symbols at this position
[[:upper:]] - classified set of symbols
[A-Z] - set of literals from A to Z
```
----
#### 28)
----
#### 29)
----
#### 30)
----
#### 31)

`top | grep nikolai`

----
### *Find*
#### 32)

`find /Users/nikolai -type f -name "example.txt"`

----
#### 33)
----
#### 34)
----
#### 35)
----
#### 36)
----
#### 37)
----
#### 38)

----
