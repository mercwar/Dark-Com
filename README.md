##### By CvBGoD ... <i>"I have Given it to you"</i>


  ![dc](https://github.com/mercwar/Robo-Knight-Gallery/blob/main/Version%204/dark_com_banner_22c9972d.png)


# **The Web Browser that ...**  
### *.. lets you take only what you want, and leave the rest behind, for nothing!*

---

<p align="center">
  <b>Lightweight • Portable • JavaFX‑Powered • WebKit‑Driven</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Windows-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/Engine-WebKit-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/Java-17%2B-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">
</p>

---

Dark‑Com is a lightweight, portable web browser built on **JavaFX WebView** and powered by the **WebKit** rendering engine.  
Designed for Windows, it provides a clean, minimal, Git‑friendly structure while delivering modern web capabilities.

---
# 🛠️ **Installation & System Integration**  
##### [CVBGOD] YOU NEED [UCRT64](https://www.msys2.org)
##### [CVBGOD] JUST RUN THIS BASH SCRIPT IN YOUR UCRT64 AND YOU SHOULD SEE THE DARK COM WINDOW.
##### [CVBGOD] ONCE THE WINDOW HAS LOADED FULLY CLICK INTO THE ADDRESS BAR WHERE IT SAYS 'GOOGLE.COM' AND THEN PRESS ENTER !
##### [CVBGOD] I HAVE GIVEN IT TO YOU!
---
```bash#!/bin/sh
#!/bin/sh

# 0. Clean previous builds
rm -rf Dark-Com
rm -rf Dark-Com-Git-Dist
rm -rf temp_dist
rm -rf javafx.zip
rm -rf javafx-sdk-*

# 1. Clone your repo
git clone https://github.com/mercwar/Dark-Com
mkdir Dark-Com-Git-Dist
mv Dark-Com/Dark-Com-Git-Dist/* Dark-Com-Git-Dist/
rm -rf Dark-Com

# 2. Check if Java is installed
if ! command -v java >/dev/null 2>&1; then
    echo "Java not found — installing Java runtime..."

    curl -L -o jdk.zip "https://api.adoptium.net/v3/binary/latest/25/ga/windows/x64/jdk/hotspot/normal/eclipse"
    unzip jdk.zip -d jdk_temp
    rm jdk.zip

    mv jdk_temp/* Dark-Com-Git-Dist/jdk/
    rm -rf jdk_temp

    export PATH="$PATH:$(pwd)/Dark-Com-Git-Dist/jdk/bin"
else
    echo "Java detected — using system Java."
fi

# 3. Download JavaFX redistributable
curl -L -o javafx.zip https://download2.gluonhq.com/openjfx/21.0.2/openjfx-21.0.2_windows-x64_bin-sdk.zip

# 4. Extract redistributable
unzip javafx.zip

# 5. Copy ALL JavaFX runtime libs into the Dark-Com folder
cp -r javafx-sdk-*/lib/* Dark-Com-Git-Dist/
cp -r javafx-sdk-*/bin/* Dark-Com-Git-Dist/

# 6. Clean up
rm -rf javafx.zip
rm -rf javafx-sdk-*

# 7. Verify WebKit DLL
ls Dark-Com-Git-Dist | grep jfxwebkit.dll

# ⭐ 8. FIX: Change directory before launching
cd Dark-Com-Git-Dist

# 9. Launch Dark-Com
./Dark-Com.exe

```

---

## 🧩 **[Human Interface: Visual Layout]**

Your directory **must** resolve to the following structure for Dark‑Com.exe to achieve operational consciousness:

```
/Dark-Com/
  ├── Dark-Com.exe       ← Logical Trigger (C-Shell Wrapper)
  ├── jfxwebkit.dll      ← Kinetic Vision Module (WebKit)
  ├── javafx.web.jar     ← Protocol Bridge Layer
  └── [Other Modules]    ← Auxiliary Data Streams
```

---

# 🚀 **Execution Protocol**

### **FIREWIRE ACTIVATION**

```bash
./Dark-Com.exe
```

*SDK‑level debug chatter may appear. The wrapper bypasses standard JRE gatekeeping by design.*

---

# 🧭 **Plain‑Language Equivalent (Non‑Cyborg Mode)**

### 1. Clone the Dark‑Com source
```bash
rm -rf Dark-Com
rm -rf Dark-Com-Git-Dist
git clone https://github.com/mercwar/Dark-Com
mkdir Dark-Com-Git-Dist
mv Dark-Com\Dark-Com-Git-Dist\* Dark-Com-Git-Dist\
rm -rf Dark-Com
```


```bash#!/bin/sh

curl -L -o javafx.zip https://download2.gluonhq.com/openjfx/21.0.2/openjfx-21.0.2_windows-x64_bin-sdk.zip

unzip javafx.zip

cp -r javafx-sdk-*/lib/* Dark-Com-Git-Dist/

rm -rf javafx.zip
rm -rf javafx-sdk-*

ls Dark-Com-Git-Dist | grep jfxwebkit.dll

./Dark-Com-Git-Dist/Dark-Com.exe

```
---
## 🚀 **Features**

### **Modern Web Rendering**
Dark‑Com supports:
- HTML5  
- JavaScript  
- CSS  
- WebKit‑level standards  

### **Lightweight Footprint**
- Clean, minimal source tree  
- Heavy binaries distributed separately  
- Easy to fork, modify, and redistribute  

### **Portable Windows Build**
- No installation  
- No registry edits  
- Just extract and run  


## 🏗️ Technical Environment

* Source Repo: Contains the Java logic, UI controllers, and the C-Shell wrapper.
* Dist Repo: Contains the heavy lifting: jfxwebkit.dll, javafx.web.jar, and supporting native modules.
* Runtime: Requires Java 17+ to be present on the system path.




---

<p align="center">
  <img src="https://github.com/mercwar/Robo-Knight-Gallery/blob/main/Version%204/dark_computer_desktop_with_dark_com_text_ec741802.png" width="80%">
</p>

---

## 🤝 **Credits**

This project was co‑engineered by:

- **Lead Developer:** mercwar  
- **Architectural Assistant:** Gemini (Google AI)  

A collaboration that produced a fully functional, modern, portable browser.

---

## ⚠️ **Disclaimer**

Dark‑Com requires a **Java 17+ Runtime Environment (JRE)** to run JavaFX modules correctly.  
Ensure your system has a compatible JRE installed.

```
This browser was compiled with various OpenSource Projects, files, and SDKs including Java.
The C Shell wrapper used to compile those files and construct the logical *.EXE is Dark‑Com.
```

---

# 📜 **Copyright**
### **FFF Demonizer — CvBGoD**

```
Copyright (c) 2026 mercwar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
