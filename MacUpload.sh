#!/bin/bash
sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/
osascript <<EOD
    on run argv
    delay 90
        tell application "Aspera Connect"
	        activate
#           set myFile to do shell script "echo $(<`pwd`/src/main/resources/filename.txt)"
	        tell window 1
		        tell application "System Events"
			        keystroke "g" using {command down, shift down}
			        delay 2
			        keystroke item 1 of argv
			        delay 1
			        keystroke return
			        delay 2
			        keystroke return
			        delay 2
		        end tell
	        end tell
        end tell
    end run
EOD