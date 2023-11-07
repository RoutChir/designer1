namespace: Floder1
flow:
  name: Flow1
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
        x: 280
        'y': 200
        navigate:
          13ef2787-edd2-71b7-0483-7531beb38b83:
            targetId: 2214a636-d8d0-cf1e-847a-e0a13f7ca89c
            port: failure
          822f4d76-9f99-6bbc-c93a-8b235c08b37d:
            targetId: 4fcd3238-f2b3-465f-43b4-7182ca5c11dd
            port: success
    results:
      SUCCESS:
        4fcd3238-f2b3-465f-43b4-7182ca5c11dd:
          x: 640
          'y': 200
      FAILURE_1:
        2214a636-d8d0-cf1e-847a-e0a13f7ca89c:
          x: 40
          'y': 240
