# HylaFAX_WindowsClient
How to set up a HylaFAX Client to print the wrong way.

First, install HylaPEx and PDF24.

Copy fax.bat & fax2.bat in the default HylaPEx installation directory. (C:\Program Files (x86)\Hylapex)
Change in fax2.bat \<username\>, <password> & <server> to your configuration. 

Start HylaPEx. (You may go into the default installation directory and can start it from there. Consider a shortcut.)
Also change the username, password and server. 
Upon saving, its likely you get an error about Ghostscript. Just restart the application and check if your configuration is still there.
  
In PDF24 under prefernces, create a new virtual PDF Printer. The Profile schould be set to a standard TIFF.
Furtheremore, set the executed command to: C:\"Program Files (x86)"\Hylapex\fax.bat "${file}"

Happy Faxing!
