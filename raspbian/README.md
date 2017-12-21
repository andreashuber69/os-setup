# Raspbian
The following steps describe how I've set up my **Raspberry Pi 3 Model B**. I'm currently testing whether it can be used
as a server for sensitive data (like e.g. my contacts, photos and videos), as an alternative to storing such data with a
cloud service offered by the likes of Microsoft, Google, etc.

> **Note:** Due to security concerns, I currently don't allow access to my home network from the internet. My
> **Raspberry Pi** is therefore only reachable for my devices at home. This is why I have not yet bothered to enable
> https for **ownCloud**.

Right now, the following is working:
- Contact import into **ownCloud** via **vCard** files
- Contact sync between **ownCloud** and my **Android 6** phone (running **Fairphone Open 17.12.1**)
- Backup **ownCloud** data
- Restore **ownCloud** data

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
Changing the locale to en_US.UTF-8 seems to be required however (the same goes for the reboot), follow the URL in
[setup](ownCloud/setup) for more information.

## C. Install ownCloud
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd os-setup/raspbian/ownCloud`
3. `./setup` (prompts for the credentials for the **ownCloud** administrator)

## D. Configure ownCloud
1. Direct your browser to *http://[Raspberry Pi IP address]/owncloud* (on **Raspbian** the script does this
   automatically).
2. Enter the credentials you provided under [C](#c-install-owncloud).
3. Click the menu icon in the top left corner and click **Market**.
4. Click the **Productivity** category and the **Contacts** app.
5. Scroll down and click **Install** in the bottom right corner.
6. In the top right corner, click on the admin user name and **Users**.
7. On the **Users** page, create a separate user for each person who needs to have access (it is recommended to only
   use the **ownCloud** administrator to create other users, not for anything else).
8. In the top right corner, click on the admin user name and **Logout**.

## E. Next Steps
- Import Contacts (instructions follow)
- [Sync Contacts (Android)](sync-contacts-android.md)
- Backup (instructions follow)
- Restore (instructions follow)
