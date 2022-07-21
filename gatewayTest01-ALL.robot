*** Settings ***
Library           WhiteLibrary
Library           C:/prog/Python37/Lib/site-packages/robotide/lib/robot/libraries/OperatingSystem.py

*** Test Cases ***
Strartconfigs17-initial password-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Log Structure
    log    111111
    Click Item    id:ConfigSetTab
    Log Structure
    log    2222222
    Click Item    id:Config_User
    Log Structure
    log    333333
    Click Button    id:Other_ChangePWD
    Attach Window    id:PassForm
    Log Structure
    log    44444444
    Input Text To Textbox    id:txtOriPwd    Password_002
    Log Structure
    log    12121211
    Press Special Key    TAB
    sleep    3
    Log Structure
    Input Text To Textbox    id:txtSetPwd    Password_001
    Log Structure
    log    131313113
    Input Text To Textbox    id:txtResetPwd    Password_001
    Log Structure
    log    1411414144
    Click Button    id:btnSave
    Log Structure
    log    151515154
    Click Button    id:MessageConfirm
    Close Application

startconfigtools23-Config Error-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:txtIpChannel1    0
    Press Special Key    BACKSPACE
    sleep    3
    Press Special Key    TAB
    sleep    3
    Log Structure
    Press Special Key    TAB
    sleep    3
    Log Structure
    Press Special Key    TAB
    sleep    3
    Log Structure
    log    11111111
    Click Button    id:SaveBtn
    Log Structure
    log    2222222
    Click Button    id:MessageConfirm
    Log Structure
    log    333333
    Click Button    id:MessageConfirm
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:txtIpChannel1    127.0.0.1
    log    444444
    Click Button    id:SaveBtn
    log    55555
    sleep    3
    Click Button    id:MessageConfirm
    log    66666
    Close Application

startconfigs29-limitrange
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:MyComboBox    3
    Press Special Key    TAB
    sleep    3
    Log Structure
    Input Text To Textbox    id:MyComboBox    10
    Click Button    id:SaveBtn
    Click Button    id:MessageConfirm
    Click Button    id:MessageConfirm
    Close Application

startconfigtools28-revertingfailed-ah1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Move Directory    C:/Program Files (x86)/Gateway/Backups    C:/Users/Administrator/Desktop
    Click Button    id:btnRevert
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:MessageConfirm
    Move Directory    C:/Users/Administrator/Desktop/Backups    C:/Program Files (x86)/Gateway
    Click Button    id:btnRevert
    sleep    3
    Click Button    id:MessageConfirm
    Close Application

startconfigtools19-device empty-ah1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    sleep    5
    Attach Window    id:Config_Tool
    Click Item    id:DevTab
    Click Button    id:btnConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigs27-certificate-ah1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Log Structure
    Click Button    id:SaveBtn
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:btnDelete
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    sleep    3
    Click Button    id:SaveBtn
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:btnRevert
    Close Application

startconfigtools6-LOG1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Click Button    id:btnExportLog
    Click Button    id:1
    Log Structure
    Click Button    id:MessageConfirm
    Click Button    id:btnExportLog
    Click Button    id:1
    Log Structure
    Click Button    id:MessageCancel
    empty directory    C:\\Users\\Administrator\\Desktop\\GatewayLog
    remove directory    C:\\Users\\Administrator\\Desktop\\GatewayLog
    log    888888888888888888
    Close Application

startconfigtools11-security-strategy1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    move file    C:\\Program Files (x86)\\Gateway\\cfg.inf    C:\\Program Files (x86)\\Gateway\\Configs
    click button    id:Other_Application_Strategy
    sleep    3
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    move file    C:\\Program Files (x86)\\Gateway\\Configs\\cfg.inf    C:\\Program Files (x86)\\Gateway
    log    99999999999999999
    Close Application

startconfigtools12-other-data-Maintian-cq1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:DataManage_Form
    sleep    2
    click button    id:btnService
    sleep    12
    Log Structure
    Click Item    id:tbListname
    sleep    3
    Log Structure
    click button    id:btnClear
    Log Structure
    log    99999999999999999
    click button    id:MessageCancel
    Log Structure
    click button    id:btnService
    sleep    3
    click button    id:btnClear
    Log Structure
    log    101010101010101010
    sleep    12
    Log Structure
    log    12121212121212121212
    click button    id:btnConfirm
    log    1313131313131313131313
    Close Application

