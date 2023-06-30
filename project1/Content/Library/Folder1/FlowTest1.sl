########################################################################################################################
#!!
#! @input hello: testing
#!
#! @output flow_output_0: testing
#!!#
########################################################################################################################
namespace: Folder1
flow:
  name: FlowTest1
  inputs:
    - hello
  workflow:
    - Random_Number_Generator:
        do_external:
          2c22355a-9c26-4a9e-893c-01a35e4bb0e3:
            - max: '400'
            - min: '300'
            - input_0: hello
        navigate:
          - success: SUCCESS
          - failure: FAILURE_1
  outputs:
    - flow_output_0: good bye
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      Random_Number_Generator:
        x: 480
        'y': 280
        navigate:
          1da750c0-81db-c489-8ddd-fd11b1901035:
            targetId: 25905eb9-088b-e97c-9769-d0b387d1343a
            port: failure
          67386fa9-5ee9-e7e5-bfed-00bf6b34afda:
            targetId: 45cb4d75-6e65-f03c-e38f-33d1964de86d
            port: success
    results:
      SUCCESS:
        45cb4d75-6e65-f03c-e38f-33d1964de86d:
          x: 840
          'y': 280
      FAILURE_1:
        25905eb9-088b-e97c-9769-d0b387d1343a:
          x: 40
          'y': 280
