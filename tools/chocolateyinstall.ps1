$ErrorActionPreference = 'Stop';

$packageName = 'nitroshare'
$url         = 'https://launchpad.net/nitroshare/0.3/0.3.3/+download/nitroshare-0.3.3-windows-x86.exe'
$url64       = 'https://launchpad.net/nitroshare/0.3/0.3.3/+download/nitroshare-0.3.3-windows-x86_64.exe'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)

  softwareName   = 'nitroshare*'
  checksum       = 'da536e80712348897651077967238888'
  checksumType   = 'md5'
  checksum64     = 'fb28ee896fc2461670c0d1c5b5304fe2'
  checksumType64 = 'md5'
}

Install-ChocolateyPackage @packageArgs