startconfigtools12-other-data-synch-failed-cq1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Click button    id:btnSet
    sleep    3
    Log Structure
    log    9999999999999999
    Attach Window    id:DataSyncForm
    Click Button    id:btnSave
    Log Structure
    log    1010101010101010
    Click Button    id:MessageConfirm
    Log Structure
    log    100100100100100
    Click Button    id:MessageConfirm
    Log Structure
    log    1000100010001000
    Click Button    id:MessageConfirm
    Log Structure
    log    1212121212121212
    Click Button    id:btnCancel
    Log Structure
    log    1313131313131313
    Close Application

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

Onelanguage1
    startconfigtools1-login
    startconfigtools2-erropasswordlogin
    license-new
    startconfigtools4-Device
    startconfigtools5-Patient
    startconfigtools6-LOG
    startconfigtools7-About
    startconfigtools8-Network
    startconfigtools9-Item
    startconfigtools10-Time
    startconfigtools11-security-changepassword
    startconfigtools11-security-strategy
    startconfigtools11-security-revert
    startappconfigtools11-security-Delete
    startconfigtools11-security-Save
    Export-new
    import-new
    startconfigtools12-Other-Revert
    startconfigtools12-other-data-synchronization
    startconfigtools12-other-data-Maintian
    startconfigtools9-Item-CMS-cq
    startconfigtools12-other-data-synch-failed-cq
    startconfigtools12-other-data-synchronization-cq
    startconfigtools12-other-data-Maintian-cq
    Startconfigtools14-Already Running-ah
    Stratappconfigtools15-Inconsistent password entered.-ah
    Startconfigtools16-origpasswordlogin-ah
    Strartconfigs17-initial password-ah
    Startconfigtools18-Restart interval-ah
    startconfigtools19-device empty-ah
    startconfigs20-Resend/Maximum Retries-ah
    Startconfigtools21-connection failed/normal-ah
    Startconfigtools22-Access type-ah
    startconfigtools23-Config Error-ah
    startconfigtools24-address exists-ah
    startconfigtools26-portoccupied-ah
    startconfigs27-certificate-ah
    startconfigtools28-revertingfailed-ah

deletefile
    delete file    C:\\Program Files (x86)\\Gateway\\Configs

copyfiles
    copy file    F:\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs

english-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    F:\\English\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage

Russian-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    F:\\Greek\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\prog\\Python37\\CSV\\Greek.xls
    sleep    5
    Compare Excel    C:\\prog\\Python37\\CSV\\Greek.xls    C:\\Prog\\Python37\\CSV\\language.xls    data1    log1    2    18    C:\\prog\\Python37\\CSV\\Greek2.xls    C:\\prog\\Python37\\CSV\\Greek3.xls

PTEU-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\PTEU\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\PTEU.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\PTEU.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    12    D:\\ga_laguage\\PTEU\\PTEU_A.xls    D:\\ga_laguage\\PTEU\\PTEU_B.xls

German-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\German\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\German.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\German.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    14    D:\\ga_laguage\\German\\German_A.xls    D:\\ga_laguage\\German\\German_B.xls

Romanian-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\Romanian\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\Romanian.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\Romanian.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    27    D:\\ga_laguage\\Romanian\\Romanian_A.xls    D:\\ga_laguage\\Romanian\\Romanian_B.xls

Indonssian-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\Indonssian\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\Indonssian.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\Indonssian.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    21    D:\\ga_laguage\\Indonssian\\Indonssian_A.xls    D:\\ga_laguage\\Indonssian\\Indonssian_B.xls

Hungarian-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\Hungarian\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\Hungarian.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\Hungarian.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    20    D:\\ga_laguage\\Hungarian\\Hungarian_A.xls    D:\\ga_laguage\\Hungarian\\Hungarian_B.xls

Serbian-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs
    copy file    D:\\ga_laguage\\Serbian\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    sleep    5
    txt to xls    C:\\Prog\\Python37\\log.txt    C:\\Prog\\Python37\\XLS\\Serbian.xls
    sleep    5
    Compare Excel    C:\\Prog\\Python37\\XLS\\Serbian.xls    D:\\ga_laguage\\ALL\\language.xls    data1    sheet1    2    30    D:\\ga_laguage\\Serbian\\Serbian_A.xls    D:\\ga_laguage\\Serbian\\Serbian_B.xls

