namespace: testFlows
operation:
  name: myEmptyFlow
  sequential_action:
    gav: 'com.microfocus.seq:testFlows.notepadAct:1.0.0'
    skills:
      - Java
      - SAP
      - SAP NWBC Desktop
      - SAPUI5
      - SAPWDJ
      - SAPWebExt
      - Terminal Emulators
      - UI Automation
      - Web
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: true
        apps:
          app_1:
            args: ''
            directory: ''
            include_child_processes: true
            launch_application: true
            path: "C:\\Program Files\\Notepad++\\notepad++.exe"
      terminal_settings:
        active: false
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Window("Notepad++ [Administrator]").WinToolbar("ToolbarWindow32")'
          action: Press
          default_args: '5'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '789428'
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification: ''
        name: 'Notepad++ [Administrator]'
        child_objects:
          - object:
              smart_identification: ''
              name: ToolbarWindow32
              child_objects: []
              properties:
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: ToolbarWindow32
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ToolbarWindow32
                  name: simclass
                  type: STRING
              class: WinToolbar
              visual_relations: ''
              last_update_time: 'Wednesday, February 9, 2022 1:10:39 PM'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier:
                  value: 1
                  type: location
        properties:
          - property:
              value:
                value: 'Notepad++ [Administrator]'
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: Notepad++
                regular_expression: false
              name: regexpwndclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
        comments: ''
        custom_replay:
          behavior:
            value: Notepad++
            name: simclass
            type: STRING
        class: Window
        visual_relations: ''
        last_update_time: 'Wednesday, February 9, 2022 1:10:39 PM'
        basic_identification:
          property_ref:
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
