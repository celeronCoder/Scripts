$target = $args[0]
$file_name = Split-Path $target -Leaf

function CreateSymlink {
	param (
		$Target,
		$FileName
	)
	New-Item -ItemType SymbolicLink -Path ".\$FileName" -Target $Target
}

CreateSymlink -Target $target -FileName $file_name