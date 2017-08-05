$data = Import-Csv C:\Pharos_GuestPassword\PS\GuestPasswordTemplate.csv
$cdate = Get-Date -Format yyyyMMdd

$data | ForEach-Object{ 
    $_.Password = $_.Password -replace("",-join ([char[]](65..90+97..122)*100 | Get-Random -Count 6))
}
$data | export-csv C:\Pharos_GuestPassword\PS\GuestPassword$cdate.csv -NoTypeInformation