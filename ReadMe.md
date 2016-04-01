#Robert Aguirre
## Home Away QA Assessment

###Framework installation:
### Visit RobotFramework.org for overview
#### To Install Robot Framework:
(All instruction for Mac)

pip install robotframework

Install related Robot Framework Libraries

#### Selenium2Library
pip install robotframework-selenium2library

https://github.com/robotframework/Selenium2Library

http://robotframework.org/Selenium2Library/doc/Selenium2Library.html

####Install ChromeDriver
https://sites.google.com/a/chromium.org/chromedriver/downloads


##Test Execution
###Robot Framework tests are command-line executable
To Run:  From the command line, cd into the desired folder.  The contents of and entire directory can be run at one time if desired.

$ cd /HAAutomation/tests

$ robot /ui

(This would run all of the tests within the ui folder)

$ cd /ui

$ robot emptyShoppingCart.robot


$ robot placeOrder.robot

$ robot updateAccount.robot

Test results are displayed in the console and can also be found in the directory of the executed test in the form of a log.html file that will provide detailed step by step results.