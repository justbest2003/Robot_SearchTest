*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${SEARCH_TERM}        robot framework
${SEARCH_RESULT}      Automate
${SEARCH_RESULT2}     ภาษาไพทอน
${SEARCH_RESULT3}     automation

*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case to search Google and verify results
    Open Google
    Input Search Term
    Press Google Search
    Verify Search Results
    Close Browser

Search Google and Verify Results-2
    [Documentation]    Test case to search Google and verify results
    Open Google
    Input Search Term
    Press Google Search
    Verify Search Results-2
    Close Browser

Search Google and Verify Results-Yahoo
    [Documentation]    Test case to search Google and verify results
    Open Yahoo
    Input Search Term Yahoo
    Press Yahoo Search
    Verify Search Results-Yahoo
    Close Browser

*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Open Yahoo
    Open Browser    https://www.yahoo.com    ${BROWSER}

Input Search Term
    Input Text      name=q                 ${SEARCH_TERM}

Input Search Term Yahoo
    Input Text      name=p                 ${SEARCH_TERM}

Press Google Search
    Press Keys              name=q                     ENTER

Press Yahoo Search
    Press Keys              name=p                     ENTER
    
Verify Search Results
    Wait Until Page Contains    ${SEARCH_RESULT}
    Page Should Contain         ${SEARCH_RESULT}

Verify Search Results-2
    Wait Until Page Contains    ${SEARCH_RESULT2}
    Page Should Contain         ${SEARCH_RESULT2}

Verify Search Results-Yahoo
    Wait Until Page Contains    ${SEARCH_RESULT3}
    Page Should Contain         ${SEARCH_RESULT3}