SCREENWAVE ENTERTAINMENT HUB — WINDOWS INSTALLER PROJECT
========================================================

What this does
--------------
Creates a Windows 10/11 installer for a desktop window that opens your
existing Screenwave web app. It keeps the current online app and its
existing features rather than rebuilding them.

Important limitations
---------------------
- This is a desktop wrapper, not yet a fully offline application.
- Internet access is required to load the current Screenwave website.
- It does not add native Dolphin/emulator integration by itself.
- Your app's existing online/localStorage behavior remains the source of
  the current feature set.
- The first build is unsigned, so Windows SmartScreen may show a warning.
  Only run installers you built yourself and trust.

Build the installer on Windows 10/11
------------------------------------
1. Install Node.js LTS from https://nodejs.org/
2. Extract this ZIP into a folder such as Documents\ScreenwaveDesktop.
3. Open that folder in File Explorer.
4. Double-click build-windows.bat.
5. Wait for npm to download Electron and the build tools.
6. When it finishes, open the new dist folder.
7. Run Screenwave-Setup-1.0.0.exe.
8. Follow the installer and use the desktop shortcut.

If Windows says npm is not recognized:
- Install Node.js LTS, close and reopen File Explorer/Terminal, then retry.

If the build fails:
- Open Terminal in this folder and run: npm install
- Then run: npm run dist
- Keep the full error text to troubleshoot.

Project files
-------------
main.cjs              Electron desktop window
package.json          Electron and installer settings
build-windows.bat     One-click build helper
