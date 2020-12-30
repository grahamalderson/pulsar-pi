# pulsar-pi
This is a set of instructions for building a Raspberry Pi similar to that used on S/V Pulsar.

Software this can help you install includes:

Kolibri -> Homeschooling

KiwiX - Offline Wikipedia, Gutenberg, etc

Calibre-Web - Ebook server

Samba - File sharing

Jellyfin - Media server

Nginx - Web server

## Troubleshooting
If your share folder is not working run the following command to fix permissions that the OS butchered and enable Samba to read the USB mount directory:
    $sudo chmod a+rx /media/pi

## Get Started
1. Perform basic setup for the Pi as defined in [start_here.md in the pi folder](./pi/start_here.md).
2. Run other setup commands in the pi folder
3. Choose applications and run commands as appropriate from the apps folder

You will need to change the --volume commands in the apps scripts before running them because they are fake paths. You will want to change them to match your USB drives and folders. The placeholder is "usb-drive" and should be replaced with the drive name at a minimum.
