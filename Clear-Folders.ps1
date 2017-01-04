function Clear-Folders
{
	param(
		[Parameter(Mandatory=$true)]
		[string]$name
	)

	Get-ChildItem . -Directory -Recurse | ?{$_.Name -ieq $name} | %{Get-ChildItem $_.FullName} | Remove-Item -Recurse -Force
}