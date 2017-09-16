README file - dfu-util 0.6 binaries for win32

SOURCE CODE:

The sources for the libusb library (here distributed as libusb-1.0.dll)
can be found at http://libusb.org/

The sources for dfu-util.exe and dfu-suffix.exe can be found
at http://dfu-util.gnumonks.org/

See individual source files for full copyright information.
See enclosed COPYING file for distribution.

BUILDING:

The binaries were built using the enclosed build-mingw32.sh script, on
a Ubuntu 12.04 system.

INSTALLATION:

Keep libusb-1.0.dll in the same directory as the dfu-util.exe and
dfu-suffix.exe executables or copy it to the system library folder
(e.g. C:\WINDOWS\SYSTEM32)

dfu-util uses libusb to access USB devices, and this version of libusb
uses WinUSB (a Microsoft Windows system driver installed by default in
Microsoft Vista and later versions). The USB device to be accessed
must therefore be registered with the WinUSB driver. This can easily be
done with the zadig tool from
https://sourceforge.net/projects/libwdi/files/zadig/

Plug in your device, run zadig.exe, select your device in the left field
and select WinUSB in the right field. You can now access your device from
any WinUSB or libusb based programs.

See http://libusb.org/wiki/windows_backend for more information.

