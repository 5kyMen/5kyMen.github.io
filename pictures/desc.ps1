$descaledFolder = "descaled"
if (-not (Test-Path -Path $descaledFolder -PathType Container)) 
{
    New-Item -Path $descaledFolder -ItemType Directory | Out-Null
}w

$jpgFiles = Get-ChildItem -Path . -Filter "*.jpg"
foreach ($file in $jpgFiles)
{
    $base = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    
    $outputFile = "$descaledFolder\${base}_descaled.jpg"
    
    Write-Host "Processing: $($file.Name) -> $outputFile"
    
    try 
    {
        & magick $file.Name -scale 7% $outputFile
        Write-Host "Processed $($file.Name)" 
    }
    catch 
    {
        Write-Host "Error processing $($file.Name)"
    }
}
Write-Host "All JPG files have been descaled"