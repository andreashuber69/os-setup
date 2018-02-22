# Ubuntu
The following steps describe how I've set up my **Dell XPS 13 9370**.

## A. Create a Bootable USB Stick
1. Download the [Ubuntu Desktop 17.10.1](http://releases.ubuntu.com/17.10.1/ubuntu-17.10.1-desktop-amd64.iso) ISO image.
2. Verify the image as explained [here](https://tutorials.ubuntu.com/tutorial/tutorial-how-to-verify-ubuntu), using the
   associated [SHA256SUMS and SHA256SUMS.gpg files](http://releases.ubuntu.com/17.10.1/)
3. Create a bootable USB stick, by following the instructions for
   [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows) or
   [Linux](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu).

## B. Temorarily Allow Booting from USB Sticks
1. Turn on the **Dell XPS 13 9370** and keep hitting the **F2** button until the BIOS Setup appears.
2. Navigate to **System Configuration**, **Thunderbolt Adapter Configuration**.
3. Check **Enable Thunderbolt Adapter Boot Support**.
4. Click **Apply**, **OK** and **Exit**.

## C. Install the OS
1. Insert the USB Stick into the **Dell XPS 13 9370** (using the included USB-C to USB-A adapter).
2. Turn on the **Dell XPS 13 9370** and keep hitting the **F12** button until the boot screen appears. 
3. Under **UEFI BOOT**, select the USB stick and press **Enter**.
4. Select **Install Ubuntu** and press **Enter**.
5. On the **Welcome** screen, accept the default **English** and click **Continue**.
6. On the **Wireless** screen, select a Wi-Fi network to connect to and click **Connect**.
7. In the **Wi-Fi Network Authentication Required** dialog, enter the network password.
   > **Caution**: The keyboard might not be set correctly yet. Use **Show Password** to verify.
8. Click **Connect** and click **Continue**. 
9. On the **Preparing to install Ubuntu** screen, check **Download updates while installing Ubuntu** and **Install
   third-party software...**.
10. Enter a temporary password (twice) and click **Continue**.
11. On the **Installation type** screen, select **Something else** and click **Continue**.
12. Click **New Partition Table...** and **Continue**.
13. Select **free space**, click **+**, enter *256* for **Size**, select **EFI System Partition** for **Use as** and
    click **OK**.
14. Select **free space**, click **+**, enter *768* for **Size**, select **/boot** as **Mount Point** and click **OK**. 
15. Select **free space**, click **+**, enter *524288* for **Size**, select **physical volume for encryption** for
    **Use as**, enter a password (twice), check **Overwrite empty disk space** and click **OK**. 
16. As a result of the previous step a new partition will be created under **/dev/mapper/..**. Select the partition and
    click **Change...**.
17. Select **/** as **Mount Point** and click **OK**.
18. Click **Install Now** and **Continue**.
19. On the **Where are you?**, **Keyboard layout** and **Who are you?** screens, enter the required information and click
    **Continue**.
20. When the installation has completed, click **Restart Now**.
21. Wait for the message **Press any key to perform MOK management** shown on a blue screen and hit any key.
22. Select **Change Secure Boot state** and press **Enter**.
23. Enter the requested letters of the password.
24. Select **Yes** and press **Enter**.
25. Select **Reboot** and press **Enter**.

## D. Update and Reenable Secure Boot
1. Open a terminal window.
2. `sudo apt-get install git --assume-yes`
3. `git clone https://github.com/andreashuber69/os-setup.git`
4. `cd os-setup/ubuntu`
5. `./setup1`
6. After updates have been installed, you will be guided through reenabling **Secure Boot**, after which the system will
   reboot automatically.
7. Wait for the message **Press any key to perform MOK management** shown on a blue screen and hit any key.
8. Select **Change Secure Boot state** and press **Enter**.
9. Enter the requested letters of the password.
10. Select **Yes** and press **Enter**.
11. Select **Reboot** and press **Enter**.

## E. Install Software
