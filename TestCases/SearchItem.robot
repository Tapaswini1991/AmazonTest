*** Settings ***
Library    SeleniumLibrary
Resource    ../Resourses/resources.robot

*** Variables ***
${url}    https://www.amazon.in/
${browser}    chrome


*** Test Cases ***
SearchItem
    loginBrowser    ${url}    ${browser}
    input text    xpath:(//input[@class='nav-input nav-progressive-attribute'])[1]    Men's round T-Sthirt
    click element    id:nav-search-submit-button
    click element    xpath://span[text()='Featured']
    #select from list by label    xpath://span[text()='Featured']    Price: Low to High
