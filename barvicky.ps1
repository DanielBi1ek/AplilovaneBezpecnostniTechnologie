
$colors = [System.Enum]::GetNames([System.ConsoleColor])

foreach ($color in $colors) {
    Write-Host ($color.PadRight(15)) -NoNewline

    Write-Host ($color.PadRight(15)) -ForegroundColor $color -NoNewline

    if ($color -eq 'Black') {
        Write-Host $color.PadRight(15) -NoNewline
    }
    else {
        Write-Host ($color.PadRight(15)) -BackgroundColor $color -NoNewline
    }

    Write-Host ""
}
