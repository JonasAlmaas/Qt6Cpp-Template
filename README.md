# Qt6Cpp-Template [![License](https://img.shields.io/github/license/JonasAlmaas/Qt6Cpp-Template.svg)](https://github.com/JonasAlmaas/Qt6Cpp-Template/blob/main/LICENSE)
A template for making qt apps with c++ separate from the Qt Creator.

### Installation
1. Download [**Qt Creator**](https://www.qt.io/download) if you don't already have it. Make sure check of any module you plan on using.

2. Open **File Explorer** and right click **This PC** and then **Properties**.
From here go into **Advanced system settings** then **Enviornment Variables**.
Create a new **System Variable** named **QTDIR**. Set its value to the path to the msvc2019_64 folder within the qt installation.
Example: **"C:\Qt\6.4.1\msvc2019_64"**.

3. Find the **System Variable** named **Path** and click edit. From here you want to create two new variables, **%QTDIR%\lib** and **%QTDIR%\bin**.

4. Finaly run **Win-GenProjects.bat** within the **scripts** folder to generate a **Visual Studio 2022** project.
