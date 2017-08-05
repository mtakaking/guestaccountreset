
#For Office 365
$cdate = Get-Date -Format yyyyMMdd

$SmtpServer = 'smtp.office365.com'
$SmtpUser = 'XXX@XXX.COM'
$smtpPassword = Get-Content "C:\Pharos_GuestPassword\PS\O365_pwd.txt" | ConvertTo-SecureString
$MailtTo = 'XXX@XXX.com'
$MailFrom = 'XXX@XXX.com'
$MailSubject = "Guest Print Password"
$Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $smtpPassword
Send-MailMessage -To "BOB<BOB@XXX.com>" -from "$MailFrom" -Subject $MailSubject -SmtpServer $SmtpServer -UseSsl -Credential $Credentials -Attachments "C:\Pharos_GuestPassword\PS\GuestPassword$cdate.csv"
