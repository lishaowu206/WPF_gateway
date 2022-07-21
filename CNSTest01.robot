*** Settings ***
Library           WhiteLibrary

*** Test Cases ***
lauchapp
    Launch Application    C:/Program Files (x86)/CNS_FECG/CNSClient/Edan.WPF.BOA.Domain.exe
    sleep    10
    log    111111
    ${b}    Get desktop Windows
    log    ${b}
    Attach Window    ${b}[2]
    sleep    3
    log    12121212
    log    222222
    Input Text To Textbox    id:TextBoxUserName    service
    log    3333333
    Input Text To Textbox    id:MyPassword    8888
    Log Structure
    sleep    3
    click button    id:Button_FBD9DDBD
    Close Application

lauchapp2
    Launch Application    C:/Program Files (x86)/CNS_FECG/CNSClient/Edan.WPF.BOA.Domain.exe
    sleep    3
    Attach Window    id:BaseView_DBE8501F
    log    111111
    ${b}    Get desktop Windows
    log    ${b}
    Input Text To Textbox    id:TextBoxUserName    service
    log    2222222
    Input Text To Textbox    id:MyPassword    8888
    click button    id:Button_FBD9DDBD
    sleep    3
    Attach Window    id:BaseView_D073F4E5
    sleep    4
    click button    id:Button_D9E7FBDC
    sleep    1
    log    333333
    sleep    4
    Input Text To Textbox    id:MatName    yu
    click button    id:Button_D9B4D89F
    log    444444
    Attach Window    id:BaseView_D073F4E5
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    ${c}[2]
    Log Structure
    log    55555555555
