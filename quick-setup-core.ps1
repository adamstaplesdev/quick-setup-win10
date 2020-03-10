# Windows 10 development environment setup for programming languages, sdks, and packages

Write-Host '----- Setting up scoop package manager.'
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop bucket add extras

Write-Host '----- Setting up vim, curl, wget, grep, touch, 7zip, and GNU on Windows.'
scoop install vim wget curl grep touch 7zip gow git

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

echo "----- Installing VS Code extensions for language support and other useful things"
code --install-extension ms-vscode.csharp --force
code --install-extension k--kato.docomment --force
code --install-extension jchannon.csharpextensions --force
code --install-extension ms-vscode.go --force
code --install-extension ms-python.python --force
code --install-extension ms-vscode.powershell --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension mauve.terraform --force
code --install-extension github.vscode-pull-request-github --force
code --install-extension bigous.vscode-multi-line-tricks --force
code --install-extension eriklynd.json-tools --force
code --install-extension dotjoshjohnson.xml --force
code --install-extension mitchdenny.ecdc --force
code --install-extension adamhartford.vscode-base64 --force
code --install-extension grapecity.gc-excelviewer --force
code --install-extension davidanson.vscode-markdownlint --force
code --install-extension eg2.vscode-npm-script --force
code --install-extension jmrog.vscode-nuget-package-manager --force
code --install-extension mohsen1.prettify-json --force
code --install-extension tyriar.shell-launcher --force

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
