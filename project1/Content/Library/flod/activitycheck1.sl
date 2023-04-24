namespace: flod
operation:
  name: activitycheck1
  sequential_action:
    gav: com.microfocus.seq:flod.activitycheck1:1.0.0
    external: true
    skills:
    - Java
    - SAP NWBC Desktop
    - SAP
    - SAPUI5
    - SAPWebExt
    - Terminal Emulators
    - UI Automation
    - Web
    - WPF
    settings:
      sap:
        active: false
        auto_log_on: false
        client: ''
        close_on_exit: false
        ignore_existing_sessions: false
        language: ''
        password: ''
        remember_password: false
        server: ''
        user: ''
      windows:
        active: false
      terminal_settings:
        active: false
        current_emulator: Rumba 7.5
      web:
        active: false
        address: ''
        browser: IE64
        close_on_exit: false
  outputs:
  - Param1:
      robot: true
      value: ${Param1}
  - Param2:
      robot: true
      value: ${Param2}
  - Param3:
      robot: true
      value: ${Param3}
  - Param4:
      robot: true
      value: ${Param4}
  - Param5:
      robot: true
      value: ${Param5}
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
