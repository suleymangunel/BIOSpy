# BIOSpy
Bypassing BIOS password with software

Written in Delphi, this program resets the BIOS password and displays some other BIOS information (such as battery status) to the user. It uses 70h and 71h (RTC - Real Time Clock and Memory) CMOS ports for this purpose. Port 70h used to define the memory address. Port 71h used to get/set data.
