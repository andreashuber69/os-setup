# Sync Contacts with Android

The following steps assume that you've [successfully setup ownCloud](README.md).

## A. Install DAVdroid on your Android phone
1. Install **DAVdroid** for free through [F-Droid](https://f-droid.org/packages/at.bitfire.davdroid/) or buy it on
   [Google Play](https://play.google.com/store/apps/details?id=at.bitfire.davdroid).
2. Make sure your **Android** phone is connected to the same network as the **Raspberry Pi** running **ownCloud**. If
   unsure, direct your browser to http://*[Raspberry Pi IP address]*/owncloud. You should see the **ownCloud** login
   screen. 
3. Run **DAVdroid**.
4. Tap the **+** button in the bottom right corner.
5. Tap **Login with URL and user name**.
6. Enter *http://[Raspberry Pi IP address]/owncloud/remote.php/dav/* for the **Base URL**.
7. Enter the **User name** and **Password** of an **ownCloud** user created under [D](#d-configure-owncloud).
8. Tap **LOGIN**.
9. Select **Groups are per-contact categories** and tap **CREATE ACCOUNT**.

## B. Add the DAVdroid address book to your contacts
1. Open the **Android Contacts** app.
2. Open the menu in the top right corner and tap **Accounts**.
3. Tap **Add account** and **DAVDroid Address book**.
4. Select the account created under [E](#e-install-davdroid-on-your-android-phone) and allow access to your contacts and
   calendar (if prompted).
5. Check **Contacts** and tap the **Sync** icon.
6. Tap the **Back** button until you are back in the **Android Contacts** app.
7. You should now see the **ownCloud** contacts (if any) and you can now create contacts that will be stored in
   **ownCloud**.
