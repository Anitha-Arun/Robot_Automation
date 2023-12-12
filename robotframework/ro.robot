*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  Chrome
${url}      https://admin.teams.microsoft.com
*** Test Cases ***
Open TAC
        Open Browser    ${url}    ${browser}

       Wait Until Element Is Visible    xpath://*[@id="i0116"]
       Input Text      xpath://*[@id="i0116"]   teamsdeviceadministrator@3PIP.onmicrosoft.com
       Click Button    id:idSIButton9
       Switch Window
       Wait Until Page Contains    execpted new page
