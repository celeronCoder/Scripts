# Dotnet Shorthands

Powershell Scripts to manage dotnet project with command line to kinda get the visual studio features without using it.

## Notes
- When running powershell scripts on linux make sure to have powershell installed.
- When running powershell scripts on linux they have to be marked as executables first (not by default like in windows) do that by following:
	```bash
	chmod +x <script_path>
	```

## Scripts

- **Add Project**
	- Create a dotnet solution if not already present in the current directory.
	- Create a new project using the `dotnet new` command.
	- Adds the project to the solution.
	- Usage:
		- Windows:
			```powershell
			.\add_proj.ps1 <project_type> <project_name>
			```
			- Note: don't provide the path just the name.
		- Linux:
			```bash
			./add_proj.ps1 <project_type> <project_name>
			``` 
- **Remove Project**
	- Search for the specified project name if that exists remove that from the solution (i.e present in the current direcotry).
	- Deletes that project completely.
	- Usage:
		- Windows:
			```powershell
			.\remove_proj.ps1 <project_name>
			```
			- Note: don't provide the path just the name.
		- Linux:
			```bash
			./remove_proj.ps1 <project_name>
			```
