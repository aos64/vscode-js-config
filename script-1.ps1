Write-Output "Creating Directories..."
#Creates Directories needed for setup and completed install.
mkdir C:/Users/$env:username/Documents/js.env
mkdir C:/Users/$env:username/Documents/js.env/files
mkdir C:/Users/$env:username/Documents/js.env/temp
mkdir C:/Users/$env:username/Documents/js.env/.vscode

Write-Output "Downloading node.js..."
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/temp/node-v24.21.0-win-x64.zip https://nodejs.org/dist/v24.21.0/node-v24.21.0-win-x64.zip
Write-Output "Downloading custom launch.json to .vscode..."
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/.vscode/launch.json https://raw.githubusercontent.com/aos64/vscode-js-config/refs/heads/main/launch.json
Write-Output "Downloading VSCode..."
Invoke-WebRequest -Outfile C:/Users/$env:username/Documents/js.env/temp/VSCodeUserSetup-x64-1.141.0.exe https://vscode.download.prss.microsoft.com/dbazure/download/stable/2a59476c9bfcb90b3ddc372c36762471b7dfad1c/VSCodeUserSetup-x64-1.141.0.exe
# All required files are then downloaded from remotes servers

Write-Output "Extracting node.js..."
Expand-Archive -LiteralPath "C:\Users\$env:username\Documents\js.env\temp\node-v24.21.0-win-x64.zip" -DestinationPath "C:\Users\$env:username\Documents\js.env\"
# Extracts node.js. Quite shrimple really.

Write-Output "Running VSCode Installer, please exit installer before running program manually..."
Start-Process -Wait C:/Users/$env:username/Documents/js.env/temp/VSCodeUserSetup-x64-1.141.0.exe
# Starts the VSCode installer, then waits for it to finish before moving on. Unfortunately any processes spawned by this execuatble are counted as the same process, so if vscode is ran from the button at the install complete screen, the install will simply hang until you exit VSCode, leaving the temp files intact.

Write-Output "Cleaning up..."
Remove-Item -Recurse C:/Users/$env:username/Documents/js.env/temp
# Takes out the trash.

Write-Output "Installation Complete. Please launch VSCode and enter js.env."
Start-Sleep -Seconds 5
# PLEASE WAIT TO CROSS THE STREET