$pngFiles = Get-ChildItem -Path . -Filter "*.png"

foreach ($file in $pngFiles)
 {
    $base = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    
    $outputFile = "${base}des.png"
    
    Write-Host "Processing: $($file.Name) -> $outputFile"
    
    try 
    {
        & magick $file.Name -scale 5% $outputFile
        Write-Host "Processed $($file.Name)" 
    }

    catch 
    {
        Write-Host "Error processing $($file.Name)
    }
}

Write-Host "All PNG files have been descaled"