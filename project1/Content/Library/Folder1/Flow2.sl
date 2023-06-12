########################################################################################################################
#!!
#! @input flow_input_0: hi iits just check
#! @input flow_input_1: not bad
#!!#
########################################################################################################################
namespace: Folder1
flow:
  name: Flow2
  inputs:
    - flow_input_0: hello
    - flow_input_1: good mrng
  workflow:
    - Flow1:
        do:
          Folder1.Flow1:
            - flow_input_1: '${flow_input_1}'
            - input_0: null
        publish: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE_1: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Flow1:
        x: 720
        'y': 280
        navigate:
          6d464db0-04db-e87d-4aa0-1164ff79dbf2:
            targetId: bccca0b3-fbd8-b3b5-fe4a-7fedcbd4918d
            port: FAILURE_1
          0fc9515c-4a6d-8447-05b5-c4e3fc8da94a:
            targetId: 8f5668ba-068c-1a85-9fce-c8743cb0aa56
            port: SUCCESS
    results:
      FAILURE:
        bccca0b3-fbd8-b3b5-fe4a-7fedcbd4918d:
          x: 280
          'y': 280
      SUCCESS:
        8f5668ba-068c-1a85-9fce-c8743cb0aa56:
          x: 1080
          'y': 280
