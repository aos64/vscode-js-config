mkdir C:/Users/$env:username/Documents/js.env
mkdir C:/Users/$env:username/Documents/js.env/temp
curl -o C:/Users/$env:username/Documents/js.env/temp/node-v24.21.0-win-x64.zip https://nodejs.org/dist/v24.21.0/node-v24.21.0-win-x64.zip
mkdir C:/Users/$env:username/Documents/js.env/.vscode
curl -o C:/Users/$env:username/Documents/js.env/.vscode/launch.json https://github.com/aos64/vscode-js-config/blob/main/launch.json
mkdir C:/Users/$env:username/Documents/js.env/node
Expand-Archive -LiteralPath "C:\Users\$env:username\Documents\js.env\temp\node-v24.21.0-win-x64.zip" -DestinationPath "C:\Users\$env:username\Documents\js.env\node\"