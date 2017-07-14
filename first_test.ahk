#WinActivateForce

#h::
	Run https://docs.python.org/3/library/index.html
return

#c::
    Run cmder.exe
    WinWait, Cmder ; 如果名字不确定，就用A，表示当前活动的窗口   
    WinActivate
    Sleep, 1500
    SendInput, ipython {enter}
return

SetKeyDelay, 100
#b::
    Run cmder.exe
    WinWait, Cmder
    WinActivate, Cmder
    Sleep, 1500
    SendInput, f:{enter}
    SendInput, cd /{enter}
    SendInput, cd novel_test\Scripts\ {enter}
    SendInput, activate.bat {enter}
    SendInput, cd \Git\novel_web\mysite\ {enter}
    SendInput, clear {enter}
    SendInput, ls {enter}
return