German-old-language
    delete binfile    C:\\Program Files (x86)\\Gateway\\Configs\\Host.bin
    copy file    D:\\ga_laguage\\German\\Host.bin    C:\\Program Files (x86)\\Gateway\\Configs
    Onelanguage
    csv to xls    C:\\Prog\\Python37\\log.csv    C:\\Prog\\Python37\\XLS\\German.xls
    Compare Excel    C:\\Prog\\Python37\\XLS\\German.xls    D:\\ga_laguage\\ALL\\language.xls    Sheet1    Sheet1    1    0
    delete csvfile    C:\\Prog\\Python37\\log.csv

license-new1
    Launch Application    C:/Program Files (x86)/Gateway/Tool/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    click item    id:LicenseTab
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    click button    id:btnLicenseBrowse
    Input Text To Textbox    id:1148    C:\\Users\\Administrator\\Desktop\\256.license
    click button    id:1
    log    7777777777777777777
    Log Structure
    click button    id:MessageConfirm
    log    888888888888888888
    Log Structure
    click button    id:MessageConfirm
    log    999999999999999999
    click button    id:Config_RestartGW
    Log Structure
    click button    id:MessageConfirm
    Close Application

export-new1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    Log Structure
    click button    id:MessageConfirm
    click button    id:1
    Log Structure
    click button    id:MessageConfirm
    log    999999999999999
    Log Structure
    click button    id:ExportBtn
    click button    id:MessageConfirm
    click button    id:1
    Log Structure
    click button    MessageCancel
    log    10101010101010101010
    close Window    id:ErpWindow
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Click Item    id:SecondPsd
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Other
    click button    id:Config_Export
    sleep    3
    Log Structure
    close Window    id:Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Click Item    id:SecondPsd
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Close Application
    remove file    C:\\Users\\Administrator\\Desktop\\CodingSystem11073.xml
    log    121212121212121212121

import-new1
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    click button    id:MessageConfirm
    click button    id:1
    click button    id:MessageConfirm
    close window    id:ErpWindow
    Attach Window    id:Config_Tool
    click button    id:Config_Import
    sleep    3
    click button    id:1
    Attach Window    id:ErpWindow
    Log Structure
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    close Window    id:ErpWindow
    Log Structure
    Attach Window    id:Config_Tool
    click button    id:MessageConfirm
    sleep    3
    ${d}    Get desktop Windows
    Attach Window    ${d}[0]
    close window
    click button    id:MessageConfirm
    remove file    C:\\Users\\Administrator\\Desktop\\CodingSystem11073.xml
    log    121212121212121212121

movefiles
    Move file    C:\\Program Files (x86)\\Gateway\\cfg.inf    C:\\Program Files (x86)\\Gateway\\Configs

remove directory
    empty directory    C:\\Users\\Administrator\\Desktop\\GatewayLog

gw1-license-new1
    Launch Application    C:/Program Files (x86)/Gateway/Tool/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    click item    id:LicenseTab
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    click button    id:btnLicenseBrowse
    Input Text To Textbox    id:1148    C:\\Users\\Administrator\\Desktop\\256.license
    click button    id:1
    log    7777777777777777777
    Log Structure
    click button    id:MessageConfirm
    log    888888888888888888
    Log Structure
    click button    id:MessageConfirm
    log    999999999999999999
    click button    id:Config_RestartGW
    Log Structure
    click button    id:MessageConfirm
    Close Application

