<# Extract Windows Defender Exclusions List #>

echo "`n"
echo "PATHS/FILE EXCLUSIONS"
echo "---------------------"
$RegKey = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Exclusions\Paths')
$RegKey.PSObject.Properties | ForEach-Object {
  If($_.Name -like '*:\*'){
    Write-Host $_.Name
  }
}

echo "`n"
echo "PROCESS EXCLUSIONS"
echo "------------------"
$RegKey = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Exclusions\Processes')
$RegKey.PSObject.Properties | ForEach-Object {
  If($_.Name -like '*.*'){
    Write-Host $_.Name
  }
}

echo "`n"
echo "EXTENSION EXCLUSIONS"
echo "--------------------"
$RegKey = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Exclusions\Extensions')
$RegKey.PSObject.Properties | ForEach-Object {
  If($_.Name -like '*.*'){
    Write-Host $_.Name
  }
}
echo "`n"
