namespace: Floder1
flow:
  name: Flow2
  workflow:
    - Random_Number_Generator:
        do_external:
          2c22355a-9c26-4a9e-893c-01a35e4bb0e3:
            - max: '100'
            - min: '0'
        navigate:
          - success: SUCCESS
          - failure: FAILURE_1
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      Random_Number_Generator:
        x: 400
        'y': 160
        navigate:
          d22255e0-2727-fd50-1831-fa2888895407:
            targetId: 3332c5b4-0f10-55e2-4f43-3f314c92ba52
            port: success
          84c27eec-f6e2-937f-f084-b38f7e382c38:
            targetId: 85141768-c164-39f2-bc07-d0d7bde88cd5
            port: failure
    results:
      SUCCESS:
        3332c5b4-0f10-55e2-4f43-3f314c92ba52:
          x: 680
          'y': 200
      FAILURE_1:
        85141768-c164-39f2-bc07-d0d7bde88cd5:
          x: 280
          'y': 240
