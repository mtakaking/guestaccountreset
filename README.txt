I wrote this set of scripts for guest accounts we use for Pharos. My place has a policy to reset guest user accounts credentials each semester so I run it with Task Scheduler 4 times a year. 

Please run GuestPassword.bat as admin.
Since I always have an issue with running PowerShell as admin by calling it from Task Scheduler, I prefer to use a batch file to call PowerShell from it.

This will reset password for guest user 1-15 and export them to a csv file (named with today's date).
Also, it emails the csv file to XXX@XXX.com.  
