# BrickDemo Automation
This automation powered by Robot Framework tools
How to Run this automation

**Tools used:**
- Java 17.0.1 (https://java.tutorials24x7.com/blog/how-to-install-java-17-on-windows)
- Robot Framework 4.1.2 (https://robotframework.org/?tab=0#getting-started)
- EdgeDriver 96.0.4664.45 (https://chromedriver.storage.googleapis.com/index.html?path=96.0.4664.45/)
- Python 3.10.0 (https://www.python.org/downloads/release/python-3100/)
- Selenium 

**Step to Run**
1. Install Java and set Environment path
2. Install python and set Environment path
3. Open terminal and type  
```
Java --version 
```
4. Then type
```
python get-pip.py
```
5. Check the version after finish install
```
python --version 
```
6. Install Robot Framework with command 
```
pip install robotframework
```
7. then check the version with 
```
robot --version
```
8. Install Selenium for Python  
```
pip install --upgrade robotframework-seleniumlibrary
```
9. Download web driver from
```
- Chrome: https://chromedriver.chromium.org/downloads
- Firefox:https://github.com/mozilla/geckodriver/releases
- Edge: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
```
10. Save the web driver in directory : ```C:\Users\[user]\AppData\Local\Programs\Python\Python39\```
11. If use Edge, change the filename to `MicrosoftWebDriver.exe`
12. Clone this repo to your directory
13. Open the directory from cmd/terminal with command ```cd [User dir]\BrickDemo```
14. Run all the scenario with command ```robot Features```
15. If you want to run only one feature type command ```robot Features\[file_name].robot```
16. Check the automation reports from the file ```report.html```

***Version 1.0 features***
- Register
- Login


**REPO DIRECTORY GUIDE**   
```
- Features : Consist of robot framework based automation for Brick Features. If you want to add more features just add new file with name [new_feature].robot
- Pages : Consist of resource and locator of the web elements. If you want to add more locator and resource just add new file with name [new_locator].yaml and import to .robot file in /Features```
```