*** Keywords ***
Onelanguage
    startconfigtools1-login
    startconfigtools2-erropasswordlogin
    license-new
    startconfigtools4-Device
    startconfigtools5-Patient
    startconfigtools6-LOG
    startconfigtools7-About
    startconfigtools8-Network
    startconfigtools9-Item
    startconfigtools10-Time
    startconfigtools11-security-changepassword
    startconfigtools11-security-strategy
    startconfigtools11-security-revert
    startappconfigtools11-security-Delete
    startconfigtools11-security-Save
    Export-new
    import-new
    startconfigtools12-Other-Revert
    startconfigtools12-other-data-synchronization
    startconfigtools12-other-data-Maintian
    startconfigtools9-Item-CMS-cq
    startconfigtools12-other-data-synch-failed-cq
    startconfigtools12-other-data-synchronization-cq
    startconfigtools12-other-data-Maintian-cq
    Startconfigtools14-Already Running-ah
    Stratappconfigtools15-Inconsistent password entered.-ah
    Startconfigtools16-origpasswordlogin-ah
    Strartconfigs17-initial password-ah
    Startconfigtools18-Restart interval-ah
    startconfigtools19-device empty-ah
    startconfigs20-Resend/Maximum Retries-ah
    Startconfigtools21-connection failed/normal-ah
    Startconfigtools22-Access type-ah
    startconfigtools23-Config Error-ah
    startconfigtools24-address exists-ah
    startconfigtools26-portoccupied-ah
    startconfigs27-certificate-ah
    startconfigtools28-revertingfailed-ah
    startconfigs29-limitrange

startconfigtools1-login
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Click Button    id:MessageConfirm

startconfigtools2-erropasswordlogin
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    click button    id:btnRefresh
    log    999999999999
    Log Structure
    click button    id:MessageConfirm
    log    101010101010
    click button    id:btnConfirm
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigtools5-Patient
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Click Button    id:btnExportLog
    Click Button    id:1
    Log Structure
    Click Button    id:MessageConfirm
    Click Button    id:btnExportLog
    Click Button    id:1
    Log Structure
    Click Button    id:MessageCancel
    empty directory    C:\\Users\\Administrator\\Desktop\\GatewayLog
    remove directory    C:\\Users\\Administrator\\Desktop\\GatewayLog
    log    888888888888888888
    Close Application

startconfigtools7-About
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    click button    id:Test_Channel
    sleep    7
    Log Structure
    log    1212121212121212121
    click button    id:MessageConfirm
    sleep    1
    click button    id:NetRefresh
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    sleep    20
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:PassForm
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
    Attach Window    id:Config_Tool
    click button    id:Other_ChangePWD
    Attach Window    id:PassForm
    Input Text To Textbox    id:txtOriPwd    Password_003
    Input Text To Textbox    id:txtSetPwd    Password_002
    Input Text To Textbox    id:txtResetPwd    Password_002
    click button    id:btnSave
    click button    id:MessageConfirm
    log    1515151515151515
    Close Application

startconfigtools11-security-strategy
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    move file    C:\\Program Files (x86)\\Gateway\\cfg.inf    C:\\Program Files (x86)\\Gateway\\Configs
    click button    id:Other_Application_Strategy
    sleep    3
    click button    id:MessageConfirm
    sleep    3
    Log Structure
    click button    id:MessageConfirm
    move file    C:\\Program Files (x86)\\Gateway\\Configs\\cfg.inf    C:\\Program Files (x86)\\Gateway
    log    99999999999999999
    Close Application

startconfigtools11-security-revert
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    sleep    7
    Log Structure
    log    999999999999999
    click button    id:MessageConfirm
    sleep    7
    Log Structure
    log    101010101010101010
    click button    id:MessageConfirm
    click button    id:btnRevert
    sleep    3
    click button    id:MessageConfirm
    sleep    3
    click button    id:MessageConfirm
    Close Application

startconfigtools12-Other-Export
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    Log Structure
    log    10101010101010101010
    close Window    id:ErpWindow
    Close Application
    log    121212121212121212121

startconfigtools12-Other-Revert
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    Log Structure
    log    10101010101010101010
    close Window    id:ErpWindow
    Close Application
    log    121212121212121212121

startconfigtools12-other-data-synchronization
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:DataSyncForm
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
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:DataManage_Form
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

to1
    Csv To Xls    C:\\Prog\\Python37\\CSV\\log.csv    C:\\Prog\\Python37\\CSV\\log.xls

license-new
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
    log    444444444444444444
    ${c}    Get desktop Windows
    log    ${c}
    click item    id:LicenseTab
    log    5555555555555555555
    Log Structure
    log    66666666666666666666
    click button    id:btnLicenseBrowse
    Input Text To Textbox    id:1148    C:\\Users\\Administrator\\Desktop\\VISTA_GATEWAYLICENSE\\057F-BDBB-3744-6EDA-55D3-2022_03_05_09_05.license
    click button    id:1
    log    7777777777777777777
    Log Structure
    click button    id:MessageConfirm
    log    888888888888888888
    Log Structure
    click button    id:MessageConfirm
    log    999999999999999999
    click button    id:Config_RestartGW
    Log Structure
    click button    id:MessageConfirm
    Close Application

