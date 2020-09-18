function getIP{
    (Get-NetIPAddress -InterfaceAlias Ethernet0).ipv4address
}

$IP = getIP
#write-host("This machine's IP is $IP.")
#write-host("This machine's IP is {0}." -f $IP)

#$Body = "This machine's IP is $IP."

#write-host($Body)

function getHostname{Hostname}

$getHostname = getHostname

write-host $getHostname



function getUser{whoami}

$getUser = getUser

write-host $getUser


function getVersion{$HOST.version.Major}

$getVersion = getVersion

write-host $getVersion



function getDate{DATE}

$getDate = DATE

write-host $getDate

$Body = "This Email was sent on behalf of Adam Kunkel for IT3038C. The machine's IP address is $IP. The machine's name is $getHostname. The current user is $getUser. The current Powershell version is $getVersion. The current date is $getDate."

write-host $Body

Send-MailMessage -To "botheaj@ucmail.uc.edu" -From "adam.j.kunkel@gmail.com" -Subject "IT3038C Windows Sysinfo" -Body $Body -SmtpServer "smtp.gmail.com" -port 587 -UseSsl -Credential (Get-Credential)

