# Define the path to the ZCC installer
$installerPath = "C:\temp\Zscaler-windows-3.9.0.183-installer-x64.msi"

# Define the command to install the ZCC client
$installCommand = "msiexec.exe /i $installerPath /quiet /norestart"

# Check if the installer file exists
if (Test-Path $installerPath) {
    # Install the ZCC client
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c $installCommand" -Wait
    Write-Output "ZPA client installation completed successfully."
} else {
    Write-Error "Error: The installer file does not exist at the specified path."
}
