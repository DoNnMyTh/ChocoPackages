﻿$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir

    url64          = 'https://github.com//civo/cli/releases/download/v0.6.32/civo-0.6.32-windows-amd64.zip'
    checksum64     = '825da4467307f6b38a1da945b2227cb47512c6afbafe94b9586f5a8daed23de2'
    checksumType64 = 'SHA256'
}

Install-ChocolateyZipPackage @packageArgs
