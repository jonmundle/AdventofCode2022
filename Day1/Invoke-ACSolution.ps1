$Data = Get-Content .\Day1\input.txt -Raw
$Elves = $Data -split "`r`n`r`n"
$ElfCalories = foreach ($Elf in $Elves) {
    $CalorieList = $Elf -split "`r`n"
    ($CalorieList | Measure-Object -Sum).Sum
}
$MaxCalories = $ElfCalories | Measure-Object -Maximum
return $MaxCalories.Maximum