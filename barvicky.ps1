$colors = @(
    [ConsoleColor]::Black,
    [ConsoleColor]::DarkBlue,
    [ConsoleColor]::DarkGreen,
    [ConsoleColor]::DarkCyan,
    [ConsoleColor]::DarkRed,
    [ConsoleColor]::DarkMagenta,
    [ConsoleColor]::DarkYellow,
    [ConsoleColor]::Gray,
    [ConsoleColor]::DarkGray,
    [ConsoleColor]::Blue,
    [ConsoleColor]::Green,
    [ConsoleColor]::Cyan,
    [ConsoleColor]::Red,
    [ConsoleColor]::Magenta,
    [ConsoleColor]::Yellow,
    [ConsoleColor]::White
)

foreach ($color in $colors) {
    $label = "{0,-15}" -f $color

    Write-Host $label -ForegroundColor $color -NoNewline

    if ($color -in [ConsoleColor]::Black, [ConsoleColor]::DarkBlue,
        [ConsoleColor]::DarkGreen, [ConsoleColor]::DarkCyan,
        [ConsoleColor]::DarkRed, [ConsoleColor]::DarkMagenta, [ConsoleColor]::DarkYellow,
        [ConsoleColor]::DarkGray, [ConsoleColor]::Blue,
        [ConsoleColor]::Green, [ConsoleColor]::Red) {
        $fg = [ConsoleColor]::White
    } else {
        $fg = [ConsoleColor]::Black
    }
    Write-Host $label -BackgroundColor $color -ForegroundColor $fg -NoNewline

    Write-Host ("               ") -BackgroundColor $color
}
