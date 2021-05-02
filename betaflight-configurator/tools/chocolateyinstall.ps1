$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/betaflight/betaflight-configurator/releases/download/10.7.0/betaflight-configurator-installer_10.7.0_win32.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Betaflight Configurator*'

  checksum      = '7A233DCE35FD1166C5DA484BAA0A50C9A4F883C1EF21BBC531844A7F1D626693'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
