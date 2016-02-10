$ErrorActionPreference = 'Stop';

$packageName = 'nitroshare'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://launchpad.net/nitroshare/0.3/0.3.1/+download/nitroshare-0.3.1-windows-x86.exe'
$url64       = 'https://launchpad.net/nitroshare/0.3/0.3.1/+download/nitroshare-0.3.1-windows-x86_64.exe'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE_MSI_OR_MSU'
  url            = $url
  url64bit       = $url64

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)

  softwareName   = 'nitroshare*'
  checksum       = 'c7812bdb6a34a0246bd12b9f17b51b6b'
  checksumType   = 'md5'
  checksum64     = '7c26afd95d6c3562d9aa7110379c18e5'
  checksumType64 = 'md5'
}

Install-ChocolateyPackage @packageArgs
