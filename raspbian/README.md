# Raspbian
The files in this folder are intended to customize a freshly installed **Raspbian** on a **Raspberry Pi 3 Model B**.

## A. Install the OS
Use [NOOBS or NOOBS Lite](https://www.raspberrypi.org/downloads/noobs/) to install **Raspbian** or **Raspbian Lite**
and boot the freshly installed OS.

## B. Customize Raspbian
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `sudo apt-get install git --assume-yes`
3. `git clone https://github.com/andreashuber69/os-setup`
4. `cd os-setup/raspbian/base`
5. `./setup` (this will reboot the **Raspberry Pi** when everything is done)

Most commands in the `setup` script just tweak things to my liking and are not strictly necessary for what comes next.
Changing the locale to en_US.UTF-8 seems to be required however (the same goes for the reboot), follow URL in
[setup](ownCloud/setup) for more information.

## C. Install ownCloud
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd os-setup/raspbian/ownCloud`
3. `./setup` (prompts for the credentials for the **ownCloud** administrator)

## D. Configure ownCloud
1. Direct your browser to http://*[your IP address]*/owncloud (on **Raspbian** the script does this automatically).
2. Enter the credentials you provided under C.
3. In the top right corner, click on your admin user name and **Users**.
4. On the **Users** page, create a separate user for each person who needs to have access (it is recommended to only
   use the **ownCloud** administrator to create other users, not for anything else).
