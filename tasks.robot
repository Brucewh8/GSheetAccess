*** Settings ***
Documentation    A Robot can read or write a Google spreadsheet Document.
Library    RPA.Cloud.Google    obocloud_vault_name=GoogleSheet
...    robocloud_vault_secret_key=service_account
Suite Setup    Init Sheets Client    use_robocloud_vault=True


*** Variables ***
${SHEET_ID}    1ELgxG5IdEBzm_LgM5t0nPryA1NLjX9zxHq8eNyDoaGY
${SHEET_AREA}    Sheet1!A2:D10


*** Tasks ***
Write the Google Sheet
    ${values}=    Create List
    ...    Mark
    ...    The Monkey
    ...    100000
    ...    10000
    Insert Values    ${SHEET_ID}    ${SHEET_AREA}    ${values}

