*** Settings ***
Resource    ./resources/common.robot

*** Test Cases ***
Test case 1
    [Documentation]    Demonstrates how to read secrets from a .env file.
    common.Read Secrets from Env File
    Log to console      1
