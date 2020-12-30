# Before You Begin
Before starting, you need to do basic setup on the Pi.

### If setting up with a monitor, keyboard, and mouse
Follow basic setup prompts after boot.
It is then recommended to enable SSH and VNC via:
Raspberry button -> Preferences -> Raspberry Pi Configuration -> Enable SSH and VNC

### If setting up without a monitor, keyboard, and mouse
Instead do the following:
Activate SSH on boot by inserting a blank "ssh" file into the /boot partition on the SD card.
Now you can SSH to the Pi, the default username is "pi", default password is "raspberry".

Then run
    $sudo raspi-config
interface -> VNC and enable VNC
display opts -> set a resolution not default (this will force a desktop to be available for VNC to connect to)
finish, reboot
Connect again, now with VNC viewer, walk through basic setup, default username is "pi" and default password is "raspberry"

## New to Linux?
To get these scripts onto your computer you can run
git clone https://github.com/grahamalderson/pulsar-pi.git
Then you will have a directory named pulsar-pi you can enter and modify/run these scripts as needed.

You'll have to go into the directory, then make the scripts executable by running
    $cd pulsar-pi
    $chmod a+x *.sh

Before running any script, be sure to read it, for example:
    $cat run_jellyfin.sh

If trying to determine what to change the volume mounts to above, you need to know the name of your mounted USB drives. You can find out by listing the files/folders in the default USB mount location:
    $ls /media/pi
The drives will mount there using their volume name. So it will be /media/pi/USB-DRIVE-NAME

You set the name of the drive when you format it. It can be seen in Mac Finder or Windows Explorer -> This PC, and can also be changed there. It is caps sensitive!

You can modify the scripts by using nano. Enter nano using the example below, then when done hit CTRL+X to exit, then click Y to save the modified file and hit enter to keep the same filename.
    $nano run_jellyfin.sh