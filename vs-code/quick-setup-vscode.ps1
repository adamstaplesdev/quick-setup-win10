Write-Host '----- Setting up Visual Studio Code.'
scoop install vscode

echo "----- Installing VS Code extensions for language support and other useful things"
code --install-extension ms-dotnettools.csharp --force
code --install-extension k--kato.docomment --force
code --install-extension jchannon.csharpextensions --force
code --install-extension golang.go --force
code --install-extension ms-python.python --force
code --install-extension ms-vscode.powershell --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension 4ops.terraform --force
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
code --install-extension hediet.vscode-drawio --force
code --install-extension ms-vscode-remote.vscode-remote-extensionpack --force
code --install-extension ms-vscode-remote.remote-ssh --force
code --install-extension ms-vscode-remote.remote-ssh-edit --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension tabnine.tabnine-vscode --force
code --install-extension hbenl.vscode-test-explorer --force
code --install-extension formulahendry.dotnet-test-explorer --force
code --install-extension k--kato.docomment --force
code --install-extension msjsdiag.debugger-for-chrome --force
code --install-extension ms-vsliveshare.vsliveshare-pack --force
code --install-extension eg2.vscode-npm-script --force
# Windows only
code --install-extension ms-vscode-remote.remote-wsl --force
