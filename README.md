# BIOSpy
Bypassing BIOS password with software

Written in Delphi, this program resets the BIOS password and displays some other BIOS information (such as battery status) to the user.
For this purpose, it's uses CMOS ports 70h & 71h (RTC - Real Time Clock and Memory). Port 70h using for defining memory address. Port 71h using for Reading/Writing data.
