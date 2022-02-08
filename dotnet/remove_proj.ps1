$dir_name = Split-Path -Path (Get-Location) -Leaf

$proj = $args[0]

$solution_exists = Test-Path -Path "$PSScriptRoot\$dir_name.sln"

if (!$proj) {
	Write-Host "[ERROR] Please provide the .csproj path if you want to."
}

if ($solution_exists) {
	Write-Host "[INFO] Removing $proj/$proj.csproj from the solution"
	dotnet sln remove "$proj/$proj.csproj"
	Remove-Item $proj -Recurse
}
else {
	Remove-Item $proj -Recurse
}