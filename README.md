# Scripts

Some useful scripts to make my life easier and run less commands.

## Guide

### Create Symbolic Link

Creates a Symbolic Link of a file in the current directory.

- *FileName*: creat_link.ps1
- *Permission*:  Administrator privilege required for this operation.
- *Parameters*:
	- target_path: full path of the target file.

**Usage**:

- Windows:
	- Open up a powershell window with administrator privileges. You can use the following command to do so:
		```powershell
		Start-Process -FilePath "powershell" -Verb RunAs
		```
	- Run the command as following:
		```powershell
		.\create_link.ps1 <target_path>
		```
		- The `<target_path>` needs to be the full path of the file you need to create symbolic link of in the current directory.

- Linux:
	- Make sure you have powershell installed on the system.
	- Make the script executrable as follows:
		```bash
		chmod +x ./create_link.ps1
		```
	- Run the script:
		```bash
		./create_link.ps1 <target_path>
		``` 
