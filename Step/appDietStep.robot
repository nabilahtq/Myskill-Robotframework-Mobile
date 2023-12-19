*** Settings ***
Library                 AppiumLibrary
Resource                ../Resources/appDietPages.robot
Variables               ../Resources/locator.yaml
Suite Setup              Start Session Apps
# Suite Teardown           Close Apps

***Test Cases***
As a user i want to open APP diet
    Sleep                        5
    Page should contain Text     Welcome

As a user i want to input my data
    User Input Welcome Data
    User Tap Next Button