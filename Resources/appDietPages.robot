*** Setting ***
Library             AppiumLibrary
Variables           ../Resources/locator.yaml

***Keyword***
Start Session Apps
    Set Appium Timeout  10
    #Edit this with your personal device information
    Open Application    http://localhost:4723/wd/hub        #Dont forget to change host and port in Appium Desktop
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=nabilah
    ...                 appPackage=com.fghilmany.dietmealapp
    ...                 appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity
    ...                 autoGrantPermissions=true
    ...                 noReset=true
    Sleep               1

# tidak digunakan apabila file step yang di run appDietStep-tdd.robot
# User Input Welcome Data
#     Input Text                    ${homePageNameField}        Cipung
#     Input text                    ${homePageWeightField}      50
#     Input text                    ${homePageHeightField}      160
#     Tap                           ${homePageGenderMaleButton}

User Tap Next Button
    Tap                           ${homePageNextButton}

Close Session Apps
    Capture Page Screenshot
    Close Application                      noReset=true

Close Apps
    Capture Page Screenshot
    Close Application   
