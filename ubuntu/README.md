# Ubuntu
The following steps describe how I've set up my **Dell XPS 13 9370**.

## A. Create a Bootable USB Stick
1. Download the [Ubuntu Desktop 18.04](http://releases.ubuntu.com/18.04/ubuntu-18.04.1-desktop-amd64.iso) ISO image.
2. Verify the image as explained [here](https://tutorials.ubuntu.com/tutorial/tutorial-how-to-verify-ubuntu), using the
   associated [SHA256SUMS and SHA256SUMS.gpg files](http://releases.ubuntu.com/18.04/)
3. Create a bootable USB stick, by following the instructions for
   [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows) or
   [Linux](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu).

## B. Temporarily Allow Booting from USB Sticks
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
6. On the **Keyboard layout** screen, select the correct layout and click **Continue**.
7. On the **Wireless** screen, select a Wi-Fi network to connect to and click **Connect**.
8. In the **Wi-Fi Network Authentication Required** dialog, enter the network password.
9. Click **Connect** and click **Continue**. 
10. On the **Updates and other software** screen, check **Download updates while installing Ubuntu** and **Install
    third-party software...**.
11. Enter a temporary password (twice) and click **Continue**.
12. On the **Installation type** screen, select **Something else** and click **Continue**.
13. Click **New Partition Table...** and **Continue**.
14. Select **free space**, click **+**, enter *256* for **Size**, select **EFI System Partition** for **Use as** and
    click **OK**.
15. Select **free space**, click **+**, enter *768* for **Size**, select **/boot** as **Mount Point** and click **OK**. 
16. Select **free space**, click **+**, enter *524288* for **Size**, select **physical volume for encryption** for
    **Use as**, enter a password (twice), check **Overwrite empty disk space** and click **OK**. 
17. As a result of the previous step a new partition will be created under **/dev/mapper/..**. Select the partition and
    click **Change...**.
18. Select **/** as **Mount Point** and click **OK**.
19. Click **Install Now** and **Continue** twice.
20. On the **Where are you?** and **Who are you?** screens, enter the required information and click **Continue**.
21. When the installation has completed, click **Restart Now**.
22. Wait for the message **Press any key to perform MOK management** shown on a blue screen and hit any key.
23. Select **Enroll MOK** and press **Enter** then select **Continue** and press **Enter**.
24. Select **Yes** and press **Enter**.
25. Enter the password and press **Enter**.
26. Select **Reboot** and press **Enter**.

## D. Update and Re-enable Secure Boot
1. Open a terminal window.
2. `sudo apt-get install git --assume-yes`
3. `git clone https://github.com/andreashuber69/os-setup.git`
4. `cd os-setup/ubuntu`
5. `./setup1`
6. After the updates have been installed the system will reboot automatically.

## E. Install Software
1. Open a terminal window.
2. `./setup2`
