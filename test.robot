*** Settings ***
Library    ./EnvLibrary.py    .env
Library    Collections

*** Test Cases ***
Read Secrets from Env File
    [Documentation]    Demonstrates how to read secrets from a .env file.
    ${api_key}=    Get Env Variable    API_KEY
    ${db_password}=    Get Env Variable    DB_PASSWORD
    ${secret_token}=    Get Env Variable    SECRET_TOKEN

    Log to Console    API Key: ${api_key}
    Log to Console    Database Password: ${db_password}
    Log to Console    Secret Token: ${secret_token}

    Should Not Be Empty    ${api_key}
    Should Not Be Empty    ${db_password}
    Should Not Be Empty    ${secret_token}
