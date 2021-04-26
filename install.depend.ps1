
# Bootstrap environment
Get-PackageProvider -Name 'NuGet' -ForceBootstrap | Out-Null

# Install PSDepend module if it is not already installed
if (-not (Get-Module -Name 'PSDepend' -ListAvailable)) {
    Write-Output "`nPSDepend is not yet installed...installing PSDepend now..."
    Install-Module -Name 'PSDepend' -Scope 'CurrentUser' -Force
}
else {
    Write-Output "`nPSDepend already installed...skipping."
}

# Install build dependencies
$psDependencyConfigPath = Join-Path -Path $PSScriptRoot -ChildPath 'install.depend.psd1'
Write-Output "Checking / resolving module dependencies from [$psDependencyConfigPath]..."
Import-Module -Name 'PSDepend'
$invokePSDependParams = @{
    Path    = $psDependencyConfigPath
    Import  = $true
    Confirm = $false
    Install = $true
    Verbose = $true
}
Invoke-PSDepend @invokePSDependParams