
; DISCLAIMER! EVERYTHING CORRECTEED IS MARKED WITH ; ######### CORRECTION ######### 
; (NOTE THE ";" AT THE BEGINNING TO COMMENT THE LINE)
; THIS EXERCISES IS ONE OF THE EXAMPLES PROVIDED BY NSIS


; example1.nsi

; ######### CORRECTION ######### 
; You need semi-colon to comment what you don't want included in the actual script

; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

;--------------------------------

; The name of the installer
Name "Example1"

; The file to write
OutFile "example1.exe"

; Request application privileges for Windows Vista
RequestExecutionLevel user

; Build Unicode installer
Unicode True

; The default installation directory

; ######### CORRECTION ######### 
; You need the direction, in this case the Desktop

InstallDir $DESKTOP\Example1

;--------------------------------

; Pages

Page directory
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there

; ######### CORRECTION ######### 
; You ALWAYS need to indicate the type of file, in this case .nsi

  File example1.nsi
  
; ######### CORRECTION ######### 
; You need to end the section with the following command. Please, remember that everything after ";" is commented

SectionEnd ; end the section
