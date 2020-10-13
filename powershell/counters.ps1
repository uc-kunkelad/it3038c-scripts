$Machines = 'kunkelad-win'
#Foreach ($machine in $Machines) {
#    $RCounters = Get-Counter -ListSet * -ComputerName $Machines
#    write-host("There are {0} counters on {1}" -f $RCounters.count, $machine)
#}

Foreach ($machine in $Machines) {
    $pt = (Get-Counter -Counter "\Processor(_Total)\% Processor Time").CounterSamples.CookedValue
    $pt
}