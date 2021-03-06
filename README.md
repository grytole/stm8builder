# stm8builder

The goal of this project is to make building/flashing of ROMs for stm8s chips as much painless as I can handle it.
All what it needs is a Linux console, cheap STLink clone, stm8s device and your code.

- It builds code with SDCC toolchain. You need to install it manually.
- It integrates a well known Stm8_StdPeriph_Driver from ST. Builder will download and compile this lib automatically.
- It flashes your precious devices with [stm8flash](https://github.com/vdudouyt/stm8flash). Builder will download and compile it too.

### List of needed packages
- sdcc
- libusb-1.0-0-dev
- unzip
- make
- pkg-config

Install it with next:
```
you@linux:~/ledblinker$ sudo apt-get install sdcc libusb-1.0-0-dev unzip make pkg-config
```

### How to compile
Lets assume you have a folder `ledblinker` with a simple piece of code in `ledblinker.c`:
```
you@linux:~/ledblinker$ ls
ledblinker.c
```
At first you need to get a builder:
```
you@linux:~/Downloads$ wget -O stm8builder.zip http://github.com/grytole/stm8builder/archive/master.zip
you@linux:~/Downloads$ ls
stm8builder.zip
you@linux:~/Downloads$ unzip stm8builder.zip
...
you@linux:~/Downloads$ ls
stm8builder.zip stm8builder-master
you@linux:~/Downloads$ ls stm8builder-master
blinker.c LICENSE Makefile.example README.md stm8builder
```
Then you need to copy `stm8builder` folder and Makefile.example to your project folder:
```
you@linux:~/ledblinker$ cp -rf ~/Downloads/stm8builder-master/stm8builder ~/Downloads/stm8builder-master/Makefile.example .
you@linux:~/ledblinker$ ls
ledblinker.c stm8builder Makefile.example
```
Then you need to tune an example makefile or write your own one:
```
you@linux:~/ledblinker$ mv Makefile.example Makefile
you@linux:~/ledblinker$ vi Makefile
...
```
Makefile has 7 options and include line to link it with a builder:
- `PROJECT`, `CHIP`, `CHIPMOD` and `SOURCES` options are required;
- `DEFINES` can be ommitted if you have nothing to add here;
- `FLASHER` can be ommitted and defaults to `stlinkv2`.

Name your project in `PROJECT` option - at the end you'll receive a hex file with that name, for example `PROJECT = ledblinker` will result in `ledblinker.ihx`.
Write list of your files to `SOURCES` option. For this case it is a single file `ledblinker.c`.
Set `CHIP` and `CHIPMOD` options: if you have a dev board with `stm8s103f3p6` chip, then you need to set `CHIP` to `STM8S103` and `CHIPMOD` to `F3`.

Result is:
```
you@linux:~/ledblinker$ cat Makefile
PROJECT = ledblinker
SOURCES = ledblinker.c
DEFINES = 
CHIP    = STM8S103
CHIPMOD = F3
FLASHER = stlinkv2
include stm8builder/stm8builder.mk
```

Finally, compile your code:
```
you@linux:~/ledblinker$ ls
ledblinker.c stm8builder Makefile
you@linux:~/ledblinker$ make
...
you@linux:~/ledblinker$ ls
ledblinker.c stm8builder Makefile ledblinker.ihx
```
Done!

### How to flash
So now you have a hex file:
```
you@linux:~/ledblinker$ ls
ledblinker.c stm8builder Makefile ledblinker.ihx
```
To flash it you need to connect your stm8s device to STLink dongle, then plug in dongle at USB port.
Flashing is easy as:
```
you@linux:~/ledblinker$ make flash
...
```
No errors means success. Done!

### List of build targets for Makefile
Default target. It just builds your code:
```
you@linux:~/ledblinker$ make
```
It flashes you hex file to stm8s device:
```
you@linux:~/ledblinker$ make flash
```
Cleans your project build (Stm8_StdPeriph_Driver and stm8flash are not cleaned):
```
you@linux:~/ledblinker$ make clean
```
Cleans everything - there no generated or downloaded files after that:
```
you@linux:~/ledblinker$ make realclean
```
If you want to build just a driver, then do this:
```
you@linux:~/ledblinker$ make lib
```

### Troubles with STLink's USB permissions
If you get an error with usb permissions, you need to create a rule file in `/etc/udev/rules.d` folder, fill it with VID/PID of your STLink dongle and apply it to system:
```
you@linux:~/ledblinker$ lsusb
Bus 001 Device 004: ID 0483:3748 StMicroelectronics ST-LINK/V2
...
you@linux:~/ledblinker$ echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="3748", MODE:="0666", SYMLINK+="stlinkv2_%n"' > 50-stlinkv2.rules
you@linux:~/ledblinker$ sudo mv 50-stlinkv2.rules /etc/udev/rules.d
you@linux:~/ledblinker$ sudo udevadm control --reload-rules
```
