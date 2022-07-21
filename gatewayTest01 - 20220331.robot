*** Settings ***
Library           WhiteLibrary

*** Test Cases ***
startappconfigtools
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:DevTab
    Log Structure
    log    77777777777777
    Click Item    id:PatientTab
    Log Structure
    log    8888888888888
    Click Item    id:LogTab
    Log Structure
    log    9999999999999
    Click Item    id:ConfigSetTab
    Log Structure
    log    10101010101010
    Click Item    id:Config_Network
    Log Structure
    log    101010111111
    Click Item    id:Config_Business
    Log Structure
    log    101010122222
    Click Item    id:Config_Time
    Log Structure
    log    10101013333
    Click Item    id:Config_User
    Log Structure
    log    101010144444
    Click Item    id:Config_Other
    Log Structure
    log    101010155555
    Click Item    id:AboutTab
    Log Structure
    log    112112112121112
    Close Application

startapp1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    log    2222222222222222222222
    Click Button    text:Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}

compare excel
    Compare Excel    C:\\Prog\\Python37\\log.xls    C:\\Prog\\Python37\\CSV\\log4.xls    log    log1    0    0

to1
    Csv To Xls    C:\\Prog\\Python37\\CSV\\log.csv    C:\\Prog\\Python37\\CSV\\log.xls

startappnoticecentral
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.MessageCenter.exe

startperformancetools
    Launch Application    C:/Program Files (x86)/Gateway/Performance/Performance.exe
    Attach Window    Performance Tool
    log    121
    ${d}    Get desktop Windows
    log    ${d}
    Click Item    id:Ethernet
    log    122
    Log Structure
    log    123

startappconfigtools2
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:DevTab
    Log Structure
    log    77777777777777
    Click Item    id:PatientTab
    Log Structure
    log    8888888888888
    Click Item    id:LogTab
    Log Structure
    log    9999999999999
    Click Item    id:ConfigSetTab
    Log Structure
    log    10101010101010
    Click Item    id:Config_Network
    Log Structure
    log    101010111111
    Click Item    id:Config_Business
    Log Structure
    log    101010122222
    Click Item    id:Config_Time
    Log Structure
    log    10101013333
    Click Item    id:Config_User
    Log Structure
    log    101010144444
    Click Item    id:Config_Other
    Log Structure
    log    101010155555
    Click Item    id:AboutTab
    Log Structure
    log    112112112121112
    Close Application

startconfigtools1-login
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:Config_Cancel
    log    3333333333333
    log    4444444
    Log Structure
    log    555555
    Click Button    MessageConfirm

startconfigtools2-erropasswordlogin
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_001
    Click Button    id:User_Login
    log    3333333333333333
    Log Structure
    Click Button    id:MessageConfirm
    log    4444444444
    Input Text To Textbox    id:txtPassword    Password_002
    log    55555555555
    Click Button    id:User_Login
    log    66666666666
    Close Application

startconfigtools3-License
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    click item    id:LicenseTab
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    click button    id:Config_RestartGW
    Log Structure
    click button    id:MessageConfirm
    Close Application

startconfigtools4-Device
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    click item    id:DevTab
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Button    id:btnDelete
    log    77777777777777
    Log Structure
    click button    id:MessageConfirm
    log    888888888888
    click button    text:Refresh
    log    999999999999
    Log Structure
    click button    id:MessageConfirm
    log    101010101010
    click button    text:Confirm
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigtools5-Patient
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:PatientTab
    Log Structure
    log    8888888888888
    click button    id:Config_Query
    Log Structure
    click button    id:MessageConfirm
    log    999999999999
    click item    id:ComboPatientType
    Log Structure
    log    101010101010
    Close Application

startconfigtools6-LOG
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:LogTab
    Log Structure
    log    777777777777777777
    click item    id:comboType
    Log Structure
    log    888888888888888888
    Close Application

startconfigtools7-About
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:AboutTab
    Log Structure
    log    77777777777777
    Close Application

startconfigtools8-Network
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Network
    Log Structure
    log    101010111111
    click button    id:btAdd
    Log Structure
    click button    id:MessageConfirm
    log    8888888888888888888
    click button    id:btndelete
    Log Structure
    click button    id:MessageConfirm
    log    99999999999999999999
    click item    id:ConnectType
    Log Structure
    log    1010101010101010
    click button    text:Test
    sleep    7
    Log Structure
    log    1212121212121212121
    click button    id:MessageConfirm
    sleep    1
    click button    text:Refresh
    Log Structure
    click button    id:MessageConfirm
    log    13131313131313131313
    click button    id:SaveBtn
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Close Application

startconfigtools9-Item
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Business
    Log Structure
    log    8888888888888888
    click item    id:HisNameComboBox
    Log Structure
    click item    id:HisNameComboBox
    log    9999999999999999999
    click item    id:PatientInfoComboBox
    Log Structure
    click item    id:PatientInfoComboBox
    log    10101010101010101010
    click button    id:btnRefresh
    Log Structure
    click button    id:MessageConfirm
    log    1212121212121212121
    click button    id:btnsave
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    log    13131313131313131313
    Close Application