export-new
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    Log Structure
    click button    id:MessageConfirm
    click button    id:1
    Log Structure
    click button    id:MessageConfirm
    log    999999999999999
    Log Structure
    click button    id:ExportBtn
    click button    id:MessageConfirm
    click button    id:1
    Log Structure
    click button    MessageCancel
    log    10101010101010101010
    close Window    id:ErpWindow
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Click Item    id:SecondPsd
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Other
    click button    id:Config_Export
    sleep    3
    Log Structure
    close Window    id:Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Click Item    id:SecondPsd
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Close Application
    remove file    C:\\Users\\Administrator\\Desktop\\CodingSystem11073.xml
    log    121212121212121212121

import-new
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:ErpWindow
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    click button    id:MessageConfirm
    click button    id:1
    click button    id:MessageConfirm
    close window    id:ErpWindow
    Attach Window    id:Config_Tool
    click button    id:Config_Import
    sleep    3
    click button    id:1
    Attach Window    id:ErpWindow
    Log Structure
    select radio button    id:DeCode
    Click Item    id:chbConfigFile
    click button    id:ExportBtn
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    close Window    id:ErpWindow
    Log Structure
    Attach Window    id:Config_Tool
    click button    id:MessageConfirm
    sleep    3
    ${d}    Get desktop Windows
    Attach Window    ${d}[0]
    close window
    click button    id:MessageConfirm
    remove file    C:\\Users\\Administrator\\Desktop\\CodingSystem11073.xml
    log    121212121212121212121

startconfigtools9-Item-CMS-cq
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Click Item    id:checkboxRealTimeDataWithNIBP
    Press Special Key    TAB
    sleep    1
    Log Structure
    log    Periodic send interval
    Click Item    id:checkboxRealTimeDataWithNIBP
    sleep    1
    click item    id:CMSNotificationSwitch
    Log Structure
    log    ccccccccccccccc
    click item    id:rbtSpecNotice
    Log Structure
    log    mmmmmmmmmm
    click button    id:btnsave
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    log    ssssssssssssss
    click item    id:rbtSearchNotice
    Log Structure
    click item    id:CMSNotificationSwitch
    Log Structure
    log    111111111111111111
    click button    id:btnsave
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    log    save Success
    Close Application

startconfigtools12-other-data-synch-failed-cq
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Click button    id:btnSet
    sleep    3
    Log Structure
    log    9999999999999999
    Attach Window    id:DataSyncForm
    Click Button    id:btnSave
    Log Structure
    log    1010101010101010
    Click Button    id:MessageConfirm
    Log Structure
    log    100100100100100
    Click Button    id:MessageConfirm
    Log Structure
    log    1000100010001000
    Click Button    id:MessageConfirm
    Log Structure
    log    1212121212121212
    Click Button    id:btnCancel
    Log Structure
    log    1313131313131313
    Close Application

startconfigtools12-other-data-synchronization-cq
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:DataSyncForm
    Log Structure
    log    10101010101010100
    Click Item    id:cboSourceType
    Log Structure
    log    1212121212112121212
    Click Item    id:cboSourceType
    Press Special Key    DOWN
    Log Structure
    sleep    3
    Press Special Key    DOWN
    Log Structure
    log    orgDB-sqlite
    click button    id:btnBrowsertar
    Log Structure
    click button    id:1
    Log Structure
    log    orgPath-Desktop
    click button    id:btnSave
    Log Structure
    log    1010101010101010
    click button    id:MessageConfirm
    Log Structure
    click button    id:MessageConfirm
    Log Structure
    log    141414141414141414
    click button    id:btnCancel
    Close Application

startconfigtools12-other-data-Maintian-cq
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
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
    Attach Window    id:Config_Tool
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
    Attach Window    id:DataManage_Form
    sleep    2
    click button    id:btnService
    sleep    12
    Log Structure
    Click Item    id:tbListname
    sleep    3
    Log Structure
    click button    id:btnClear
    Log Structure
    log    99999999999999999
    click button    id:MessageCancel
    Log Structure
    click button    id:btnService
    sleep    3
    click button    id:btnClear
    Log Structure
    log    101010101010101010
    sleep    12
    Log Structure
    log    12121212121212121212
    click button    id:btnConfirm
    log    1313131313131313131313
    Close Application

