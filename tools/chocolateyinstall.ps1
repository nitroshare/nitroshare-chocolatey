$ErrorActionPreference = 'Stop';

$packageName = 'nitroshare'
$url         = 'https://launchpad.net/nitroshare/0.3/0.3.4/+download/nitroshare-0.3.4-windows-x86.exe'
$url64       = 'https://launchpad.net/nitroshare/0.3/0.3.4/+download/nitroshare-0.3.4-windows-x86_64.exe'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64

  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)

  softwareName   = 'nitroshare*'
  checksum       = '82247ed7b54d0233085fb1efe414d758'
  checksumType   = 'md5'
  checksum64     = '5e248d505f16c68d955d90999ec2d0ac'
  checksumType64 = 'md5'
}

Install-ChocolateyPackage @packageArgs
