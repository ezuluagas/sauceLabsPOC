#comments-start
RunWait(@comspec & ' /c msiexec.exe /i "https://github.com/jianfengs/sauceLabsPOC/blob/master/AsperaConnect-ML-3.6.6.119698.msi?raw=true"  /quiet')

Sleep(2000)


Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')
#comments-end


WinWait("Select Folder")
ConsoleWrite("5");
WinActivate("Select Folder");
WinWaitActive("Select Folder");
Sleep(2000)
ControlClick("Select Folder","",2)
Sleep (3000)
Winwait("Confirm - IBM Aspera Connect")
While (WinExists("Confirm - IBM Aspera Connect"))
	WinActivate("Confirm - IBM Aspera Connect")
	Sleep(500)
    ControlClick("Confirm - IBM Aspera Connect","_rememberChkWindow","[CLASS:Qt5QWindowIcon; INSTANCE:5]")
	Sleep(500)
	ControlClick("Confirm - IBM Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]")
	Sleep(1000)
WEnd