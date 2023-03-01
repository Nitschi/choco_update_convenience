$basic_packages = (`
    "chocolatey" ,`
    "firefox",`
    "chromium",`
    "7zip",`
    "adobereader",`
    "git",`
    "notepadplusplus",`
    "javaruntime")

$utility_packages = (`
    "keepassxc",`
    "foxitreader",`
    "nextcloud-client",`
    "putty",`
    "treesizefree",`
    "winscp",`
    "vlc",`
    "signal",`
    "spotify")

$dev_packages = (`
    "docker-desktop",`
    "dotnet-sdk",`
    "vscode",`
    "jetbrains-rider",`
    "pycharm")

$choco_packages = $basic_packages + $utility_packages + $dev_packages