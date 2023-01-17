# ZCC-Install
ZCC client is used to establish a secure connection between an on-premises network and Zscaler's cloud security platform.

The script can be used to automate the deployment of ZCC client on Windows machines. This can be particularly useful in environments with many machines that need to be configured to connect to Zscaler's cloud security platform, as it eliminates the need for manual installation on each machine.

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
