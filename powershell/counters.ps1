$Machines = 'kunkelad-win'
#Foreach ($machine in $Machines) {
#    $RCounters = Get-Counter -ListSet * -ComputerName $Machines
#    write-host("There are {0} counters on {1}" -f $RCounters.count, $machine)
#}

Foreach ($machine in $Machines) {
    $pt = (Get-Counter -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 1 -MaxSamples 10).CounterSamples.CookedValue
        $sample = 1
        foreach ($p in $pt) {
            $date = Get-Date -Format g
            "Sample {3}: CPU is at {0}% on {1}" -f [int]$p, $machine, $sample, $date | out-file -append C:\logs\output.txt
        $sample++
    }
}