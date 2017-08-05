Set-ExecutionPolicy Unrestricted

#Today's Date
$cdate = Get-Date -Format yyyyMMdd

Import-Module ActiveDirectory
# Set the new password
# Import users from CSV

Import-Csv -Path "C:\Pharos_GuestPassword\PS\GuestPassword$cdate.csv" | ForEach-Object {
 $Password = $_."Password"
 $sam = $_."Name"
# Reset user password.
Set-ADAccountPassword -Identity $sam -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "$Password" -Force)
Write-Host " AD Password has been reset for: "$sam
}