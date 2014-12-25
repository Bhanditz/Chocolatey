$packageName = 'resharper-platform'

$url = 'http://download.jetbrains.com/resharper/ReSharperAndToolsPacked01Update1.exe'

try {

  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $packagePath = $(Split-Path -parent $scriptPath)
  $installPath = Join-Path $packagePath 'ReSharperAndToolsPacked01Update1.exe'

  Get-ChocolateyWebFile $packageName $installPath $url
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}