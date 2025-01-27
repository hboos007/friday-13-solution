2022..2027 | ForEach-Object {
    $year = $_
    1..12 | ForEach-Object {
        $month = $_
        $date = Get-Date -Year $year -Month $month -Day 13
        if ($date.DayOfWeek -eq 'Friday') {
            Write-Output "Days to stay in bed: $($date.ToString('dddd, dd MMMM yyyy'))"
        }
    }
}

Write-Output "Press 'Enter', to close Powershell..."
[Console]::ReadLine()