startconfigtools10-Time
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Time
    Log Structure
    log    8888888888888888
    click button    id:BtnTimeSyn
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    log    99999999999999999
    click button    id:Config_Refresh
    Log Structure
    click button    id:MessageConfirm
    log    1010101010101010
    click button    id:UpdateBtn
    Log Structure
    click button    id:MessageConfirm
    log    12121212121212121212
    sleep    2
    Log Structure
    click button    id:MessageConfirm
    Close Application

startconfigtools11-security-changepassword
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_User
    Log Structure
    log    8888888888888888
    click button    id:Other_ChangePWD
    sleep    2
    Log Structure
    log    9999999999999999
    Attach Window    Reset Password
    click button    id:btnSave
    Log Structure
    click button    id:MessageConfirm
    log    10101010101010101010
    Input Text To Textbox    id:txtOriPwd    s1234567
    Input Text To Textbox    id:txtSetPwd    s1234
    Input Text To Textbox    id:txtResetPwd    s1234
    click button    id:btnSave
    Log Structure
    click button    id:MessageConfirm
    log    12121212121212121212
    Input Text To Textbox    id:txtOriPwd    Password_002
    Input Text To Textbox    id:txtSetPwd    s1234
    Input Text To Textbox    id:txtResetPwd    s1234
    click button    id:btnSave
    Log Structure
    click button    id:MessageConfirm
    log    131313131313
    Input Text To Textbox    id:txtOriPwd    Password_002
    Input Text To Textbox    id:txtSetPwd    Password_003
    Input Text To Textbox    id:txtResetPwd    Password_003
    click button    id:btnSave
    Log Structure
    click button    id:MessageConfirm
    log    14141414141414141
    Attach Window    Config Tool
    click button    id:Other_ChangePWD
    Attach Window    Reset Password
    Input Text To Textbox    id:txtOriPwd    Password_003
    Input Text To Textbox    id:txtSetPwd    Password_002
    Input Text To Textbox    id:txtResetPwd    Password_002
    click button    id:btnSave
    click button    id:MessageConfirm
    log    1515151515151515
    Close Application

startconfigtools11-security-strategy
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_User
    Log Structure
    log    8888888888888888
    click button    id:Other_Application_Strategy
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    log    99999999999999999
    Close Application

startconfigtools11-security-revert
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_User
    Log Structure
    log    8888888888888888
    click button    id:btnRevert
    sleep    3
    Log Structure
    log    999999999999999
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    log    101010101010101010
    Close Application

startappconfigtools11-security-Delete
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_User
    Log Structure
    log    8888888888888888
    click button    id:btnDelete
    sleep    3
    Log Structure
    log    999999999999999
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    log    101010101010101010
    Close Application

startconfigtools11-security-Save
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_User
    Log Structure
    log    8888888888888888
    click button    id:SaveBtn
    sleep    3
    Log Structure
    log    999999999999999
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    log    101010101010101010
    Close Application

startconfigtools12-Other-Export
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Other
    Log Structure
    log    8888888888888888
    click button    id:Config_Export
    sleep    3
    Log Structure
    log    999999999999999
    Attach Window    Export
    Log Structure
    log    10101010101010101010
    close Window    Export
    Close Application
    log    121212121212121212121

startconfigtools12-Other-Revert
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Other
    Log Structure
    log    8888888888888888
    click button    id:Config_Revert
    sleep    3
    Log Structure
    log    999999999999999
    Attach Window    Revert
    Log Structure
    log    10101010101010101010
    close Window    Revert
    Close Application
    log    121212121212121212121

startconfigtools12-other-data-synchronization
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Other
    Log Structure
    log    8888888888888888
    click button    id:btnSet
    sleep    3
    Log Structure
    log    9999999999999999
    Attach Window    Data Synchronization
    Log Structure
    log    10101010101010100
    Click Item    id:cboSourceType
    Log Structure
    log    1212121212112121212
    Click Item    id:cboSourceType
    Click Item    id:cboTargetType
    Log Structure
    Click Item    id:cboTargetType
    log    1313131313131113131313
    click button    id:btnSave
    sleep    2
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    log    141414141414141414
    click button    id:btnCancel
    Close Application

startconfigtools12-other-data-Maintian
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    Login
    log    2222222222222
    ${b}    Get desktop Windows
    log    ${b}
    log    111111111111111111111
    Log Structure
    log    2222222222222222222222
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    3333333333333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    Config Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    Click Item    id:ConfigSetTab
    Log Structure
    log    7777777777777777
    Click Item    id:Config_Other
    Log Structure
    log    8888888888888888
    click button    id:btnClearData
    Attach Window    Data Maintain
    Log Structure
    log    99999999999999999
    click button    id:btnService
    sleep    12
    Log Structure
    log    101010101010101010
    click button    id:btnService
    sleep    12
    Log Structure
    log    12121212121212121212
    click button    id:btnConfirm
    log    1313131313131313131313
    Close Application

startnotificationtools13
    Launch Application    C:/Program Files (x86)/Gateway/Performance/Performance.exe
    Attach Window    Performance Tool
    log    11111111111111
    Log Structure
    log    222222222222
