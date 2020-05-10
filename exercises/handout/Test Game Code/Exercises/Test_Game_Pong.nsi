############################################################################################
#      NSIS Installation Script created by NSIS Quick Setup Script Generator v1.09.18
#               Entirely Edited with NullSoft Scriptable Installation System                
#              by Vlasis K. Barkas aka Red Wine red_wine@freemail.gr Sep 2006               
############################################################################################

; IN THIS SCRIPT YOU WILL FIND "TODOs". THESE ARE EXERCISES AND FOR THE INSTRUCTIONS YOU HAVE TO GO TO THE FOLLOWING WEB:
; https://needlesslord.github.io/Research-Project-Installer/

!define APP_NAME "Test_Game_Pong"
!define COMP_NAME "Needlesslord-UPC"
!define WEB_SITE "https://needlesslord.github.io/Research-Project-Installer/"
!define VERSION "01.00.00.00"
!define COPYRIGHT "Needlesslord-UPC © 2020"
!define DESCRIPTION "Application"
!define LICENSE_TXT "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\LICENSE.txt"
!define INSTALLER_NAME "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Test_Game_Pong_setup.exe"
!define MAIN_APP_EXE "Test_Game_Pong.exe"
!define INSTALL_TYPE "SetShellVarContext all"
!define REG_ROOT "HKLM"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"

!define REG_START_MENU "Start Menu Folder"

var SM_Folder

######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor LZMA
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\Test_Game_Pong"

######################################################################

!include "MUI.nsh"

; TODO2: ICON MENU (SEE INSTRUCTIONS IN THE GITHUB PAGE LINKED ABOVE) ---------------------------


; ------------------------------------------------------------------------------------------------

; TODO3: ICON EXECUTABLE (SEE INSTRUCTIONS IN THE GITHUB PAGE LINKED ABOVE) ----------------------


; ------------------------------------------------------------------------------------------------

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Test_Game_Pong"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif

!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"



######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\config.xml"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libFLAC-8.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libjpeg-9.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libmikmod-2.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libmodplug-1.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libogg-0.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libpng16-16.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libtiff-5.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libvorbis-0.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libvorbisfile-3.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\libwebp-4.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\SDL2.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\SDL2_image.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\SDL2_mixer.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\SDL2_ttf.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\smpeg2.dll"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\Test_Game_Pong.exe"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\zlib1.dll"
SetOutPath "$INSTDIR\textures"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\textures\Ball.png"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\textures\Numbers.png"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\textures\Player.png"
SetOutPath "$INSTDIR\audio\music"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\audio\music\music.ogg"
SetOutPath "$INSTDIR\audio\fx"
File "C:\Users\needl\Documents\GitHub\Research-Project-Installer\exercises\handout\Test Game Release\Game\audio\fx\hello_man.wav"
SectionEnd

######################################################################

Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\Test_Game_Pong"
CreateShortCut "$SMPROGRAMS\Test_Game_Pong\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\Test_Game_Pong\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\Test_Game_Pong\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
${INSTALL_TYPE}
Delete "$INSTDIR\config.xml"
Delete "$INSTDIR\libFLAC-8.dll"
Delete "$INSTDIR\libjpeg-9.dll"
Delete "$INSTDIR\libmikmod-2.dll"
Delete "$INSTDIR\libmodplug-1.dll"
Delete "$INSTDIR\libogg-0.dll"
Delete "$INSTDIR\libpng16-16.dll"
Delete "$INSTDIR\libtiff-5.dll"
Delete "$INSTDIR\libvorbis-0.dll"
Delete "$INSTDIR\libvorbisfile-3.dll"
Delete "$INSTDIR\libwebp-4.dll"
Delete "$INSTDIR\SDL2.dll"
Delete "$INSTDIR\SDL2_image.dll"
Delete "$INSTDIR\SDL2_mixer.dll"
Delete "$INSTDIR\SDL2_ttf.dll"
Delete "$INSTDIR\smpeg2.dll"
Delete "$INSTDIR\Test_Game_Pong.exe"
Delete "$INSTDIR\zlib1.dll"
Delete "$INSTDIR\textures\Ball.png"
Delete "$INSTDIR\textures\Numbers.png"
Delete "$INSTDIR\textures\Player.png"
Delete "$INSTDIR\audio\music\music.ogg"
Delete "$INSTDIR\audio\fx\hello_man.wav"
 
RmDir "$INSTDIR\audio\fx"
RmDir "$INSTDIR\audio\music"
RmDir "$INSTDIR\textures"
 
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif

RmDir "$INSTDIR"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\Test_Game_Pong\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\Test_Game_Pong\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\Test_Game_Pong\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\Test_Game_Pong"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

######################################################################

