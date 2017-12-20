# Raspbian
The files in this folder are intended to customize a freshly installed **Raspbian** on a **Raspberry Pi 3 Model B**.

## A. Install the OS

Use [NOOBS or NOOBS Lite](https://www.raspberrypi.org/downloads/noobs/) to install **Raspbian** or **Raspbian Lite** and
boot the freshly installed OS.

## B. Customize Raspbian

The following steps customize the OS and install additional software:

1. On **Raspbian**, open a **Terminal Window** (on)
2. `sudo apt-get install git --assume-yes` (make sure git is installed)
3. `mkdir git`
4. `cd git`
5. `git clone https://github.com/andreashuber69/os-setup`
6. `cd os-setup/raspbian/base`
7. `./setup`

