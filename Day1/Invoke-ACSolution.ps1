$Data = Get-Content .\Day1\input.txt -Raw
$Elves = $Data -split "`r`n`r`n"
$ElfCalories = foreach ($Elf in $Elves) {
    $CalorieList = $Elf -split "`r`n"
    ($CalorieList | Measure-Object -Sum).Sum
}
$MaxCalories = ($ElfCalories | Measure-Object -Maximum).Maximum
Write-Host "The maximum calories is $MaxCalories"
$Top3Sum = ($ElfCalories | Sort-Object -Descending | Select-Object -First 3 | Measure-Object -Sum).Sum
Write-Host "The sum of the top 3 is $Top3Sum"