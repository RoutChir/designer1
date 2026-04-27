########################################################################################################################
#!!
#! @input flow_input_0: hi iits just check
#! @input flow_input_1: not bad
#! @input flow_input_2: checking
#!
#! @output flow_output_0: get out
#! @output flow_output_1: value
#!!#
########################################################################################################################
namespace: Folder1
flow:
  name: Flow1
  inputs:
    - flow_input_0: hello
    - flow_input_1: good mrng
    - flow_input_2: check1
  workflow:
    - python_script:
        do:
          io.cloudslang.base.python.python_script:
            - input_0: hello
        navigate:
          - SUCCESS: Flow2
          - FAILURE: FAILURE_1
    - Flow2:
        do:
          Folder1.Flow2: []
        navigate:
          - FAILURE: FAILURE_1
          - SUCCESS: SUCCESS
  outputs:
    - flow_output_0: out
    - flow_output_1:
        value: checking
        sensitive: true
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      python_script:
        x: 240
        'y': 40
        navigate:
          c77fc23a-55f2-c8c4-540d-e21b31f79053:
            targetId: 11e9749e-0734-aa12-62f8-3d3320fbb109
            port: FAILURE
      Flow2:
        x: 480
        'y': 160
        navigate:
          54f2cfb7-4a06-e0fe-cb5e-0fd27d8c5b80:
            targetId: 11e9749e-0734-aa12-62f8-3d3320fbb109
            port: FAILURE
          2efa928b-a089-c158-566a-4983ea431829:
            targetId: f459598c-3241-ae12-ef98-792c5144bca8
            port: SUCCESS
    results:
      SUCCESS:
        f459598c-3241-ae12-ef98-792c5144bca8:
          x: 880
          'y': 120
      FAILURE_1:
        11e9749e-0734-aa12-62f8-3d3320fbb109:
          x: 200
          'y': 240
