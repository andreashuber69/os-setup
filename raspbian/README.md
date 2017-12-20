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
1. Direct your browser to http://*[Raspberry Pi IP address]*/owncloud (on **Raspbian** the script does this automatically).
2. Enter the credentials you provided under [C](#c-install-owncloud).
3. In the top right corner, click on the admin user name and **Users**.
4. On the **Users** page, create a separate user for each person who needs to have access (it is recommended to only
   use the **ownCloud** administrator to create other users, not for anything else).

## E. Install DAVdroid on your Android phone
1. Install **DAVdroid** for free through [F-Droid](https://f-droid.org/packages/at.bitfire.davdroid/) or buy it on
   [Google Play](https://play.google.com/store/apps/details?id=at.bitfire.davdroid).
2. Make sure your **Android** phone is connected to the same network as the **Raspberry Pi** running **ownCloud**. If
   unsure, direct your browser to http://*[Raspberry Pi IP address]*/owncloud. You should see the **ownCloud** login screen. 
3. Run **DAVdroid**.
4. Tap the **+** button in the bottom right corner.
5. Tap **Login with URL and user name**.
6. Enter *http://[Raspberry Pi IP address]/owncloud/remote.php/dav/* for the **Base URL**.
7. Enter the **User name** and **Password** of an **ownCloud** user created under [D](#d-configure-owncloud).
8. Tap **LOGIN**.
9. Select **Groups are per-contact categories** and tap **CREATE ACCOUNT**.

## F. Add the DAVdroid address book to your contacts
1. Open the **Android Contacts** app.
2. Open the menu in the top right corner and tap **Accounts**.
3. Tap **Add account** and **DAVDroid Address book**.
4. Select the account created under [E](#e-install-davdroid-on-your-android-phone) and allow access to your contacts and
   calendar (if prompted).
5. Check **Contacts** and tap the **Refresh** icon.
6. Tap the **Back** button until you are back in the **Android Contacts** app.
7. You should now see the **ownCloud** contacts (if any) and you can now create contacts that will be stored in **ownCloud**.
