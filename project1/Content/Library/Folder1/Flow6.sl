namespace: Folder1
flow:
  name: Flow6
  workflow:
    - Flow1:
        do:
          Folder1.Flow1: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE_1: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Flow1:
        x: 700
        'y': 200
        navigate:
          91a85c57-99af-f45b-3b80-3d78429ffdfb:
            targetId: aa49c17f-7241-9c2b-8729-8f3bc166cc36
            port: FAILURE_1
          45d48d99-630a-ef4e-a7be-60983834b828:
            targetId: 00c44a9f-eb33-f402-755c-07197bace8a7
            port: SUCCESS
    results:
      SUCCESS:
        00c44a9f-eb33-f402-755c-07197bace8a7:
          x: 600
          'y': 160
      FAILURE:
        aa49c17f-7241-9c2b-8729-8f3bc166cc36:
          x: 200
          'y': 200