Startconfigtools14-Already Running-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    log    111111111111111111111
    Log Structure
    log    2222222222222222
    Attach Window    id:Login
    ${b}    Get Application Windows
    log    ${b}
    Log Structure
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:BoxWindow
    log    33333333
    Log Structure
    log    4444444
    Click Button    id:MessageConfirm
    log    122111
    Attach Window    ${b}[0]
    log    1333133
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:Config_Cancel
    Click Button    MessageConfirm

Stratappconfigtools15-Inconsistent password entered.-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    log    1111111
    Log Structure
    Attach Window    id:Login
    ${b}    Get desktop Windows
    log    ${b}
    log    2222222
    Log Structure
    log    1111111
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    333333
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    id:Config_Tool
    log    4444444
    ${c}    Get desktop Windows
    log    ${c}
    Click Item    id:ConfigSetTab
    Log Structure
    log    555555
    Click Item    id:Config_User
    Log Structure
    log    66666666
    Click Button    id:Other_ChangePWD
    Attach Window    id:PassForm
    Log Structure
    log    1212121212
    Input Text To Textbox    id:txtOriPwd    Password_002
    Log Structure
    log    1313131313
    Input Text To Textbox    id:txtSetPwd    Password_001
    Log Structure
    log    14141414
    Input Text To Textbox    id:txtResetPwd    Password_002
    Log Structure
    log    15151515
    Click Button    id:btnSave
    Log Structure
    log    16161616
    Click Button    id:MessageConfirm
    Close Application

Startconfigtools16-origpasswordlogin-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    log    11111
    Log Structure
    Attach Window    id:Login
    ${b}    Get desktop Windows
    log    ${b}
    log    2222222
    Log Structure
    log    333333
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    log    444444
    ${c}    Get desktop Windows
    log    ${c}
    Attach Window    id:Config_Tool
    log    555555
    ${c}    Get desktop Windows
    log    ${c}
    Click Item    id:ConfigSetTab
    Log Structure
    log    66666
    Click Item    id:Config_User
    Log Structure
    log    777777
    Click Button    id:Other_ChangePWD
    Attach Window    id:PassForm
    Log Structure
    log    12121211
    Input Text To Textbox    id:txtOriPwd    Password_002
    Log Structure
    log    1313131
    Input Text To Textbox    id:txtSetPwd    Password_002
    Log Structure
    log    141414174
    Input Text To Textbox    id:txtResetPwd    Password_002
    Log Structure
    log    1515151
    Click Button    id:btnSave
    Log Structure
    log    16161616
    Click Button    id:MessageConfirm
    Close Application

Strartconfigs17-initial password-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Log Structure
    log    111111
    Click Item    id:ConfigSetTab
    Log Structure
    log    2222222
    Click Item    id:Config_User
    Log Structure
    log    333333
    Click Button    id:Other_ChangePWD
    Attach Window    id:PassForm
    Log Structure
    log    44444444
    Input Text To Textbox    id:txtOriPwd    Password_002
    Log Structure
    log    12121211
    Press Special Key    TAB
    sleep    3
    Log Structure
    Input Text To Textbox    id:txtSetPwd    Password_001
    Log Structure
    log    131313113
    Input Text To Textbox    id:txtResetPwd    Password_001
    Log Structure
    log    1411414144
    Click Button    id:btnSave
    Log Structure
    log    151515154
    Click Button    id:MessageConfirm
    Close Application

Startconfigtools18-Restart interval-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Button    id:Config_RestartGW
    Log Structure
    log    111111111
    sleep    3
    log    22222222
    Click Button    id:MessageConfirm
    Sleep    3
    Click Button    id:Config_RestartGW
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigtools19-device empty-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    sleep    20
    Attach Window    id:Config_Tool
    Click Item    id:DevTab
    Click Button    id:btnConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigs20-Resend/Maximum Retries-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Log Structure
    Click Item    id:Config_Network
    Log Structure
    Close Application

