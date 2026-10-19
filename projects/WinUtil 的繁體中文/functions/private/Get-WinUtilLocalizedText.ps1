function Get-WinUtilLocalizedText {
    <#
    .SYNOPSIS
        Returns the Traditional Chinese display text for a known WinUtil string.

    .DESCRIPTION
        Translation is intentionally display-only: config keys, package IDs, registry
        values, and preset references remain in their original language so existing
        workflows and imports stay compatible.
    #>
    param(
        [AllowNull()]
        [object]$Text
    )

    if ($null -eq $Text) {
        return $null
    }

    if ($Text -is [System.Collections.IEnumerable] -and $Text -isnot [string]) {
        return @($Text | ForEach-Object { Get-WinUtilLocalizedText -Text $_ })
    }

    $language = $sync.configs.translations.PSObject.Properties['zh-TW'].Value
    $translation = @($language.PSObject.Properties.Match([string]$Text))[0]
    if ($null -ne $translation) {
        return [string]$translation.Value
    }

    return [string]$Text
}
