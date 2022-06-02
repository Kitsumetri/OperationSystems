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
 
 `du -h $home`or `du -h /home`
 
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

`ifconfig -a | grep ether | gawk '{print $2}`

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

* macOS:

----
#### 17)
* Linux:

* macOS:

----
#### 18)
* Linux:

* macOS:

----
#### 19)
* Linux:

* macOS:

----
#### 20)
* Linux:

* macOS:

----
