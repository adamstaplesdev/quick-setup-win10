# Windows 10 development environment setup for programming languages, sdks, and packages

Write-Host '----- Setting up scoop package manager.'
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop bucket add extras

Write-Host '----- Setting up vim, curl, wget, grep, touch, and 7zip.'
scoop install vim wget curl grep touch 7zip

Write-Host '----- Setting up python 3.'
scoop install python

Write-Host '----- Setting up node.js.'
scoop install nodejs

Write-Host '----- Setting up aws-cli.'
pip3 install awscli --upgrade --user
pip3 install aws-mfa --user
mkdir ~/.aws

Write-Host '----- Setting up go.'
scoop install go

Write-Host '----- Setting up dotnet core sdk.'
scoop install dotnet-sdk

Write-Host '----- Setting up powershell 6 (pwsh).'
scoop install pwsh

Write-Host '----- Setting up terraform.'
scoop install terraform

Write-Host '----- Setting up Visual Studio Code.'
scoop install vscode

#TODO: install multipass, may require some powershell installer magic.
<# Example from the automated pwsh installer (multipass install instructions here: https://multipass.run/docs/installing-on-windows)
$randomFileName = [System.IO.Path]::GetRandomFileName()
$tmpMsiPath = Microsoft.PowerShell.Management\Join-Path ([System.IO.Path]::GetTempPath()) "$randomFileName.msi"
Microsoft.PowerShell.Utility\Invoke-RestMethod -Uri https://github.com/PowerShell/PowerShell/releases/download/v6.2.4/PowerShell-6.2.4-win-x64.msi -OutFile $tmpMsiPath
try
{
    Microsoft.PowerShell.Management\Start-Process -Wait -Path $tmpMsiPath
}
finally
{
    Microsoft.PowerShell.Management\Remove-Item $tmpMsiPath
}
#>
