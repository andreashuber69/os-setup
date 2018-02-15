# Ubuntu
The following steps describe how I've set up my **Dell XPS 13 9370**.

## A. Create a Bootable USB Stick
1. Download the [Ubuntu Desktop 17.10.1](http://releases.ubuntu.com/17.10.1/ubuntu-17.10.1-desktop-amd64.iso) ISO image.
2. Verify the image as explained [here](https://tutorials.ubuntu.com/tutorial/tutorial-how-to-verify-ubuntu), using the
   associated [SHA256SUMS and SHA256SUMS.gpg files](http://releases.ubuntu.com/17.10.1/)
3. Create a bootable USB stick, by following the instructions for
   [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows) or
   [Linux](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu).

## B. Temorarily allow booting from USB sticks
1. Turn on the **Dell XPS 13 9370** and keep hitting the **F2** button until the BIOS screen shows up.
2. Navigate to **Settings**, **System Configuration**, **Thunderbolt Adapter Configuration**.
3. Check **Enable Thunderbolt Adapter Boot Support** and click **Apply**, click **OK** and **Exit**.

## B. Install the OS
1. Insert the USB Stick into the **Dell XPS 13 9370** (using the included USB-C to USB-A adapter), turn it on and keep
   hitting the **F12** button until the boot screen shows up. 
2. Select the USB stick and press **Enter**.

## D. Re-enable Secure Boot
1. Open a terminal window.
2. `sudo mokutil --enable-validation`
3. Enter a temporary password twice.
4. Reboot the machine.

