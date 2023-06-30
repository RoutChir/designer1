namespace: Folder1
flow:
  name: Flow5
  workflow:
    - Flow1:
        do:
          Folder1.Flow1: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE_1: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Flow1:
        x: 640
        'y': 320
        navigate:
          c9d676f8-0145-bcbe-5fb4-08e1ffe41047:
            targetId: c90f501b-be70-e29c-dc2e-8fee82e5758d
            port: FAILURE_1
          af89288b-115b-7828-9357-f55a5023cd86:
            targetId: 8c34eb37-631e-6e44-e10b-e4bad371fd13
            port: SUCCESS
    results:
      FAILURE:
        c90f501b-be70-e29c-dc2e-8fee82e5758d:
          x: 880
          'y': 240
      SUCCESS:
        8c34eb37-631e-6e44-e10b-e4bad371fd13:
          x: 1520
          'y': 280
