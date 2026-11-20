param(
    [string]$Text
)

if ([string]::IsNullOrWhiteSpace($Text)) {
    $Text = Read-Host "Zadejte text"
}

$znakuSMezerami = $Text.Length
$znakuBezMezer  = ($Text -replace '\s', '').Length
$samohlasky     = [regex]::Matches($Text, '(?i)[aeiouyáéěíóúůý]').Count
$slov           = ($Text -split '\s+' | Where-Object { $_ -ne '' }).Count

[PSCustomObject]@{
    'Znaků (s mezerami)' = $znakuSMezerami
    'Znaků (bez mezer)'  = $znakuBezMezer
    'Samohlásek'         = $samohlasky
    'Slov'               = $slov
} | Format-List