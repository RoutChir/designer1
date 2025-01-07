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
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE_1
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
        x: 160
        'y': 120
        navigate:
          c77fc23a-55f2-c8c4-540d-e21b31f79053:
            targetId: 11e9749e-0734-aa12-62f8-3d3320fbb109
            port: FAILURE
          2a2f0d83-a8bd-bf2b-4e98-64eb0679939c:
            targetId: f459598c-3241-ae12-ef98-792c5144bca8
            port: SUCCESS
    results:
      SUCCESS:
        f459598c-3241-ae12-ef98-792c5144bca8:
          x: 1040
          'y': 240
      FAILURE_1:
        11e9749e-0734-aa12-62f8-3d3320fbb109:
          x: 720
          'y': 640
