<#
.SYNOPSIS
    After running re-export-with-media.bat, run this to copy images
    into the Whetstone img/ folders ready to embed in guides.
#>
$mediaRoot = "C:\Users\ASUS\Downloads\whetstone-media-export"
$imgRoot   = "C:\Users\ASUS\Documents\Claude\Projects\Maplestory r guides unofficial\img"

$map = @{
    "pets"             = "pets"
    "build"            = "build"
    "coloured-diamonds"= "coloured-diamonds"
    "loc-totems"       = "loc-totems"
    "class"            = "class"
    "runes-abyss"      = "runes-abyss"
    "monster-cards"    = "monster-cards"
    "off-road"         = "off-road"
    "soul-orbs"        = "soul-orbs"
    "tower-of-origins" = "tower-of-origins"
    "dojo-tips"        = "dojo-tips"
    "wings-cultivation"= "wings-cultivation"
    "devour"           = "devour"
    "costumes"         = "costumes"
    "event-timeline"   = "event-timeline"
    "stigmata"         = "stigmata"
    "exr-cultivation"  = "exr-cultivation"
}

foreach ($src in $map.Keys) {
    $mediaDir = Join-Path $mediaRoot "$src\media"
    $destDir  = Join-Path $imgRoot $map[$src]

    if (-not (Test-Path $mediaDir)) {
        Write-Host "SKIP $src — media folder not found at $mediaDir"
        continue
    }

    $images = Get-ChildItem $mediaDir -Include *.jpg,*.jpeg,*.png,*.gif,*.webp -Recurse
    $i = 1
    foreach ($img in $images) {
        # Skip tiny files (avatars, emoji) — attachment screenshots are usually >30KB
        if ($img.Length -lt 30KB) { continue }
        $ext = $img.Extension.ToLower()
        $dest = Join-Path $destDir "screenshot-$($i.ToString('000'))$ext"
        Copy-Item $img.FullName $dest -Force
        Write-Host "  [$src] $($img.Name) → screenshot-$($i.ToString('000'))$ext"
        $i++
    }
    Write-Host "$src — copied $($i-1) images"
}
Write-Host "`nDone. Rename the screenshot-NNN files to something descriptive before embedding."
