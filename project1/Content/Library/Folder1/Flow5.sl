namespace: Folder1
flow:
  name: flow5
  workflow:
    - Flow1:
        do:
          Folder1.Flow1: []
        navigate:
          - SUCCESS: SUCCESS_1
          - FAILURE_1: FAILURE
  results:
    - FAILURE
    - SUCCESS
    - SUCCESS_1
extensions:
  graph:
    steps:
      Flow1:
        x: 280
        'y': 120
        navigate:
          c9d676f8-0145-bcbe-5fb4-08e1ffe41047:
            targetId: c90f501b-be70-e29c-dc2e-8fee82e5758d
            port: FAILURE_1
          55b4eec2-bf54-71ef-6f4b-c3411daad9c5:
            targetId: f3641faa-82cf-4e1a-c66f-11ac6348153b
            port: SUCCESS
    results:
      FAILURE:
        c90f501b-be70-e29c-dc2e-8fee82e5758d:
          x: 440
          'y': 280
      SUCCESS:
        8c34eb37-631e-6e44-e10b-e4bad371fd13:
          x: 1520
          'y': 280
      SUCCESS_1:
        f3641faa-82cf-4e1a-c66f-11ac6348153b:
          x: 640
          'y': 120
