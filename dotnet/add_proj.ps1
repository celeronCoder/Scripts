# Check If the solution exists if not create one.

$dir_name = Split-Path -Path (Get-Location) -Leaf

$solution_exists = Test-Path -Path "$PSScriptRoot\$dir_name.sln" 

if ($solution_exists) {
	Write-Host "[INFO] Solution Already Exists."
}
else {
	dotnet new sln
}

$type = $args[0]
$name = $args[1]

$types = @(
	'console',
	'classlib',
	'web',
	'mvc',
	'webapp,razor',
	'react',
	'webapi',
	'webapp'
)

$valid_proj = $types -contains $type

if (!$valid_proj) {
	Write-Host "[ERROR] Invalid Project Types"
	Write-Host "[DEBUG] Select one of these type:"
	Write-Host ""
	foreach ($node in $types) {
		"[Type]: $node"
	}
	# $types | ForEach-Object { "[Type]: [$PSItem]" }
	Write-Host ""
	Write-Host "OR Learn More here: https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-new"
	Remove-Item "$dir_name.sln"
	Break
}

$proj_exists = Test-Path -Path "$PSScriptRoot\$name\"

if ($proj_exists) {
	Write-Host "[ERROR] Project or a folder with the same name already exisits."
	Write-Host "[INFO] Consider deleting the folder or provide a new name for the project."
	Break
}
else {
	Write-Host "[INFO] Creating project"
	dotnet new $type -o $name
	$proj_created = Test-Path -Path "$PSScriptRoot\$name\$name.csproj"
	if ($proj_created) {
		dotnet sln add "$name/$name.csproj"
	}
}