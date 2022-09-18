# BIOSpy
Bypassing BIOS password with software

Written in Delphi, this program resets the BIOS password and displays some other BIOS information (such as battery status) to the user.
For this purpose, it's uses CMOS ports 70h & 71h (RTC - Real Time Clock and Memory). Using 70h for defining memory address. Using port 71h for Reading/Writing data.
