namespace: Folder1
flow:
  name: sysProp
  workflow:
    - Random_Number_Generator:
        do_external:
          2c22355a-9c26-4a9e-893c-01a35e4bb0e3:
            - max: '100'
            - min: '0'
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Random_Number_Generator:
        x: 480
        'y': 200
        navigate:
          d9ecdaab-1243-75b3-9bb3-8e1e7707a737:
            targetId: a851173a-aa45-e666-4e24-9aab63e6178c
            port: success
          a0f07d8e-493d-214b-0b0f-fd30baf8db01:
            targetId: 4198b197-5a0d-4536-80bd-bc6cbdabac65
            port: failure
    results:
      FAILURE:
        4198b197-5a0d-4536-80bd-bc6cbdabac65:
          x: 600
          'y': 80
      SUCCESS:
        a851173a-aa45-e666-4e24-9aab63e6178c:
          x: 320
          'y': 200
