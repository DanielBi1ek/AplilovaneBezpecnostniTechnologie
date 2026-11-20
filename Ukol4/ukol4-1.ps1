function Test-Palindrom {
    param([Parameter(Mandatory)][string]$Text)


    $rozlozeny = $Text.Normalize([Text.NormalizationForm]::FormD)
    $bezDiakritiky = [regex]::Replace($rozlozeny, '\p{Mn}', '')


    $cisty = ($bezDiakritiky -replace '[^\p{L}\p{N}]', '').ToLower()


    $opacny = -join $cisty[($cisty.Length - 1)..0]

    [PSCustomObject]@{
        Text       = $Text
        Upraveny   = $cisty
        Palindrom  = ($cisty -eq $opacny)
    }
}


$testy = @(
    "Jelenovi pivo nelej",
    "Kobyla má malý bok",
    "Kupředu udeř puk",
    "Dal kopat Ota poklad",
    "Toto není palindrom"
)

$testy | ForEach-Object { Test-Palindrom $_ } | Format-Table -AutoSize