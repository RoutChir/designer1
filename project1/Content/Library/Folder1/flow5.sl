########################################################################################################################
#!!
#! @input hello: testing
#!!#
########################################################################################################################
namespace: Folder1
flow:
  name: flow5
  inputs:
    - hello: test
  workflow:
    - flow3:
        do:
          Folder1.flow5:
            - hello: '${hello}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      flow3:
        x: 600
        'y': 280
        navigate:
          2bca7229-79cc-97cd-4a0f-f3a6d111ed0a:
            targetId: 4723f860-aacc-929d-03d4-eafe962d4a73
            port: SUCCESS
          10de534d-cdcb-44b4-95d7-b3adef1caa13:
            targetId: 0594d39d-bbcb-92a7-2902-ec2dfc344a08
            port: FAILURE
    results:
      SUCCESS:
        4723f860-aacc-929d-03d4-eafe962d4a73:
          x: 1160
          'y': 240
      FAILURE:
        0594d39d-bbcb-92a7-2902-ec2dfc344a08:
          x: 960
          'y': 400
