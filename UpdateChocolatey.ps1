. "${PSScriptRoot}\\choco_packages.ps1" # Must define array of strings with name choco_packages

$script = $MyInvocation.MyCommand.Name

$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object System.Security.Principal.WindowsPrincipal($identity)
if (-not $principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Not running with administrative rights. Attempting to elevate..."
    $command = "-ExecutionPolicy bypass -File `"${PSScriptRoot}\$script`""
    Start-Process powershell -verb runas -argumentlist $command
    Exit
}

Write-Host "`n========= Updating chocolatey packages ========="
& choco upgrade -y $choco_packages


Write-Host -NoNewLine "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")