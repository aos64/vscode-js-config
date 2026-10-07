mkdir C:/Users/$env:username/Documents/js.env
mkdir C:/Users/$env:username/Documents/js.env/files
mkdir C:/Users/$env:username/Documents/js.env/temp
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/temp/node-v24.21.0-win-x64.zip https://nodejs.org/dist/v24.21.0/node-v24.21.0-win-x64.zip
mkdir C:/Users/$env:username/Documents/js.env/.vscode
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/.vscode/launch.json https://raw.githubusercontent.com/aos64/vscode-js-config/refs/heads/main/script-1.ps1
Expand-Archive -LiteralPath "C:\Users\$env:username\Documents\js.env\temp\node-v24.21.0-win-x64.zip" -DestinationPath "C:\Users\$env:username\Documents\js.env\"
Remove-Item C:/Users/$env:username/Documents/js.env/temp/node-v24.21.0-win-x64.zip
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/temp/VSCodeUserSetup-x64-1.141.0.exe https://vscode.download.prss.microsoft.com/dbazure/download/stable/2a59476c9bfcb90b3ddc372c36762471b7dfad1c/VSCodeUserSetup-x64-1.141.0.exe
Start-Process -Wait C:/Users/$env:username/Documents/js.env/temp/VSCodeUserSetup-x64-1.141.0.exe
Remove-Item -Recurse C:/Users/$env:username/Documents/js.env/temp