function getIP{
    (Get-NetIPAddress -InterfaceAlias Ethernet0).ipv4address
}

function sayHello {
    write-host("Hello, user!")
}