########################################################################################################################
#!!
#! @input hello: testing
#!!#
########################################################################################################################
namespace: Folder1
flow:
  name: Flow4
  inputs:
    - hello: test
  workflow:
    - flow3:
        do:
          Folder1.flow3:
            - hello: '${hello}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE_1: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      flow3:
        x: 800
        'y': 280
        navigate:
          f167b664-eb24-8db6-564a-6a72b18304b1:
            targetId: 0594d39d-bbcb-92a7-2902-ec2dfc344a08
            port: FAILURE_1
          11d0fb93-7c63-ca19-e51b-9b9be35e60ac:
            targetId: 4723f860-aacc-929d-03d4-eafe962d4a73
            port: SUCCESS
    results:
      SUCCESS:
        4723f860-aacc-929d-03d4-eafe962d4a73:
          x: 1160
          'y': 240
      FAILURE:
        0594d39d-bbcb-92a7-2902-ec2dfc344a08:
          x: 360
          'y': 280