Startconfigtools21-connection failed/normal-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Log Structure
    Attach Window    id:Config_Tool
    log    1111111
    Click Item    id:ConfigSetTab
    log    2222222
    Click Item    id:Config_Other
    Log Structure
    Click Item    id:btnSet
    Log Structure
    log    232323232
    Attach Window    id:DataSyncForm
    log    33333333
    Click Item    id:cboSourceType
    log    444444
    Click Item    id:cboSourceType
    sleep    3
    Press Special Key    DOWN
    sleep    3
    Click Button    id:btnSourceTest
    Log Structure
    Click Button    id:MessageConfirm
    log    5555555
    Click Item    id:cboSourceType
    Click Item    id:cboSourceType
    sleep    3
    Press Special Key    DOWN
    sleep    3
    Click Button    id:btnSourceTest
    Log Structure
    Click Button    id:MessageConfirm
    Click Item    id:cboSourceType
    Click Item    id:cboSourceType
    Press Special Key    UP
    Press Special Key    UP
    Click Button    id:btnCancel
    Close Application

Startconfigtools22-Access type-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Log Structure
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Log Structure
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Toggle Check Box    id:DeviceSwitch
    Log Structure
    log    1111111
    Click Button    id:SaveBtn
    Log Structure
    log    2222222
    Click Button    id:MessageConfirm
    Log Structure
    log    33333333
    Click Button    id:MessageConfirm
    Log Structure
    log    44444444
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Toggle Check Box    id:DeviceSwitch
    log    55555555
    Click Button    id:SaveBtn
    Log Structure
    Click Button    id:MessageConfirm
    Close Application

startconfigtools23-Config Error-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:txtIpChannel1    0
    Press Special Key    BACKSPACE
    sleep    3
    Press Special Key    TAB
    sleep    3
    Log Structure
    Press Special Key    TAB
    sleep    3
    Log Structure
    Press Special Key    TAB
    sleep    3
    Log Structure
    Press Special Key    TAB
    sleep    3
    Log Structure
    log    11111111
    Click Button    id:SaveBtn
    Log Structure
    log    2222222
    Click Button    id:MessageConfirm
    Log Structure
    log    333333
    Click Button    id:MessageConfirm
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:txtIpChannel1    127.0.0.1
    log    444444
    Click Button    id:SaveBtn
    log    55555
    sleep    3
    Click Button    id:MessageConfirm
    log    66666
    Close Application

startconfigtools24-address exists-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:EMRIP    127.0.0.1
    Log Structure
    log    1111111
    Click Button    id:btAdd
    Log Structure
    log    22222222
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    log    44444
    Close Application

startconfigtools26-portoccupied-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:TBQueryMonitor    5432
    Click Button    id:SaveBtn
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Input Text To Textbox    id:TBQueryMonitor    9200
    Click Button    id:SaveBtn
    Click Button    id:MessageConfirm
    Click Button    id:MessageConfirm
    Close Application

startconfigs27-certificate-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Log Structure
    Click Button    id:SaveBtn
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:btnDelete
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    sleep    3
    Click Button    id:SaveBtn
    Log Structure
    Click Button    id:MessageConfirm
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:btnRevert
    Close Application

startconfigtools28-revertingfailed-ah
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_User
    Move Directory    C:/Program Files (x86)/Gateway/Backups    C:/Users/Administrator/Desktop
    Click Button    id:btnRevert
    sleep    3
    Log Structure
    Click Button    id:MessageConfirm
    Log Structure
    Click Button    id:MessageConfirm
    Move Directory    C:/Users/Administrator/Desktop/Backups    C:/Program Files (x86)/Gateway
    Click Button    id:btnRevert
    sleep    3
    Click Button    id:MessageConfirm
    Close Application

startconfigs29-limitrange
    Launch Application    C:/Program Files (x86)/Gateway/Gateway.ConfigManage.exe
    Attach Window    id:Login
    Input Text To Textbox    id:txtPassword    Password_002
    Click Button    id:User_Login
    Attach Window    id:Config_Tool
    Click Item    id:ConfigSetTab
    Click Item    id:Config_Network
    Input Text To Textbox    id:MyComboBox    3
    Press Special Key    TAB
    sleep    3
    Log Structure
    Input Text To Textbox    id:MyComboBox    10
    Click Button    id:SaveBtn
    Click Button    id:MessageConfirm
    Click Button    id:MessageConfirm
    Close Application
